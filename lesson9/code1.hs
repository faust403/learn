{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Main where

add3ToEach :: [Int] -> [Int]
add3ToEach [] = []
add3ToEach (head :list) = (head+3): add3ToEach list

mul3ToEach :: [Int] -> [Int]
mul3ToEach [] = []
mul3ToEach (head :list) = (head*3): mul3ToEach list

squareToEach :: [Int] -> [Int]
squareToEach [] = []
squareToEach (head :list) = (head*head): squareToEach list

addBang :: [String] -> [String]
addBang [] = []
addBang (currentHead :list) = (currentHead ++ "!"): addBang list

addBangWithFun :: (String -> String) -> [String] -> [String]
addBangWithFun _ [] = []
addBangWithFun f (currentHead :list) = (f currentHead): addBangWithFun f list

toEach :: (t1 -> t2) -> t1 -> t2
toEach fun list = fun list

myFilter :: (String -> Bool) -> [String] -> [String]
myFilter fun [] = []
myFilter fun (head :list) =
    if fun head then
        head :myFilter fun list
    else myFilter fun list

myFilterWithPatternMatching :: (String -> Bool) -> [String] -> [String]
myFilterWithPatternMatching fun (head :list)
    | fun [] = []
    | fun head = head :myFilterWithPatternMatching fun list
    | otherwise = myFilterWithPatternMatching fun list

myRemove :: (String -> Bool) -> [String] -> [String]
myRemove fun [] = []
myRemove fun (head :list) =
    if fun head then
        myRemove fun list
    else
        head: myRemove fun list

myRemoveWithPatternMatching :: (String -> Bool) -> [String] -> [String]
myRemoveWithPatternMatching fun (head :list)
    | fun [] = []
    | fun head = myRemoveWithPatternMatching fun list
    | otherwise = head :myRemoveWithPatternMatching fun list

myProduct :: [Int] -> Int
myProduct list = foldl (*) 1 list

sumOfSquares :: [Int] -> Int
sumOfSquares list = foldl (+) 0 (map (^2) list)

myFoldl :: (Int -> Int -> Int) -> Int -> [Int] -> Int
myFoldl f init [] = init
myFoldl f init (head :list) = myFoldl f (f init head) list

main :: IO ()
main = do
    print $ map reverse ["Hello", "world"]
    print $ filter (\(sym :str) -> sym == 'A') ["Hello", "Avokado"]
    print "End"