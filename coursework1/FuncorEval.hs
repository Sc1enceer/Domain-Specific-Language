module FuncorEval where
import FuncorGrammar
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

type State = (Expr, Environment, [[Int]],  Kontinuation)

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
isValue (TmLine x y) = (isValue x) && (isValue y)
isValue (Cl _ _ _ _) = True
isValue _ = False

isValueExtra :: (Expr, Environment, Kontinuation) -> Bool
isValueExtra (TmInt _,  _,  _) = True
isValueExtra ( _, _, _) = False

-- evaluation rules
eval :: State -> State
eval ((TmVar x), env, input, k) = (e', env', input, k)
                  where (e', env') = getValueBinding x env
eval (v, env, input, []) | isValue v   = (v, env, input, [])

-- Evaluation rules for body
eval (TmBody e, env, input, k) = eval (e, env, input, k)

-- Evaluation rules for negate operator
eval (Negate (TmInt (n)), env, input, k) = (TmInt (-n), [], input, k) 

-- Evaluation rules for plus operator

eval ((TmAdd e1 e2), env, input, k) = (e1, env, input, (AddH e2 env):k)
eval ((TmInt n), env1, input, (AddH e env2):k) = (e, env2, input, (HAdd (TmInt n)):k )
eval ((TmInt m), env, input, (HAdd (TmInt n)) : k) = (TmInt (n + m), [], input, k)

-- Evaluation rules for subtract operator

eval ((TmSub e1 e2), env, input, k) = (e1, env, input, (SubH e2 env):k)
eval ((TmInt n), env1, input, (SubH e env2):k) = (e, env2, input, (HSub (TmInt n)):k )
eval ((TmInt m), env, input, (HSub (TmInt n)) : k) = (TmInt (n - m), [], input, k)

-- Evaluation rules for multiply operator

eval ((TmMult e1 e2), env,input, k) = (e1, env, input,(MultH e2 env):k)
eval ((TmInt n), env1, input, (MultH e env2):k) = (e, env2, input, (HMult (TmInt n)):k )
eval ((TmInt m), env, input, (HMult (TmInt n)) : k) = (TmInt (n * m), [],input, k)

-- Evaluation rules for divide operator

eval ((TmDiv e1 e2), env,input, k) = (e1, env, input, (DivH e2 env):k)
eval ((TmInt n), env1, input,(DivH e env2):k) = (e, env2, input, (HDiv (TmInt n)):k )
eval ((TmInt m), env, input, (HDiv (TmInt n)) : k) = (TmInt (n `div` m), [], input, k)


-- Evaluation rules for less than oeprator

eval ((TmLt e1 e2),env,input, k) = (e1,env,input,(LtH e2 env):k)
eval ((TmInt n),env1,input, (LtH e env2):k) = (e,env2,input,(HLt (TmInt n)) : k)
eval ((TmInt m),env,input,(HLt (TmInt n)):k) | n < m = (TmTrue,[],input,k)
                                             | otherwise = (TmFalse,[],input,k)

-- Evaluation rules for less than oeprator
eval ((TmGt e1 e2),env,input,k) = (e1,env,input,(GtH e2 env):k)
eval ((TmInt n),env1,input,(GtH e env2):k) = (e,env2,input,(HGt (TmInt n)) : k)
eval ((TmInt m),env,input,(HGt (TmInt n)):k) | n > m = (TmTrue,[],input,k)
                                            | otherwise = (TmFalse,[],input,k)

-- Evaluation rules for if then else
eval ((TmIf e1 e2 e3), env,input, k) = (e1, env, input,(HIf e2 e3 env):k)
eval (TmTrue, env1, input,(HIf e2 e3 env2):k) = (e2, env2,input, k)
eval (TmFalse, env1, input,(HIf e2 e3 env2):k) = (e3, env2,input, k)

eval ((TmLine e1 e2), env, input, k) = (TmLine (evalLoop e1 input) (evalLoop e2 input), env, input, k)

