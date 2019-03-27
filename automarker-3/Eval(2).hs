module Eval where
import ParserGrammar
import System.IO
import Control.Monad


data Frame = HBody Expr | BodyH Expr Environment
           | HPrint Expr | PrintH Expr Environment
           | HLet String Environment
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

type State = (Expr, Environment,[[Int]], Kontinuation)

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
isValue _ = False

isValueExtra :: (Expr, Environment, Kontinuation) -> Bool
isValueExtra (TmInt _,  _,  _) = True
isValueExtra ( _, _, _) = False



-- evaluation rules for plus operator
eval :: State -> State
eval ((TmVar x), env,stm, k) = (e', env',stm, k)
                  where (e', env') = getValueBinding x env
eval (v, env,stm, []) | isValue v   = (v, env,stm, [])

-- Evaluation rules for plus operator

eval ((TmAdd e1 e2), env,stm, k) = (e1, env,stm, (AddH e2 env):k)
eval ((TmInt n), env1,stm, (AddH e env2):k) = (e, env2,stm, (HAdd (TmInt n)):k )
eval ((TmInt m), env,stm, (HAdd (TmInt n)) : k) = (TmInt (n + m), [],stm, k)

-- Evaluation rules for subtract operator

eval ((TmSub e1 e2), env,stm, k) = (e1, env,stm, (SubH e2 env):k)
eval ((TmInt n), env1,stm, (SubH e env2):k) = (e, env2,stm, (HSub (TmInt n)):k )
eval ((TmInt m), env,stm, (HSub (TmInt n)) : k) = (TmInt (n - m), [],stm, k)

-- Evaluation rules for multiply operator

eval ((TmMult e1 e2), env, stm, k) = (e1, env,stm, (MultH e2 env):k)
eval ((TmInt n), env1, stm, (MultH e env2):k) = (e, env2, stm, (HMult (TmInt n)):k )
eval ((TmInt m), env,stm, (HMult (TmInt n)) : k) = (TmInt (n * m), [],stm, k)

-- Evaluation rules for divide operator

eval ((TmDiv e1 e2), env,stm, k) = (e1, env,stm, (DivH e2 env):k)
eval ((TmInt n), env1,stm, (DivH e env2):k) = (e, env2,stm, (HDiv (TmInt n)):k )
eval ((TmInt m), env,stm, (HDiv (TmInt n)) : k) = (TmInt (n `div` m), [],stm, k)



-- Evaluation rules for less than oeprator

eval ((TmLt e1 e2),env,stm,k) = (e1,env,stm,(LtH e2 env):k)
eval ((TmInt n),env1,stm,(LtH e env2):k) = (e,env2,stm,(HLt (TmInt n)) : k)
eval ((TmInt m),env,stm,(HLt (TmInt n)):k) | n < m = (TmTrue,[],stm,k)
                                             | otherwise = (TmFalse,[],stm,k)

-- Evaluation rules for less than oeprator
eval ((TmGt e1 e2),env,stm,k) = (e1,env,stm,(GtH e2 env):k)
eval ((TmInt n),env1,stm,(GtH e env2):k) = (e,env2,stm,(HGt (TmInt n)) : k)
eval ((TmInt m),env,stm,(HGt (TmInt n)):k) | n > m = (TmTrue,[],stm,k)
                                            | otherwise = (TmFalse,[],stm,k)

-- Evaluation rules for if then else
eval ((TmIf e1 e2 e3), env,stm, k) = (e1, env,stm, (HIf e2 e3 env):k)
eval (TmTrue, env1,stm, (HIf e2 e3 env2):k) = (e2, env2,stm, k)
eval (TmFalse, env1,stm, (HIf e2 e3 env2):k) = (e3, env2,stm,k)


-- Evaluation rules for push
eval ((TmPush element index e3), env,stm, k) = ((TmInt index), env,stm, (HPush (TmInt element) e3 env) :k)
eval ((TmInt n), env1,stm, (HPush (TmInt m) e3 env2):k) = ((TmInts (m) (evalLoop e3 stm )), env2,stm, k)


-- Evaluation rules for let
eval ((TmLet x e1),env,stm,k) = (e1,env,stm,(HLet x env):k)
eval (v,env1,stm,(HLet x env2):k) | isValue v = (v, env2,stm, k)



