module Eval where
import ParserGrammar
import System.IO
import Control.Monad


data Frame = HBody Expr | BodyH Expr Environment
           | HPrint Expr | PrintH Expr Environment
           | HLet String DataType Expr 
           | HAddL Expr | AddLH Expr Environment
           | HLength Expr | LengthH Expr Environment
           | HAdd Expr | AddH Expr Environment
           | HMult Expr | MultH Expr Environment
           | HSub Expr | SubH Expr Environment
           | HDiv Expr | DivH Expr Environment
           | HLt Expr | LtH Expr Environment
           | HGt Expr | GtH Expr Environment
           | HIf Expr Expr Environment
           | HApp Expr | AppH Expr Environment
           | HPush Expr Expr Environment
           | HDuplicate Expr | DuplicateH Expr Environment
           | HSplitAt Expr
           | HLine Expr | LineH Expr Environment
           | HLast Expr
           | HMap Expr | MapH Expr
           | HReverse Expr | ReverseH Expr
           | HListArith Expr | ListArithH Expr
           | HTake  Expr | TakeH  Expr
           | HSum Expr | SumH Expr
           | HTakeRepeat Expr
           | HSumLists Expr | SumListsH Expr
           | HFibSequence Expr | FibSequenceH Expr
           | HZipLines Expr Expr | ZipLinesH Expr
           | HReverseLists Expr | ReverseListsH Expr
           deriving (Show, Eq)

type Kontinuation = [ Frame ]

type State = (Expr, Environment, Kontinuation)

-- Function to {-# UNPACK #-}  a closure to extract the underlying term and Environment
unpack :: Expr -> (Expr, Environment)
unpack (Cl x t e env) = ((TmLambda x t e), env)
unpack e = (e, [])

-- look up a value in an environment and unpack it
getValueBinding :: String -> Environment -> (Expr, Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y, e):env) | x == y   = unpack e
                               | otherwise = getValueBinding x env



update :: Environment -> String -> Expr -> Environment
update env x e = (x, e) : env

-- Checks for terminated expresisons
isValue :: Expr -> Bool
isValue (TmInts _ _) = True
isValue (TmInt _) = True
isValue TmTrue = True
isValue TmFalse = True
isValue (TmLine _ _) = True
isValue (Cl _ _ _ _) = True
isValue (TmGetStream) =  True
isValue _ = False

isValueExtra :: (Expr, Environment, Kontinuation) -> Bool
isValueExtra (TmInt _,  _,  _) = True
isValueExtra ( _, _, _) = False





-- evaluation rules
eval :: State -> State
eval ((TmVar x), env, k) = (e', env', k)
                  where (e', env') = getValueBinding x env
eval (v, env, []) | isValue v   = (v, env, [])

-- Evaluation rules for body
eval (TmBody e, env, k) = eval (e, env, k)

-- Evaluation rules for negate operator
eval (Negate (TmInt (n)), env, k) = (TmInt (-n), [], k) 

-- Evaluation rules for plus operator

eval ((TmAdd e1 e2), env, k) = (e1, env, (AddH e2 env):k)
eval ((TmInt n), env1, (AddH e env2):k) = (e, env2, (HAdd (TmInt n)):k )
eval ((TmInt m), env, (HAdd (TmInt n)) : k) = (TmInt (n + m), [], k)

-- Evaluation rules for subtract operator

eval ((TmSub e1 e2), env, k) = (e1, env, (SubH e2 env):k)
eval ((TmInt n), env1, (SubH e env2):k) = (e, env2, (HSub (TmInt n)):k )
eval ((TmInt m), env, (HSub (TmInt n)) : k) = (TmInt (n - m), [], k)

-- Evaluation rules for multiply operator

eval ((TmMult e1 e2), env, k) = (e1, env, (MultH e2 env):k)
eval ((TmInt n), env1, (MultH e env2):k) = (e, env2, (HMult (TmInt n)):k )
eval ((TmInt m), env, (HMult (TmInt n)) : k) = (TmInt (n * m), [], k)

-- Evaluation rules for divide operator

eval ((TmDiv e1 e2), env, k) = (e1, env, (DivH e2 env):k)
eval ((TmInt n), env1, (DivH e env2):k) = (e, env2, (HDiv (TmInt n)):k )
eval ((TmInt m), env, (HDiv (TmInt n)) : k) = (TmInt (n `div` m), [], k)


-- Evaluation rules for less than oeprator

