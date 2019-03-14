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
-- type Environment = [ (String, Expr) ]
--
-- data Expr = TmBody Expr | TmStream | TmInt Int |  TmTrue | TmFalse | TmComma | TmLet String DataType Expr
--             | TmPrint Expr | TmVar String
--             | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
--             | TmCopy Expr | TmAccum Expr | TmFib Expr
--             | Cl String DataType Expr Environment

data Return = D1 [Int] | D2 [[Int]]
          deriving (Show, Eq)

data Frame = HBody Expr | BodyH Expr Environment
           | HPrint Expr
           | HPrefix Expr Environment | PrefixH Expr
           | HStrmArith Expr Environment | StrmArithH Expr
           | HCopy Expr Environment | CopyH Expr
           | HAccum Expr Environment | AccumH Expr
           | HFib Expr Environment | FibH Expr

type Kontinuation = [ Frame ]

type State = (Expr, Environment, Kontinuation)

-- Function to {-# UNPACK #-}  a closure to extract the underlying term and Environment
-- unpack :: Expr -> (Expr, Environment)
-- unpack (Cl expr env) = (Expr, env)
-- unpack e = (e, [])

-- look up a value in an environment and unpack it
-- getValueBinding :: String -> Environment -> (Expr, Environment)
-- getValueBinding x [] = error "Variable binding not found"
-- getValueBinding x ((y, e):env) | x == y   = unpack e
--                                | otherwise = getValueBinding x env

-- Checks for terminated expresisons
isValue :: Expr -> Bool
isValue (TmInt _) = True
isValue TmTrue = True
isValue TmFalse = True
-- isValue (Cl _ _) = True
isValue (TmStream) =  True
isValue _ = False




merge :: [a] -> [a] -> [[a]]
merge [] [] = []
merge (x:xs) (y:ys) = [x, y] : merge xs ys


-- small step evaluation Function
eval1 :: Expr -> [[Int]] -> Return
-- eval1 (e, env, k) = (e', env', k)
--                where (e', env') = getValueBinding x env

-- Rule for terminated evaluations
-- eval1 (v, env, []) | isValue v  = (v, env, [])

--eval1((TmPrint e1), env, k) = (e1, env, (HPrint e1 env):k)

-- Body
--eval1 ((TmPreFix e1), env, k)  | e1 == TmStream       =
                              -- where stream = inputStream

-- Rule for prefix evaluation


-- Rule for Copy evaluation

-- Rule for Stream arithmetic

-- Rule for Accumulator

-- Rule for Fibonacci

eval1 (TmBody e) input = eval1 e input
eval1 (TmPrint e) input = eval1 e input


eval1 (TmPrefix e) input = D1 (0: (map (head) input))
eval1 (TmCopy e) input = D2 (f)
                          where f = replicate' input

eval1 (TmStrmArith e) input = D1 (map (\x -> (head x) + 3 * (last x)) input)

eval1 (TmAccum e) input = TmFib e input
-- eval1 (TmFib e) input = TmFib e input



replicate' :: [[Int]] -> [[Int]]
replicate' [] = []
replicate' (x:xs) = concatMap (replicate 2) ([head x]) : replicate' xs


-- evalLoop :: Expr -> Expr
-- evalLoop e = evalLoop' (e)
--           where evalLoop' (e) = if (isValue e') then e' else evalLoop' (e')
--                                           where (e') = eval1 (e)

unparse :: Expr -> String
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (TmStream) = "value"
unparse (TmPrefix e) = "prefix value"
unparse (TmCopy e) = "copy value"
unparse (TmStrmArith e) = "arithmetic value"
unparse (TmAccum e) = "accum value"
unparse (TmFib e) = "fib value"
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
