import FuncorTokens
import FuncorGrammar
import FuncorEval
import FuncorTypes
import System.Environment
import Control.Exception
import System.IO
import Control.Monad
import Data.List

main :: IO ()
main = catch main' noParse

-- main' = do 
--            sourceText <- readFile "pr6.spl"
--            content <- getContents
--            let singlewords = lines content
--            let list = f singlewords
--            --putStrLn (sourceText)
--            let parsedProg = parseCalc (alexScanTokens sourceText)
--            --putStrLn ("Parsed as " ++ (show parsedProg))           
--            --putStrLn ("Type Checking : " ++ (show parsedProg) ++ "\n")
--            let typedProg = typeOf [] parsedProg
--            --putStrLn ("Type Checking Passed with type " ++ (unparseType typedProg) ++ "\n") 
--            let result = evalLoop (parsedProg) (list)
--            --putStrLn ("evaluate to as " ++ (show result))
--            sequence_ $ convertToPrint((read(unparse result))::[[Int]]) >>= (\x -> [putStrLn x])

main' = do (fileName : _ ) <- getArgs 
           sourceText <- readFile fileName
           content <- getContents
           let singlewords = lines content
           let list = f singlewords
           -- putStrLn (sourceText)
           --putStrLn ("input is " ++ show (list))
           case list of
                []  ->  putStrLn ""
                otherwise -> do
                                let parsedProg = parseCalc (alexScanTokens sourceText)
                                --putStrLn ("Parsed as " ++ (show parsedProg))           
                                --putStrLn ("Type Checking : " ++ (show parsedProg) ++ "\n")
                                let typedProg = typeOf [] parsedProg
                                --putStrLn ("Type Checking Passed with type " ++ (unparseType typedProg) ++ "\n") 
                                let result = evalLoop (parsedProg) (list)
                                --putStrLn ("evaluate to as " ++ (show result))

                                -- sequence_ $ convertToPrint((read(unparse result))::[[Int]]) >>= (\x -> [putStrLn x])
                                --show (unparse result)
                                sequence_ $ reverse $ convertToPrint(unparse result) >>= (\x -> [putStrLn x])
                               -- sequence_ $ unparse result)

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn("----------------")
               hPutStrLn stderr err
               putStrLn("----------------")
               main
              --  [[-5,0,3],[0,-5,0]]
convertToPrint :: [[Int]] -> [String]
convertToPrint l@(x : xs) 
                    | length x == 1         = [intercalate " " (map(show.head) l)]
                    | otherwise             = (convertToPrint (map (tail) l))  ++ ((intercalate " " (map(show.head) l)) : [])
-- convertToPrint xss = [intercalate " " y | y<-[map (show) x | x <-xss ]]          
                   
f :: [String] -> [[Int]]
f [] = []
f (x:xs) = (map read $ words x :: [Int]) : f xs