eval ((TmLt e1 e2),env,k) = (e1,env,(LtH e2 env):k)
eval ((TmInt n),env1,(LtH e env2):k) = (e,env2,(HLt (TmInt n)) : k)
eval ((TmInt m),env,(HLt (TmInt n)):k) | n < m = (TmTrue,[],k)
                                             | otherwise = (TmFalse,[],k)

-- Evaluation rules for less than oeprator
eval ((TmGt e1 e2),env,k) = (e1,env,(GtH e2 env):k)
eval ((TmInt n),env1,(GtH e env2):k) = (e,env2,(HGt (TmInt n)) : k)
eval ((TmInt m),env,(HGt (TmInt n)):k) | n > m = (TmTrue,[],k)
                                            | otherwise = (TmFalse,[],k)

-- Evaluation rules for if then else
eval ((TmIf e1 e2 e3), env, k) = (e1, env, (HIf e2 e3 env):k)
eval (TmTrue, env1, (HIf e2 e3 env2):k) = (e2, env2, k)
eval (TmFalse, env1, (HIf e2 e3 env2):k) = (e3, env2, k)


-- Evaluation rules for push
eval ((TmPush element index e3), env, k) = ((TmInt index), env, (HPush (TmInt element) e3 env) :k)
eval ((TmInt n), env1, (HPush (TmInt m) e3 env2):k) = ((TmInts (m) e3), env2, k)



-- Evaluation rules for Let blocks
eval ((TmLet x typ e1 e2),env,k) = (e1,env,(HLet x typ e2):k)
eval (v,env,(HLet x typ e):k) | isValue v = (e, update env x v , k)



-- closure property for lambda
eval((TmLambda x typ e), env, k) = ((Cl x typ e env), [], k)


-- Evaluation rules for application
eval((TmApp e1 e2), env, k) = (e1, env, (AppH e2 env):k)
eval(v, env1, (AppH e env2):k) | isValue v = (e, env2, (HApp v):k)
eval(v, env1, (HApp (Cl x typ e env2)):k) = (e, update env2 x v, k)


-- Evaluation rules for duplicate

eval (TmDuplicate (TmInts n e), env, k)= (duplicateList (TmInts n e) (TmInts n e), env, k )
eval (TmDuplicate (TmInt n), env, k) = (TmInts (n) (TmInt n), env, k)
eval ((TmDuplicate (e),env,k)) = (TmDuplicate((evalLoop e)),env,k)

-- Evaluation rules for length
eval(TmLength (TmInt n), env, (HLength (TmInt m)):k) = (TmInt (1), env, k)
eval(TmLength (TmInts (n) e), env ,k) = (TmInt (findLength (TmInts n e)), env, k)
eval ((TmLength (TmInt n)),env,k) = ((TmInt 1), env, k)
eval ((TmLength(e),env,k)) = (TmLength((evalLoop e)),env,k)


-- Evaluation rules for splitAt
eval (TmSplitAt (TmInt n) (TmInts m e), env, k) = eval (evalLoop (TmLine (splitBefore (TmInts m e) n) (splitAfter (TmInts m e) n)), env, k)
eval ((TmSplitAt n (e),env,k)) = eval (TmSplitAt (evalLoop (n)) (evalLoop (e)), env, k)

-- Evaluation rules for head
eval (TmHead (TmInts (n) e), env, k) = (TmInt n, env, k)

-- Evaluation rules for last
eval (TmLast (TmInts (n) e), env, (HLast (TmInt m): k)) = (TmLast(e), env, (HLast (TmInt n)):k)
eval (TmLast (TmInt (n)), env, (HLast (TmInt m): k)) = (TmInt n, env, k)
eval (TmLast (TmInts (n) e), env, k) = (TmLast(e), env, (HLast (TmInt n)):k)
eval (TmLast (TmInt n), env, k) = (TmInt n, env, k)

-- Evaluation rules for take

eval (TmTake (TmInt 1) (TmInt n), env, (HTake e):k) = (TmTake (TmInt (0)) (TmInt 0), ("Value", (TmInt n)) : env, (TakeH e): k)

eval (TmTake (TmInt n1) (TmInts n e), env, (HTake e1):k)
                                            | n1 == 1    = (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env, TakeH (TmInts n e): k)
                                            | n1 > 1     =  (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env, HTake (TmInts n e): k)  



eval (TmTake (TmInt 0) e2 , env, (TakeH e1):k) =((getValueFromEnvironment(env)), [], [])
                               -- | n1 > 0    = (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env, (HTake e): k)
                               -- | n1 == 0    = (TmTake (TmInt (0)) e,  env, (TakeH e): k)

  