-- Evaluation rules for push
eval ((TmPush element index e3), env,input, k) = ((TmInt index), env, input, (HPush (TmInt element) e3 env) :k)
eval ((TmInt n), env1, input,(HPush (TmInt m) e3 env2):k) = ((TmInts (m) (evalLoop e3 input )), env2,input, k)

-- TmLet "x" TyInts (TmGetSequence 0) (TmPush 0 0 (TmVar "x"))

-- Evaluation rules for Let blocks
eval ((TmLet x typ e1 e2),env, input,k) = ((evalLoop e1 input),env,input,(HLet x typ e2):k)

eval (v,env,input,(HLet x typ e):k) | isValue v = (e, update env x v ,input, k)



-- closure property for lambda
eval((TmLambda x typ e), env,input, k) = ((Cl x typ e env), [],input, k)


-- Evaluation rules for application
eval((TmApp e1 e2), env,input, k) = (e1, env, input,(AppH e2 env):k)
eval(v, env1, input,(AppH e env2):k) | isValue v = (e, env2, input,(HApp v):k)
eval(v, env1, input, (HApp (Cl x typ e env2)):k) = (e, update env2 x v,input, k)


-- Evaluation rules for duplicate

eval (TmDuplicate (TmInts n e), env,input, k)= (duplicateList (TmInts n e) (TmInts n e), env,input, k )
eval (TmDuplicate (TmInt n), env,input, k) = (TmInts (n) (TmInt n), env,input, k)
eval ((TmDuplicate (e),env,input,k)) = (TmDuplicate((evalLoop e input)),env,input,k)

-- Evaluation rules for length
eval(TmLength (TmInt n), env, input,(HLength (TmInt m)):k) = (TmInt (1), [],input, [])
eval(TmLength (TmInts (n) e), env ,input,k) = (TmInt (findLength (TmInts n e)), [],input, [])
eval ((TmLength (TmInt n)),env,input,k) = ((TmInt 1), env,input, k)
eval ((TmLength(e),env,input,k)) = (TmLength((evalLoop e input)),env,input,k)


-- Evaluation rules for splitAt
eval (TmSplitAt (TmInt n) (TmInts m e), env,input, k) = eval ((evalLoop (TmLine (splitBefore (TmInts m e) n) (splitAfter (TmInts m e) n)) input), env, input, k)
eval ((TmSplitAt n (e),env, input,k)) = eval (TmSplitAt (evalLoop (n) input) (evalLoop (e) input), env, input, k)

-- Evaluation rules for head
eval (TmHead (TmInts (n) e), env, input ,k) = (TmInt n, env,input, k)

-- Evaluation rules for last
eval (TmLast (TmInts (n) e), env, input, (HLast (TmInt m): k)) = (TmLast(e), env, input,(HLast (TmInt n)):k)
eval (TmLast (TmInt (n)), env, input, (HLast (TmInt m): k)) = (TmInt n, env, input, k)
eval (TmLast (TmInts (n) e), env, input, k) = (TmLast(e), env, input, (HLast (TmInt n)):k)
eval (TmLast (TmInt n), env,input, k) = (TmInt n, env, input,k)


-- Evaluation rules for take
eval (TmTake (TmInt 1) (TmInt n), env,input, (HTake e):k) = (TmTake (TmInt (0)) (TmInt 0), ("Value", (TmInt n)) : env,input, (TakeH e): k)

eval (TmTake (TmInt n1) (TmInts n e), env,input, (HTake e1):k)
                                            | n1 == 1    = (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env,input, TakeH (TmInts n e): k)
                                            | n1 > 1     =  (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env,input, HTake (TmInts n e): k)  



eval (TmTake (TmInt 0) e2 , env,input, (TakeH e1):k) =((getValueFromEnvironment(env)), [],input, [])
                               -- | n1 > 0    = (TmTake (TmInt (n1-1)) e, ("Value", (TmInt n)) : env, (HTake e): k)
                               -- | n1 == 0    = (TmTake (TmInt (0)) e,  env, (TakeH e): k)

  