-- closure property for lambda
eval((TmLambda x typ e), env,stm, k) = ((Cl x typ e env), [],stm, k)


-- Evaluation rules for application
eval((TmApp e1 e2), env,stm, k) = (e1, env, stm,(AppH e2 env):k)
eval(v, env1,stm, (AppH e env2):k) | isValue v = (e, env2,stm, (HApp v):k)
eval(v, env1, stm,(HApp (Cl x typ e env2)):k) = (e, update env2 x v,stm, k)


eval (TmDuplicate (TmInts n e), env,stm, k)= (duplicateList (TmInts n e) (TmInts n e), env,stm, k )
eval (TmDuplicate (TmInt n), env,stm, k) = (TmInts (n) (TmInt n), env,stm, k)
eval ((TmDuplicate (e),env,stm,k)) = (TmDuplicate((evalLoop e stm)),env,stm,k)

-- Evaluation rules for length
eval(TmLength (TmInt n), env,stm, (HLength (TmInt m)):k) = (TmInt (1), env,stm, k)
eval(TmLength (TmInts (n) e), env, stm,k) = (TmInt (findLength (TmInts n e)), env,stm, k)
eval ((TmLength (TmInt n)),env,stm,k) = ((TmInt 1), env,stm, k)
eval ((TmLength(e),env,stm,k)) = (TmLength((evalLoop e stm)),env,stm,k)


-- Evaluation rules for splitAt
eval (TmSplitAt (TmInt n) (TmInts m e), env,stm, k) = eval (evalLoop (TmLine (splitBefore (TmInts m e ) n) (splitAfter (TmInts m e) n)) (stm), env,stm, k)
eval ((TmSplitAt n (e),env,stm,k)) = eval (TmSplitAt (evalLoop (n) (stm)) (evalLoop (e) (stm)), env,stm, k)



-- Evaluation rules for head
eval (TmHead (TmInts (n) e), env,stm, k) = (TmInt n, env,stm, k)

-- Evaluation rules for last
eval (TmLast (TmInts (n) e), env,stm, (HLast (TmInt m): k)) = (TmLast(e), env,stm, (HLast (TmInt n)):k)
eval (TmLast (TmInt (n)), env,stm, (HLast (TmInt m): k)) = (TmInt n, env,stm, k)
eval (TmLast (TmInts (n) e), env, stm,k) = (TmLast(e), env,stm, (HLast (TmInt n)):k)
eval (TmLast (TmInt n), env,stm, k) = (TmInt n, env,stm, k)

-- Evaluation rules for take
eval (TmTake (TmInt 1) (TmInt n), env,stm, (HTake e):k) = (TmTake (TmInt (0)) (TmInt 0), ("Value", (TmInt n)) : env,stm, (TakeH e): k)

eval (TmTake (TmInt n1) (TmInts n e), env,stm, (HTake e1):k)
                                            | n1 == 1    = (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env,stm, TakeH (TmInts n e): k)
                                            | n1 > 1     =  (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env,stm, HTake (TmInts n e): k)  



eval (TmTake (TmInt 0) e2 , env,stm, (TakeH e1):k) =((getValueFromEnvironment(env)), [],stm, [])
                               -- | n1 > 0    = (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env, (HTake e): k)
                               -- | n1 == 0    = (TmTake (TmInt (0)) e,  env, (TakeH e): k)

  
eval (TmTake e1 e2, env,stm, k) 
                            | (isValue e1) == False && (isValue e2) == False  = (TmTake (evalLoop e1 stm) (evalLoop e2 stm), env,stm, k)
                            | (isValue e1) == False    =(TmTake (evalLoop e1 stm) e2, env,stm, k)
                            | (isValue e2) == False    =(TmTake e1 (evalLoop e2 stm), env,stm, k)
                            | otherwise                = ((TmTake e1 e2),  env,stm, (HTake e2): k)


eval (TmTake (TmInt 1) (TmInts n e) , [],stm, []) =(TmInt (n), [],stm, [])
eval (TmTake (TmInt 1) (TmInt n) , [],stm, []) =(TmInt (n), [],stm, [])


