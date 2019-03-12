import System.IO
import Control.Monad

main = do
        let list = []
        handle <- openFile "input.txt" ReadMode
        contents <- hGetContents handle
        let singlewords = lines contents
            list = f singlewords
        print list
        hClose handle

f :: [String] -> [[Int]]
f [] = []
f (x:xs) = (map read $ words x :: [Int]) : f xs