eval (TmTake e1 e2, env,input, k) 
                            | (isValue e1) == False && (isValue e2) == False  = (TmTake (evalLoop e1 input) (evalLoop e2 input), env,input, k)
                            | (isValue e1) == False    =(TmTake (evalLoop e1 input) e2, env,input, k)
                            | (isValue e2) == False    =(TmTake e1 (evalLoop e2 input), env,input, k)
                            | otherwise                = ((TmTake e1 e2),  env,input, (HTake e2): k)


eval (TmTake (TmInt 1) (TmInts n e) , [],input, []) =(TmInt (n), [],input, [])
eval (TmTake (TmInt 1) (TmInt n) , [],input, []) =(TmInt (n), [],input, [])



eval (TmTakeRepeat (TmInt n) e1, env,input, (HTakeRepeat (TmInt n1):k))
                                              | n1 <= n      = (TmTakeRepeat (TmInt n) e1, ("Value", evalLoop (TmTake (TmInt n1) e1) input):env,input, (HTakeRepeat (TmInt (n1 + 1)): k))
                                              | otherwise    = ((getValueFromEnvironment env), env ,input, [])

eval (TmTakeRepeat (TmInt n) e1, env,input, k) = (TmTakeRepeat (TmInt n) e1, env,input, (HTakeRepeat (TmInt 1):k))



eval (TmTakeRepeat e1 e2, env,input, k) 
                            | (isValue e1) == False && (isValue e2) == False  = (TmTakeRepeat (evalLoop e1 input) (evalLoop e2 input), env,input, k)
                            | (isValue e1) == False    =(TmTakeRepeat (evalLoop e1 input) e2, env,input, k)
                            | (isValue e2) == False    =(TmTakeRepeat e1 (evalLoop e2 input), env,input, k)
                            | otherwise                = ((TmTakeRepeat e1 e2),  env,input, (HTakeRepeat e2): k)



-- Evaluation rules for map
eval (TmMap (TmLambda x typ e1) (TmInts n1 e), env, input, (HMap (TmInts n2 e2):k)) = (TmMap (TmLambda x typ e1) e, env ++ [("Value", (evalLoop (TmApp (TmLambda x typ e1) (TmInt n1)) input))] , input, (HMap e):k)
eval (TmMap (TmLambda x typ e1) (TmInt n1), env, input, (HMap (TmInt n2):k)) = (TmMap (TmInt n1) (TmInt n1), env ++ [("Value", (evalLoop (TmApp (TmLambda x typ e1) (TmInt n1)) input))], input, (MapH e1) : k)
eval (TmMap (TmInt n) (TmInt n1), env, input, (MapH e1) : k) = (getValueFromEnvironment env, env, input, [])
eval (TmMap (TmLambda x typ e1) expr, env,input, k) = (TmMap (TmLambda x typ e1) (evalLoop expr input), env,input, (HMap expr):k )



-- Evaluation rules for reverse
eval (TmReverseLists (TmLine (TmInts n e) e1), env,input, k) = (TmReverseLists e1, env ++ [("Value", evalLoop (TmReverse (TmInts n e)) input)],input, (HReverseLists e1):k )
eval (TmReverseLists (TmInts n e), env,input, (HReverseLists e1):k) = (TmReverseLists (TmInt 0), env ++ [("Value", evalLoop (TmReverse (TmInts n e)) input)],input, (ReverseListsH (TmInt 0)):k)
eval (TmReverseLists (TmInt n), env,input, (HReverseLists e1):k) = (TmReverseLists (TmInt 0), env ++ [("Value", TmInt n)],input, (ReverseListsH (TmInt 0)):k)
eval (TmReverseLists (TmInt 0), env,input, (ReverseListsH e1):k) = ((getValueFromEnvironment (env)), [],input, [])
eval ((TmReverseLists(e),env,input,k)) = (TmReverseLists((evalLoop e input)),env,input,k)


eval (TmReverse (TmInts n e), env,input, (HReverse (TmInt n1)):k) = (TmReverse (e), ("Value", (TmInt n )): env,input, HReverse (TmInt n):k)