-- evaluation rules for repeat
eval (TmTakeRepeat (TmInt n) e1, env,stm, (HTakeRepeat (TmInt n1):k))
                                              | n1 <= n      = (TmTakeRepeat (TmInt n) e1, ("Value", evalLoop (TmTake (TmInt n1) e1) stm):env,stm, (HTakeRepeat (TmInt (n1 + 1)): k))
                                              | otherwise    = ((getValueFromEnvironment env), env ,stm, [])

eval (TmTakeRepeat (TmInt n) e1, env,stm, k) = (TmTakeRepeat (TmInt n) e1, env,stm, (HTakeRepeat (TmInt 1):k))



eval (TmTakeRepeat e1 e2, env,stm, k) 
                            | (isValue e1) == False && (isValue e2) == False  = (TmTakeRepeat (evalLoop e1 stm) (evalLoop e2 stm), env,stm, k)
                            | (isValue e1) == False    =(TmTakeRepeat (evalLoop e1 stm) e2, env,stm, k)
                            | (isValue e2) == False    =(TmTakeRepeat e1 (evalLoop e2 stm), env,stm, k)
                            | otherwise                = ((TmTakeRepeat e1 e2),  env,stm, (HTakeRepeat e2): k)
-- Evaluation rules for map
eval (TmMap (TmLambda x typ e1) (TmInts n1 e), env,stm, (HMap (TmInts n2 e2):k)) = (TmMap (TmLambda x typ e1) e, env ++ [("Value", (evalLoop (TmApp (TmLambda x typ e1) (TmInt n1)) stm))] ,stm, (HMap e):k)
eval (TmMap (TmLambda x typ e1) (TmInt n1), env,stm, (HMap (TmInt n2):k)) = (TmMap (TmInt n1) (TmInt n1), env ++ [("Value", (evalLoop (TmApp (TmLambda x typ e1) (TmInt n1)) stm))],stm, (MapH e1) : k)
eval (TmMap (TmInt n) (TmInt n1), env,stm, (MapH e1) : k) = (getValueFromEnvironment env, env,stm, [])
eval (TmMap (TmLambda x typ e1) expr, env,stm, k) = (TmMap (TmLambda x typ e1) (evalLoop expr stm), env,stm, (HMap expr):k)

-- map (( \(x : Int) x * 3)) 1,2
-- ( \ (x : Int) (if (( \(x : Int) true ) 4 ) then x else x + 1)) 7

-- Evaluation rules for reverse
eval (TmReverseLists (TmLine (TmInts n e) e1), env,stm, k) = (TmReverseLists e1, env ++ [("Value", evalLoop (TmReverse (TmInts n e)) stm)],stm, (HReverseLists e1):k )
eval (TmReverseLists (TmInts n e), env,stm, (HReverseLists e1):k) = (TmReverseLists (TmInt 0), env ++ [("Value", evalLoop (TmReverse (TmInts n e)) stm)],stm, (ReverseListsH (TmInt 0)):k)
eval (TmReverseLists (TmInt n), env,stm, (HReverseLists e1):k) = (TmReverseLists (TmInt 0), env ++ [("Value", TmInt n)],stm, (ReverseListsH (TmInt 0)):k)
eval (TmReverseLists (TmInt 0), env,stm, (ReverseListsH e1):k) = ((getValueFromEnvironment (env)), [],stm, [])
eval ((TmReverseLists(e),env,stm,k)) = (TmReverseLists((evalLoop e stm)),env,stm,k)


eval (TmReverse (TmInts n e), env,stm, (HReverse (TmInt n1)):k) = (TmReverse (e), ("Value", (TmInt n )): env,stm, HReverse (TmInt n):k)

eval (TmReverse (TmInt n) , env,stm, (HReverse (TmInt n1)):k) = (TmReverse (TmInt n), ("Value", (TmInt n)) : env,stm, ReverseH (TmInt n):k)

eval (TmReverse (TmInt n ), env ,stm, (ReverseH (TmInt n1)):k) = ((getValueFromEnvironment(env)) , [],stm, [])

eval (TmReverse (TmInts n e), env,stm, k) = (TmReverse (e), ("Value", (TmInt n)) : env,stm,  HReverse (TmInt n): k)

eval ((TmReverse(e),env,stm,k)) = (TmReverse((evalLoop e stm)),env,stm,k)