eval (TmTake e1 e2, env, k) 
                            | (isValue e1) == False && (isValue e2) == False  = (TmTake (evalLoop e1) (evalLoop e2), env, k)
                            | (isValue e1) == False    =(TmTake (evalLoop e1) e2, env, k)
                            | (isValue e2) == False    =(TmTake e1 (evalLoop e2), env, k)
                            | otherwise                = ((TmTake e1 e2),  env, (HTake e2): k)


eval (TmTake (TmInt 1) (TmInts n e) , [], []) =(TmInt (n), [], [])
eval (TmTake (TmInt 1) (TmInt n) , [], []) =(TmInt (n), [], [])





--eval (TmTake (TmInt 0) (TmInt n) , env, k) = error "wrong arguments"



-- evaluation rules for repeat
eval (TmTakeRepeat (TmInt n) e1, env, (HTakeRepeat (TmInt n1):k))
                                              | n1 <= n      = (TmTakeRepeat (TmInt n) e1, ("Value", evalLoop (TmTake (TmInt n1) e1)):env, (HTakeRepeat (TmInt (n1 + 1)): k))
                                              | otherwise    = ((getValueFromEnvironment env), env , [])

eval (TmTakeRepeat (TmInt n) e1, env, k) = (TmTakeRepeat (TmInt n) e1, env, (HTakeRepeat (TmInt 1):k))



eval (TmTakeRepeat e1 e2, env, k) 
                            | (isValue e1) == False && (isValue e2) == False  = (TmTakeRepeat (evalLoop e1) (evalLoop e2), env, k)
                            | (isValue e1) == False    =(TmTakeRepeat (evalLoop e1) e2, env, k)
                            | (isValue e2) == False    =(TmTakeRepeat e1 (evalLoop e2), env, k)
                            | otherwise                = ((TmTakeRepeat e1 e2),  env, (HTakeRepeat e2): k)

--TmSumLists (TmTakeRepeat (TmLength (TmInts 1 (TmInts 2 (TmInts 3 (TmInt 4))))) (TmInts 1 (TmInts 2 (TmInts 3 (TmInt 4)))))

-- Evaluation rules for map
eval (TmMap (TmLambda x typ e1) (TmInts n1 e), env, (HMap (TmInts n2 e2):k)) = (TmMap (TmLambda x typ e1) e, env ++ [("Value", (evalLoop (TmApp (TmLambda x typ e1) (TmInt n1))))] , (HMap e):k)
eval (TmMap (TmLambda x typ e1) (TmInt n1), env, (HMap (TmInt n2):k)) = (TmMap (TmInt n1) (TmInt n1), env ++ [("Value", (evalLoop (TmApp (TmLambda x typ e1) (TmInt n1))))], (MapH e1) : k)
eval (TmMap (TmInt n) (TmInt n1), env, (MapH e1) : k) = (getValueFromEnvironment env, env, [])
eval (TmMap (TmLambda x typ e1) expr, env, k) = (TmMap (TmLambda x typ e1) expr, env, (HMap expr):k )

-- eval (TmMap TmSum (TmLine e1 e2), env, k) = (TmMap e1 e2, (evalLoop (e1)))

-- map (( \(x : Int) x * 3)) 1,2
-- ( \ (x : Int) (if (( \(x : Int) true ) 4 ) then x else x + 1)) 7

-- Evaluation rules for reverse
-- TmLine (TmInts 5 (TmInts 4 (TmInts 3 (TmInts 2 (TmInt 1))))) (TmLine (TmInts 4 (TmInts 3 (TmInts 2 (TmInt 1)))) (TmLine (TmInts 3 (TmInts 2 (TmInt 1))) (TmLine (TmInts 2 (TmInt 1)) (TmInt 1))))

eval (TmReverseLists (TmLine (TmInts n e) e1), env, k) = (TmReverseLists e1, env ++ [("Value", evalLoop (TmReverse (TmInts n e)))], (HReverseLists e1):k )
eval (TmReverseLists (TmInts n e), env, (HReverseLists e1):k) = (TmReverseLists (TmInt 0), env ++ [("Value", evalLoop (TmReverse (TmInts n e)))], (ReverseListsH (TmInt 0)):k)
eval (TmReverseLists (TmInt n), env, (HReverseLists e1):k) = (TmReverseLists (TmInt 0), env ++ [("Value", TmInt n)], (ReverseListsH (TmInt 0)):k)
eval (TmReverseLists (TmInt 0), env, (ReverseListsH e1):k) = ((getValueFromEnvironment (env)), [], [])
eval ((TmReverseLists(e),env,k)) = (TmReverseLists((evalLoop e)),env,k)