eval (TmReverse (TmInt n) , env,input, (HReverse (TmInt n1)):k) = (TmReverse (TmInt n), ("Value", (TmInt n)) : env,input, ReverseH (TmInt n):k)

eval (TmReverse (TmInt n ), env ,input, (ReverseH (TmInt n1)):k) = ((getValueFromEnvironment(env)) , [],input, [])

eval (TmReverse (TmInts n e), env,input, k) = (TmReverse (e), ("Value", (TmInt n)) : env, input,  HReverse (TmInt n): k)

eval ((TmReverse(e),env,input,k)) = (TmReverse((evalLoop e input)),env,input,k)

-- evaluation rules for lists arithmetic
eval (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env, input, k) | (isValue e2) == False && (isValue e3) == False  = eval (TmListsArith (TmLambda x typ e1) (TmLine (evalLoop e2 input) (evalLoop e3 input)), env, input, k)
                                                      | (isValue e2) == False    = eval (TmListsArith (TmLambda x typ e1) (TmLine (evalLoop e2 input) e3), env, input, k)
                                                      | (isValue e3) == False    = eval (TmListsArith (TmLambda x typ e1) (TmLine (e2) (evalLoop e3 input)), env,input,  k)

eval (TmListsArith (TmLambda x typ e1) (TmLine (TmInts n1 e2)  (TmInts n2 e3)), env, input, (HListArith e4):k) = (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), ("Value", (evalLoop (TmApp (TmApp (TmLambda x typ e1) (TmInt n1)) (TmInt n2)) input)) : env, input, (HListArith (TmLine e2 e3)) :k)
eval (TmListsArith (TmLambda x typ e1) (TmLine (TmInt n1)  (TmInt n2)), env, input, (HListArith e2):k) = (TmListsArith (TmLambda x typ e1) (TmInt 1), ("Value", (evalLoop (TmApp (TmApp (TmLambda x typ e1)  (TmInt n1)) (TmInt n2)) input)) :env, input, (ListArithH e2):k)
eval (TmListsArith (TmLambda x typ e1) e2, env, input, (ListArithH e3):k) = (getValueFromEnvironment env, env, input, [])
eval (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env, input, k) = (TmListsArith (TmLambda x typ e1) (TmLine e2 e3), env, input, (HListArith (TmLine e2 e3) :k))


-- evaluation rules for lists arithmetic
eval ((TmGetSequence n),env,input,k) = (convertList1Token(getSequence input n),env,input,k)

-- evaluation rules for sum
eval (TmSumLists (TmInt n), env, input, (HSumLists e2):k) =  (TmSumLists (TmInt n) ,env ++ [("Value", (evalLoop (TmSum (TmInt n)) input))], input,(SumListsH e2):k)

eval (TmSumLists (TmLine e1 e2), env, input, k) = (TmSumLists e2,env ++ [("Value", (evalLoop (TmSum e1) input))], input, (HSumLists e2):k)

eval (TmSumLists (TmInts n e1), env, input, (HSumLists e2):k) = (TmSumLists (TmInts n e1) ,env ++ [("Value", (evalLoop (TmSum (TmInts n e1)) input))], input, (SumListsH e2):k)

eval (TmSumLists e, env, input, (SumListsH e2):k) = ((getValueFromEnvironment env), env, input, [])

eval (TmSumLists e, env, input, k) | isValue e == False         = (TmSumLists (evalLoop e input), env,input, k)


eval (TmSum (TmInt n), [], input, k) = ((TmInt n) , [], input, [])

eval (TmSum (TmInts n e1), ("Value", TmInt n1):env, input,(HSum (TmInt n2)):k) = (TmSum (e1), [("Value", (TmInt (n + n1) ))], input, (HSum (TmInt n)):k)

eval (TmSum (TmInt n), ("Value", TmInt n1):env, input, (HSum (TmInt n2):k)) = (TmSum (TmInt (n1 + n)), env, input, (SumH (TmInt n):k))