-- evaluation rules for listst arithmetic
eval ((TmGetSequence n),env,stm,k) = (convertList1Token(getSequence stm n),env,stm,k)


-- evaluation rules for lists arithmetic
eval (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env,stm, k) | (isValue e2) == False && (isValue e3) == False  = eval (TmListsArith (TmLambda x typ e1) (TmLine (evalLoop e2 stm) (evalLoop e3 stm)), env,stm, k)
                                                      | (isValue e2) == False    = eval (TmListsArith (TmLambda x typ e1) (TmLine (evalLoop e2 stm) e3), env,stm, k)
                                                      | (isValue e3) == False    = eval (TmListsArith (TmLambda x typ e1) (TmLine (e2) (evalLoop e3 stm)), env,stm, k)

eval (TmListsArith (TmLambda x typ e1) (TmLine (TmInts n1 e2)  (TmInts n2 e3)), env,stm, (HListArith e4):k) = (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), ("Value", evalLoop (TmApp (TmApp (TmLambda x typ e1) (TmInt n1)) (TmInt n2) )(stm)) : env,stm, (HListArith (TmLine e2 e3)) :k)

eval (TmListsArith (TmLambda x typ e1) (TmLine (TmInt n1)  (TmInt n2)), env,stm, (HListArith e2):k) = (TmListsArith (TmLambda x typ e1) (TmInt 1), ("Value", evalLoop (TmApp (TmApp (TmLambda x typ e1)  (TmInt n1)) (TmInt n2)) (stm)) :env, stm, (ListArithH e2):k)

eval (TmListsArith (TmLambda x typ e1) e2, env,stm,  (ListArithH e3):k) = (getValueFromEnvironment env, env, stm, [])

eval (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env,stm, k) = (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env,stm, (HListArith (TmLine e2 e3) :k))

-- evaluation rules for sum
eval (TmSumLists (TmInt n), env,stm, (HSumLists e2):k) =  (TmSumLists (TmInt n) ,env ++ [("Value", evalLoop (TmSum (TmInt n)) stm)],stm, (SumListsH e2):k)

eval (TmSumLists (TmLine e1 e2), env,stm, k) = (TmSumLists e2,env ++ [("Value", evalLoop (TmSum e1) stm)],stm, (HSumLists e2):k)

eval (TmSumLists (TmInts n e1), env,stm, (HSumLists e2):k) = (TmSumLists (TmInts n e1) ,env ++ [("Value", evalLoop (TmSum (TmInts n e1)) stm)],stm, (SumListsH e2):k)

eval (TmSumLists e, env,stm, (SumListsH e2):k) = ((getValueFromEnvironment env), env,stm, [])

eval (TmSumLists e, env,stm, k) | isValue e == False         = (TmSumLists (evalLoop e stm), env,stm, k)


eval (TmSum (TmInt n), [],stm, k) = ((TmInt n) , [],stm, [])

eval (TmSum (TmInts n e1), ("Value", TmInt n1):env,stm, (HSum (TmInt n2)):k) = (TmSum (e1), [("Value", (TmInt (n + n1) ))],stm, (HSum (TmInt n)):k)

eval (TmSum (TmInt n), ("Value", TmInt n1):env,stm, (HSum (TmInt n2):k)) = (TmSum (TmInt (n1 + n)), env,stm, (SumH (TmInt n):k))

eval (TmSum (TmInt n), ("Value", (TmInt n1)):env,stm, (SumH e):k) = (TmAdd (TmInt n) (TmInt n1), [],stm, [])

eval (TmSum (TmInts n e1), env,stm, k) = (TmSum (TmInts n e1), ("Value", TmInt 0):env,stm, (HSum (TmInt 0):k))

eval (TmSum e, env,stm, k) | isValue e == False         = eval (TmSum (evalLoop e stm), env,stm, k)


eval (TmFibSequence (TmInt 2), env, stm, (HFibSequence (TmInt n1)): (HFibSequence (TmInt n2)) : k ) = ((getValueFromEnvironment env), [],stm, [])
eval (TmFibSequence (TmInt n), env,stm, (HFibSequence (TmInt n1)): (HFibSequence (TmInt n2)) : k ) = (TmFibSequence (TmInt (n - 1)), env ++ [("Value", TmInt (n1 + n2))],stm, (HFibSequence  (TmInt (n1 + n2))) : (HFibSequence  (TmInt (n1)) : k ))