eval (TmReverse (TmInts n e), env, (HReverse (TmInt n1)):k) = (TmReverse (e), ("Value", (TmInt n )): env, HReverse (TmInt n):k)

eval (TmReverse (TmInt n) , env, (HReverse (TmInt n1)):k) = (TmReverse (TmInt n), ("Value", (TmInt n)) : env, ReverseH (TmInt n):k)

eval (TmReverse (TmInt n ), env , (ReverseH (TmInt n1)):k) = ((getValueFromEnvironment(env)) , [], [])

eval (TmReverse (TmInts n e), env, k) = (TmReverse (e), ("Value", (TmInt n)) : env,  HReverse (TmInt n): k)

eval ((TmReverse(e),env,k)) = (TmReverse((evalLoop e)),env,k)



-- evaluation rules for lists arithmetic
eval (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env, k) | (isValue e2) == False && (isValue e3) == False  = eval (TmListsArith (TmLambda x typ e1) (TmLine (evalLoop e2) (evalLoop e3)), env, k)
                                                      | (isValue e2) == False    = eval (TmListsArith (TmLambda x typ e1) (TmLine (evalLoop e2) e3), env, k)
                                                      | (isValue e3) == False    = eval (TmListsArith (TmLambda x typ e1) (TmLine (e2) (evalLoop e3)), env, k)

eval (TmListsArith (TmLambda x typ e1) (TmLine (TmInts n1 e2)  (TmInts n2 e3)), env, (HListArith e4):k) = (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), ("Value", evalLoop (TmApp (TmApp (TmLambda x typ e1) (TmInt n1)) (TmInt n2))) : env, (HListArith (TmLine e2 e3)) :k)
eval (TmListsArith (TmLambda x typ e1) (TmLine (TmInt n1)  (TmInt n2)), env, (HListArith e2):k) = (TmListsArith (TmLambda x typ e1) (TmInt 1), ("Value", evalLoop (TmApp (TmApp (TmLambda x typ e1)  (TmInt n1)) (TmInt n2))) :env, (ListArithH e2):k)
eval (TmListsArith (TmLambda x typ e1) e2, env, (ListArithH e3):k) = (getValueFromEnvironment env, env, [])
eval (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env, k) = (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env, (HListArith (TmLine e2 e3) :k))



-- evaluation rules for sum
eval (TmSumLists (TmInt n), env, (HSumLists e2):k) =  (TmSumLists (TmInt n) ,env ++ [("Value", evalLoop (TmSum (TmInt n)))], (SumListsH e2):k)

eval (TmSumLists (TmLine e1 e2), env, k) = (TmSumLists e2,env ++ [("Value", evalLoop (TmSum e1))], (HSumLists e2):k)

eval (TmSumLists (TmInts n e1), env, (HSumLists e2):k) = (TmSumLists (TmInts n e1) ,env ++ [("Value", evalLoop (TmSum (TmInts n e1)))], (SumListsH e2):k)

eval (TmSumLists e, env, (SumListsH e2):k) = ((getValueFromEnvironment env), env, [])

eval (TmSumLists e, env, k) | isValue e == False         = (TmSumLists (evalLoop e), env, k)


eval (TmSum (TmInt n), [], k) = ((TmInt n) , [], [])

eval (TmSum (TmInts n e1), ("Value", TmInt n1):env, (HSum (TmInt n2)):k) = (TmSum (e1), [("Value", (TmInt (n + n1) ))], (HSum (TmInt n)):k)

eval (TmSum (TmInt n), ("Value", TmInt n1):env, (HSum (TmInt n2):k)) = (TmSum (TmInt (n1 + n)), env, (SumH (TmInt n):k))

eval (TmSum (TmInt n), ("Value", (TmInt n1)):env, (SumH e):k) = (TmAdd (TmInt n) (TmInt n1), [], [])

eval (TmSum (TmInts n e1), env, k) = (TmSum (TmInts n e1), ("Value", TmInt 0):env, (HSum (TmInt 0):k))

eval (TmSum e, env, k) | isValue e == False         = eval (TmSum (evalLoop e), env, k)

eval (TmFibSequence (TmInt 2), env, (HFibSequence (TmInt n1)): (HFibSequence (TmInt n2)) : k ) = ((getValueFromEnvironment env), [], [])
eval (TmFibSequence (TmInt n), env, (HFibSequence (TmInt n1)): (HFibSequence (TmInt n2)) : k ) = (TmFibSequence (TmInt (n - 1)), env ++ [("Value", TmInt (n1 + n2))], (HFibSequence  (TmInt (n1 + n2))) : (HFibSequence  (TmInt (n1)) : k ))