eval (TmSum (TmInt n), ("Value", (TmInt n1)):env, input, (SumH e):k) = (TmAdd (TmInt n) (TmInt n1), [], input, [])

eval (TmSum (TmInts n e1), env, input,k) = (TmSum (TmInts n e1), ("Value", TmInt 0):env, input, (HSum (TmInt 0):k))

eval (TmSum e, env, input, k) | isValue e == False         = eval (TmSum (evalLoop e input), env, input, k)

eval (TmSequence (TmInt n), env, input, k) 
                        | n == 1           = case env of 
                                        [] -> ((TmInt n), [], input, k) 
                                        otherwise -> ((getValueFromEnvironment (("Value", (TmInt 1)) : env)), [], input, [])
                        | otherwise        = (TmSequence (TmInt (n - 1)), ("Value", (TmInt n)) : env, input, [])

eval (TmSequence (e) , env,stm, k) = (TmSequence (evalLoop e stm) , env,stm, k)   
eval (TmFibSequence (TmInt 2), env, input, (HFibSequence (TmInt n1)): (HFibSequence (TmInt n2)) : k ) = ((getValueFromEnvironment env), [], input, [])
eval (TmFibSequence (TmInt n), env, input, (HFibSequence (TmInt n1)): (HFibSequence (TmInt n2)) : k ) = (TmFibSequence (TmInt (n - 1)), env ++ [("Value", TmInt (n1 + n2))], input, (HFibSequence  (TmInt (n1 + n2))) : (HFibSequence  (TmInt (n1)) : k ))



-- evaluation rules for Fib Sequence
eval (TmFibSequence (TmInt n) , env, input, k)
                        | n == 2           = ((TmInts 1 (TmInt 1)), env, input, k)
                        | n == 1           = (TmInt 1, env, input, k)
                        | otherwise        = (TmFibSequence (TmInt n), ("Value", TmInt (1)) : ("Value", TmInt (1)) : env, input, (HFibSequence (TmInt 1)) : (HFibSequence (TmInt 1)) : k)

eval (TmFibSequence (e) , env,stm, k) = (TmFibSequence (evalLoop e stm) , env,stm, k)                                

-- evaluation rules for 
eval (TmGetDfSequence (TmInt n), env, input, k) 
                            | n == 1            = (TmInt 1, env, input, k)
                            | n == 2            = ((TmLine (TmLine (TmInt 0) (TmInt 1)) (TmInt 1)), [], input, k)
                            | otherwise         = (dfHelper (TmInt n), env, input, k)
eval (TmGetDfSequence e, env, input, k) = (TmGetDfSequence (evalLoop e input), env, input, k)

-- evaluation rules for zip lines

eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmLine (TmInts n1 e2) e3) (TmLine (TmInts n2 e4) e5)), env, input, (HZipLines e6 e7): k) = (TmZipLines (TmLambda x typ e1) (TmLine e3 e5),  env ++ [("Value", (evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInts n1 e2)) (TmInts n2 e4))) input))] , input, (HZipLines e3 e5): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmInts n1 e2) (TmInts n2 e3)), env, input, (HZipLines e4 e5): k) = (TmZipLines (TmLambda x typ e1) (TmLine (TmInts n1 e2) (TmInts n2 e3)),   env ++ [("Value", (evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInts n1 e2)) (TmInts n2 e3))) input))] , input, (ZipLinesH (TmInt 0)): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmInt n1) (TmInt n2)), env, input, (HZipLines e4 e5): k) = (TmZipLines (TmLambda x typ e1) (TmLine (TmInt n1) (TmInt n2)),   env ++ [("Value", (evalLoop (TmListsArith (TmLambda x typ e1)  (TmLine ((TmInt n1)) (TmInt n2))) input))], input, (ZipLinesH (TmInt 0)): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine e2 e3), env, input, (ZipLinesH (TmInt 0)): k) = ((getValueFromEnvironment env), [], input, [])
eval (TmZipLines (TmLambda x typ e1)  (TmLine (TmLine (TmInts n1 e2) e3) (TmLine (TmInts n2 e4) e5)), env, input,  k) = (TmZipLines (TmLambda x typ e1) (TmLine e3 e5),  ("Value", (evalLoop (TmListsArith (TmLambda x typ e1) (TmLine (TmInts n1 e2) (TmInts n2 e4))) input)) : env, input, (HZipLines e3 e5): k)
eval (TmZipLines (TmLambda x typ e1)  (TmLine e2 e3) , env, input, k) = (TmZipLines (TmLambda x typ e1)  (TmLine (evalLoop(e2) input) (evalLoop (e3) input)), env, input, k)