-- evaluation rules for Fib Sequence
eval (TmFibSequence (TmInt n) , env,stm, k)
                        | n == 2           = ((TmInts 1 (TmInt 1)), env,stm, k)
                        | n == 1           = (TmInt 1, env,stm, k)
                        | otherwise        = (TmFibSequence (TmInt n), ("Value", TmInt (1)) : ("Value", TmInt (1)) : env,stm, (HFibSequence (TmInt 1)) : (HFibSequence (TmInt 1)) : k)

eval (TmFibSequence (e) , env,stm, k) = (TmFibSequence (evalLoop e stm) , env,stm, k)                   

-- evaluation rules for zip lines
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmLine (TmInts n1 e2) e3) (TmLine (TmInts n2 e4) e5)), env, stm, (HZipLines e6 e7): k) = (TmZipLines (TmLambda x typ e1) (TmLine e3 e5),  env ++ [("Value", evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInts n1 e2)) (TmInts n2 e4))) stm)] ,stm, (HZipLines e3 e5): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmInts n1 e2) (TmInts n2 e3)), env,stm, (HZipLines e4 e5): k) = (TmZipLines (TmLambda x typ e1) (TmLine (TmInts n1 e2) (TmInts n2 e3)),   env ++ [("Value", evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInts n1 e2)) (TmInts n2 e3))) stm)] ,stm, (ZipLinesH (TmInt 0)): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmInt n1) (TmInt n2)), env,stm, (HZipLines e4 e5): k) = (TmZipLines (TmLambda x typ e1) (TmLine (TmInt n1) (TmInt n2)),   env ++ [("Value", evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInt n1)) (TmInt n2))) stm)],stm, (ZipLinesH (TmInt 0)): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine e2 e3), env,stm, (ZipLinesH (TmInt 0)): k) = ((getValueFromEnvironment env), [],stm, [])
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmLine (TmInts n1 e2) e3) (TmLine (TmInts n2 e4) e5)), env,stm, k) = (TmZipLines (TmLambda x typ e1) (TmLine e3 e5),  ("Value", evalLoop (TmListsArith (TmLambda x typ e1) (TmLine (TmInts n1 e2) (TmInts n2 e4))) stm) : env, stm, (HZipLines e3 e5): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine e2 e3) , env,stm, k) = (TmZipLines (TmLambda x typ e1)  (TmLine (evalLoop(e2) stm) (evalLoop(e3) stm)), env,stm, k)


                             


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


-- Evaluation rules for splitAt
--eval (TmSplitAt TmInts n (TmInts e1 e2), env, k) = (TmSplitAt)

-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> [[Int]]-> Expr
evalLoop e stm = evalLoop' (e,[],stm,[])
  where evalLoop' (e,env,stm,k) = if (e' == e) && (isValue e') && k' == [] then e' else evalLoop' (e',env',stm',k')
                       where (e',env',stm',k') = eval (e,env,stm,k)





generateInts :: Expr -> [Int]
generateInts (TmInt a) = a : []
generateInts (TmInts a b) = a: generateInts b


unparse :: Expr -> String
unparse (TmInt n) = show n
unparse l@(TmInts x y) = show (transform(generateInts l :[]))
 --unparse l@(TmLine x y) = map(generateInts) l
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (TmLine x y) = show (transform((generateInts x):(generateInts y):[]))
--unparse (TmStream) = "value"
unparse _ = "Unknown"


--unparseLine :: Expr ->[[Int]]
--unparseLine (TmInt n) = n
--unparseLine l@(TmInts x y) = generateInts l
--unparseLine (TmLine x y) = (transform((generateInts x):(generateInts y):[])) 

getSequence :: [[Int]] -> Int -> [Int]
getSequence xxs x = [ xs !! x | xs <- xxs, not(null xs)]

convertList1Token :: [Int] -> Expr
convertList1Token []  = TmInt 0
convertList1Token (x:y:xs) = TmInts (x) (convertList1Token (y:xs))
convertList1Token (x:xs) = TmInt x

transform:: [[a]]->[[a]]
transform ([]:_) = []
transform x = (map head x) : transform (map tail x)

