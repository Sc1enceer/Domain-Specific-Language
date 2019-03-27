import LexerTokens
import ParserGrammar
import Eval
import System.Environment
import Control.Exception
import System.IO
import Control.Monad
import Data.List
main :: IO ()
main = catch main' noParse


main' = do (fileName : _ ) <- getArgs 
           sourceText <- readFile fileName
           content <- getContents
           let singlewords = lines content
           let list = f singlewords
           --putStrLn ("Parsing : " ++ sourceText)
           let parsedProg = parseCalc (alexScanTokens sourceText)
           --putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           let result = evalLoop (parsedProg) (list)
           --putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")
           --putStrLn(unparse result)
           sequence_ $ convertToPrint((read(unparse result))::[[Int]]) >>= (\x -> [putStrLn x])
           --putStrLn ((read(unparse result))::[[Int]])
      
           


--main' = do (fileName : _ ) <- getArgs 
           --sourceText <- readFile fileName
           --let parsedProg = parseCalc (alexScanTokens sourceText)
           --content <-  getContents
           --putStrLn(sourceText)
           --putStrLn(content)
           --let singlewords = lines content
           --let list = f singlewords
           --let result = evalLoop parsedProg list
           --sequence_ $ convertToPrint((read(unparse result))::[[Int]]) >>= (\x -> [putStrLn x])
           --putStrLn(sourceText)
           
           --putStrLn ("Parsed as " ++ (show parsedProg))
          
           
           
         --putStrLn ("evaluate to as " ++ (show result))
           
         --putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")

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