getValueFromEnvironment :: [ (String, Expr) ] -> Expr
getValueFromEnvironment [] = TmInt 0
getValueFromEnvironment [(str, TmInt n)] = TmInt n
getValueFromEnvironment ((str, TmInt n):xs) = TmInts n (getValueFromEnvironment xs)
getValueFromEnvironment [(str, TmInts n e)] = TmInts n e
getValueFromEnvironment ((str, TmInts n e):xs) = TmLine  (TmInts n e) (getValueFromEnvironment xs )


-- sequence helper
dfHelper :: Expr -> Expr
dfHelper (TmInt 2) = (TmLine (TmInts 0 (TmInt 1)) (TmInt 1))
dfHelper (TmInt 1) = TmInt 1
dfHelper (TmInt n) = TmLine (convertList1Token (helper2 n)) (dfHelper (TmInt (n-1)))

helper2 :: Int -> [Int]
helper2 1 = [1]
helper2 n 
        | n `mod` 2 == 0        = [0] ++ helper2 (n-1)
        | otherwise             = [1] ++ helper2 (n-1)
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
evalLoop :: Expr -> [[Int]] ->  Expr
evalLoop e input = evalLoop' (e,[], input, [])  
  where evalLoop' (e,env, input ,k) = if (e' == e) && (isValue e') && k' == [] then e' else evalLoop' (e',env', input',k')
                       where (e',env', input', k') = eval (e,env, input, k)

                       


generateInts :: Expr -> [Int]
generateInts (TmInt a) = a : []
generateInts (TmInts a b) = a : generateInts b


unparse :: Expr -> [[Int]]
unparse (TmInt n) = [[n]]
unparse l@(TmInts x y) = generateInts l :[]
-- unparse l@(TmLine x y) = map(generateInts) l
--unparse (TmTrue) = "true"
--unparse (TmFalse) = "false"
unparse (TmLine x (TmInt y)) = (generateInts x) : (generateInts (TmInt y)) : []
unparse (TmLine x y) = (generateInts x) : [] ++ (unparse y)
    -- show (((generateInts x : [])) : (unparse y) : [])
--unparse (TmLine x y) = show (transform((generateInts x : []))) ++ (unparse y)
unparse _ = error "Unkown"


-- unparse :: Expr -> String
-- unparse (TmInt n) = show n
-- unparse l@(TmInts x y) = show (generateInts l :[])
-- -- unparse l@(TmLine x y) = map(generateInts) l
-- unparse (TmTrue) = "true"
-- unparse (TmFalse) = "false"
-- unparse (TmLine x (TmInt y)) = show (((generateInts x):(generateInts (TmInt y)):[]))
-- unparse (TmLine x y) = show (((generateInts x : [])) : (unparse y) : [])
-- --unparse (TmLine x y) = show (transform((generateInts x : []))) ++ (unparse y)
-- unparse _ = "Unknown"


getSequence :: [[Int]] -> Int -> [Int]
getSequence xxs x = [ xs !! x | xs <- xxs, not(null xs)]

convertList1Token :: [Int] -> Expr
convertList1Token [x] = TmInt x
convertList1Token (x:xs) = TmInts (x) (convertList1Token (xs))


transform:: [[a]]->[[a]]
transform ([]:_) = []
transform x = (map head x) : transform (map tail x)


