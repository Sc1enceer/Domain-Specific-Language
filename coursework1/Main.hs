import LexerTokens
import ParserGrammar
import Eval
import FunGuageTypes
import System.Environment
import Control.Exception
import System.IO
import Data.List

main :: IO ()
main = catch main' noParse

main' = do (fileName : _ ) <- getArgs 
           sourceText <- readFile fileName
           content <- getContents
           let singlewords = lines content
           let list = f singlewords
           --putStrLn (sourceText)
           let parsedProg = parseCalc (alexScanTokens sourceText)
           --putStrLn ("Parsed as " ++ (show parsedProg))           
           --putStrLn ("Type Checking : " ++ (show parsedProg) ++ "\n")
           let typedProg = typeOf [] parsedProg
           --putStrLn ("Type Checking Passed with type " ++ (unparseType typedProg) ++ "\n") 
           let result = evalLoop (parsedProg) (list)
           --putStrLn ("evaluate to as " ++ (show result))
           sequence_ $ convertToPrint((read(unparse result))::[[Int]]) >>= (\x -> [putStrLn x])


-- main' = do putStrLn ("enter an expression : ")
--            sourceText <- getLine
--            let parsedProg = parseCalc (alexScanTokens sourceText)
--            putStrLn ("Parsed as " ++ (show parsedProg))           
--            putStrLn ("Type Checking : " ++ (show parsedProg) ++ "\n")
--            let typedProg = typeOf [] parsedProg
--            putStrLn ("Type Checking Passed with type " ++ (unparseType typedProg) ++ "\n") 
--            let result = evalLoop (parsedProg) 
--            putStrLn ("evaluate to as " ++ (show result))
--            putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")
--            main'



noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn("----------------")
               hPutStrLn stderr err
               putStrLn("----------------")
               main

convertToPrint :: [[Int]] -> [String]
convertToPrint xss =     [intercalate " " y |y<-[map (show) x|x<-xss]]          
                    
                   
               
                    
f :: [String] -> [[Int]]
f [] = []
f (x:xs) = (map read $ words x :: [Int]) : f xs
               
               