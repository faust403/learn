module Main where

myLength :: [Int] -> Int
myLength (x:list) = 1 + myLength list
myLength _ = 0

myTakeFromLesson :: Int -> [Int] -> [Int]
myTakeFromLesson n (x:list) =
    x :myTakeFromLesson (n-1) list
myTakeFromLesson _ _ = []

myCycle :: [Int] -> [Int]
myCycle (elem :list) =
    elem: myCycle (list++[elem])

akkermanFunc :: Int -> Int -> Int
akkermanFunc 0 n = n+1
akkermanFunc m 0 = akkermanFunc (m-1) 1
akkermanFunc m n =
    akkermanFunc (m-1) $ akkermanFunc m (n-1)

collatzFunc :: Int -> Int
collatzFunc n
    | n == 1 = n
    | even n = collatzFunc $ n `div` 2
    | otherwise = collatzFunc $ 2*n+1

fastFib :: Int -> Int -> Int -> Int
fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib _ _ 2 = 1
fastFib x y 3 = x+y
fastFib x y c = fastFib (x+y) x (c-1)

myDrop :: Int -> [Int] -> [Int]
myDrop n list
    | n <= 0 = list
myDrop n (elem :list) = myDrop (n-1) list

main :: IO ()
main = do
    print "Hello"