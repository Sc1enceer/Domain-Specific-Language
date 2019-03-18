module Eval where
import ParserGrammar
import System.IO
import Control.Monad


--
-- data DataType = TyInt | TyBoolyVar
--               deriving(Show, Eq)
--
-- data Line = TmLines | TmLine
--
-- type TyEnvironment = [ (String, Expr) ]
-- type ExprEnvironment = [ (String, Expr) ]
--
-- data Expr = TmBody Expr | TmIf Expr Expr Expr | TmGt Expr Expr | TmLt Expr Expr
--             | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr
--             | TmGetStream | TmReverse Expr | TmLength Expr | TmInts Int Expr | TmInt Int | TmComma  | TmTrue | TmFalse
--             | TmPush Int Int Expr | TmApp Expr Expr
--             | TmPrint Expr | TmEnd | TmVar String
--             | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
--             | TmCopy Expr | TmAccum Expr | TmFib Expr
--             | Cl Expr Environment

-- data Return = D1 [Int] | D2 [[Int]]
--           deriving (Show, Eq)

data Frame = HBody Expr | BodyH Expr Environment
           | HPrint Expr | PrintH Expr Environment
           | HLet String DataType Environment
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
           | HDuplicate Expr
           | HSplitAt Expr
           | HLine Expr | LineH Expr Environment
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
isValue (Cl _ _ _ _) = True
isValue (TmGetStream) =  True
isValue _ = False

isValueExtra :: (Expr, Environment, Kontinuation) -> Bool
isValueExtra (TmInt _,  _,  _) = True
isValueExtra ( _, _, _) = False



-- evaluation rules for plus operator
eval :: State -> State
eval ((TmVar x), env, k) = (e', env', k)
                  where (e', env') = getValueBinding x env
eval (v, env, []) | isValue v   = (v, env, [])

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
eval ((TmInt n), env1, (HPush (TmInt m) e3 env2):k) = ((TmInts (TmInt m) e3), env2, k)


-- Evaluation rules for let
eval ((TmLet x typ e1),env,k) = (e1,env,(HLet x typ env):k)
eval (v,env1,(HLet x typ env2):k) | isValue v = (v, env2, k)



-- closure property for lambda
eval((TmLambda x typ e), env, k) = ((Cl x typ e env), [], k)


-- Evaluation rules for application
eval((TmApp e1 e2), env, k) = (e1, env, (AppH e2 env):k)
eval(v, env1, (AppH e env2):k) | isValue v = (e, env2, (HApp v):k)
eval(v, env1, (HApp (Cl x typ e env2)):k) = (e, update env2 x v, k)


-- Evaluation rules for duplicate
eval (TmDuplicate (TmInts n e ), env, (HDuplicate (TmInts w s)):k) = (TmDuplicate (e), env, (HDuplicate ( TmInts (TmInts w s) (n))):k)
eval (TmDuplicate (TmInts n e), env, k) = (TmDuplicate (e), env, (HDuplicate (TmInts (TmInts n e) (n))):k)
eval (TmDuplicate (TmInt n), env, (HDuplicate (TmInts m w)):k) = (TmInts (TmInts m w) (TmInt n), env, k)
eval (TmDuplicate (TmInt n), env, k) = (TmInts (TmInt n) (TmInt n), env, k)


-- Evaluation rules for length
eval ((TmLength (TmInts n e)),env,(HLength (TmInt m)):k) = (TmLength (e), env, (HLength (TmInt (m+1))):k)
eval ((TmLength (TmInts n e)), env, k) = (TmLength(e),env,(HLength (TmInt 1)):k)
eval ((TmLength (TmInt n)),env,(HLength (TmInt m)):k) = (TmInt (m+1), env, k)
eval ((TmLength (TmInt n)),env,k) = (TmInt 1, env, k)



-- Evaluation rules for lines



-- Evaluation rules for splitAt
--eval (TmSplitAt TmInts n (TmInts e1 e2), env, k) = (TmSplitAt)

-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr
evalLoop l@(e1(e2)) | (isValue e2)  = evalLoop' (l,[],[])
                   | otherwise     = evalLoop (e1 (evalLoop e2))
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && k' == [] then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval (e,env,k)



--
-- merge :: [a] -> [a] -> [[a]]
-- merge [] [] = []
-- merge (x:xs) (y:ys) = [x, y] : merge xs ys


-- -- small step evaluation Function
-- eval1 :: Expr -> [[Int]] -> Return
-- -- eval1 (e, env, k) = (e', env', k)
-- --                where (e', env') = getValueBinding x env
--
-- -- Rule for terminated evaluations
-- -- eval1 (v, env, []) | isValue v  = (v, env, [])
--
-- --eval1((TmPrint e1), env, k) = (e1, env, (HPrint e1 env):k)
--
-- -- Body
-- --eval1 ((TmPreFix e1), env, k)  | e1 == TmStream       =
--                               -- where stream = inputStream
--
-- -- Rule for prefix evaluation
--
--
-- -- Rule for Copy evaluation
--
-- -- Rule for Stream arithmetic
--
-- -- Rule for Accumulator
--
-- -- Rule for Fibonacci
--
-- eval1 (TmBody e) input = eval1 e input
-- eval1 (TmPrint e) input = eval1 e input
--
--
-- eval1 (TmPrefix e) input = D1 (0: (map (head) input))
-- eval1 (TmCopy e) input = D2 (f)
--                           where f = replicate' input
--
-- eval1 (TmStrmArith e) input = D1 (map (\x -> (head x) + 3 * (last x)) input)
--
-- eval1 (TmAccum e) input =  D1 (scanl1 (+) (map(head) input))
--
-- eval1 (TmFib e) input = D1 (fibSolver list 1 n  (map(head) input))
--                                 where
--                                   n = length (map(head) input)
--                                   fib = 1 : 1 : zipWith (+) fib (tail fib)
--                                   list = (take n fib)
--
--
--
--
--
-- fibSolver :: [Int] -> Int -> Int -> [Int] -> [Int]
--
-- fibSolver list counter inputL input
--                 | counter > inputL       = []
--                 | otherwise               = value : (fibSolver list (counter + 1) inputL input)
--                                       where useList = take (counter) list
--                                             useInput = take (counter) input
--                                             value = anotherHelper useList useInput
--
-- anotherHelper :: [Int] -> [Int] -> Int
-- anotherHelper [] [] = 0
-- anotherHelper (x:xs) (l) = x * (last l) + (anotherHelper xs (init l))
--
--
-- replicate' :: [[Int]] -> [[Int]]
-- replicate' [] = []
-- replicate' (x:xs) = concatMap (replicate 2) ([head x]) : replicate' xs


-- evalLoop :: Expr -> Expr
-- evalLoop e = evalLoop' (e)
--           where evalLoop' (e) = if (isValue e') then e' else evalLoop' (e')
--                                           where (e') = eval1 (e)



generateInts :: Expr -> [Int]
generateInts (TmInt a) = a : []
generateInts (TmInts a b) = generateInts a ++ generateInts b


unparse :: Expr -> String
unparse (TmInt n) = show n
unparse l@(TmInts x y) = show (generateInts l )
--unparse l@(TmLines x y) = map(generateInts) l
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (TmLine x y) = show (generateInts x) ++ show (generateInts y)
--unparse (TmStream) = "value"
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