-- evaluation rules for Fib Sequence
eval (TmFibSequence (TmInt n) , env, k)
                        | n == 2           = ((TmInts 1 (TmInt 1)), env, k)
                        | n == 1           = (TmInt 1, env, k)
                        | otherwise        = (TmFibSequence (TmInt n), ("Value", TmInt (1)) : ("Value", TmInt (1)) : env, (HFibSequence (TmInt 1)) : (HFibSequence (TmInt 1)) : k)

                             

-- evaluation rules for zip lines

eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmLine (TmInts n1 e2) e3) (TmLine (TmInts n2 e4) e5)), env, (HZipLines e6 e7): k) = (TmZipLines (TmLambda x typ e1) (TmLine e3 e5),  env ++ [("Value", evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInts n1 e2)) (TmInts n2 e4))))] , (HZipLines e3 e5): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmInts n1 e2) (TmInts n2 e3)), env, (HZipLines e4 e5): k) = (TmZipLines (TmLambda x typ e1) (TmLine (TmInts n1 e2) (TmInts n2 e3)),   env ++ [("Value", evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInts n1 e2)) (TmInts n2 e3))))] , (ZipLinesH (TmInt 0)): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmInt n1) (TmInt n2)), env, (HZipLines e4 e5): k) = (TmZipLines (TmLambda x typ e1) (TmLine (TmInt n1) (TmInt n2)),   env ++ [("Value", evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInt n1)) (TmInt n2))))], (ZipLinesH (TmInt 0)): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine e2 e3), env, (ZipLinesH (TmInt 0)): k) = ((getValueFromEnvironment env), [], [])
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmLine (TmInts n1 e2) e3) (TmLine (TmInts n2 e4) e5)), env, k) = (TmZipLines (TmLambda x typ e1) (TmLine e3 e5),  ("Value", evalLoop (TmListsArith (TmLambda x typ e1) (TmLine (TmInts n1 e2) (TmInts n2 e4)))) : env, (HZipLines e3 e5): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine e2 e3) , env, k) = (TmZipLines (TmLambda x typ e1)  (TmLine (evalLoop(e2)) (evalLoop(e3))), env, k)



getValueFromEnvironment :: [ (String, Expr) ] -> Expr
getValueFromEnvironment [] = TmInt 0
getValueFromEnvironment [(str, TmInt n)] = TmInt n
getValueFromEnvironment ((str, TmInt n):xs) = TmInts n (getValueFromEnvironment xs)
getValueFromEnvironment [(str, TmInts n e)] = TmInts n e
getValueFromEnvironment ((str, TmInts n e):xs) = TmLine  (TmInts n e) (getValueFromEnvironment xs )


-- Evaluation rules for lines
splitBefore:: Expr -> Int -> Expr
splitBefore (TmInts n e) c
                    | c /= 1     =  (TmInts n (splitBefore e (c-1)))
                    | otherwise  =  (TmInt n)

splitAfter :: Expr -> Int -> Expr
splitAfter (TmInts n e) c
                    | c /= 1     =  splitAfter e (c-1)
                    | otherwise  =  e


findLength :: Expr -> Int
findLength (TmInt n) = 1
findLength (TmInts (n) e) = 1 + findLength e

duplicateHelper :: Expr -> Expr -> Expr
duplicateHelper (TmInt n) (TmInt m) = (TmInts n (TmInt m))
duplicateHelper (TmInts n e) (TmInt m) = TmInts n (duplicateHelper e (TmInt m))

duplicateList :: Expr -> Expr -> Expr
duplicateList l1@(TmInts n e) l2@(TmInt m) = duplicateHelper l1 l2
duplicateList l1@(TmInts n e) l2@(TmInts m e1) = duplicateList (duplicateHelper l1 (TmInt m)) e1

-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && k' == [] then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval (e,env,k)

                       


generateInts :: Expr -> [Int]
generateInts (TmInt a) = a : []
generateInts (TmInts a b) = a : generateInts b


unparse :: Expr -> String
unparse (TmInt n) = show n
unparse l@(TmInts x y) = show (generateInts l )
-- unparse l@(TmLine x y) = map(generateInts) l
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (TmLine x y) = show (generateInts x) ++ (unparse y)
unparse _ = "Unknown"



parseInput :: IO ()
parseInput = do
              let list = []
              handle <- openFile "input.txt" ReadMode
              contents <- hGetContents handle
              let singlewords = lines contents
              let list = f singlewords
              --eval1 $ command list
              hClose handle

f :: [String] -> [[Int]]
f [] = []
f (x:xs) = (map read $ words x :: [Int]) : f xs
