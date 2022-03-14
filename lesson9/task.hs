module Main where
import Data.Char (toLower)


task1MyElem :: Int -> [Int] -> Bool
task1MyElem num list =
    if length (filter (\ (header :_) -> header == num) [list]) == 0 then
        False
    else
        True

task2IsPalindrome :: String -> Bool
task2IsPalindrome str = 
    if currentString == reverse currentString then
        True
    else
        False
    where currentString = (map (toLower) (filter (/=  ' ') str))

task3Harmonic num = foldl (+) 0 [1/2, 1/3 .. 1/num]

main :: IO ()
main = print $ task2IsPalindrome "A roza ypala na lapy Azora"