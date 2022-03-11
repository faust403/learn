module Main where

myTake :: Int -> [Int] -> [Int]
myTake n list
    | n == 0 = []
    | otherwise = myTake (n-1) list ++ [list !! n-1]

myTakeButFaster :: Int -> [Int] -> [Int]
myTakeButFaster n (x :list)
    | n > 0 = x :take (n-1) list
myTakeButFaster _ _ = []

myHead :: [Int] -> Int
myHead (x :xs) = x
myHead _ = error "Lol"

myTail :: [Int] -> [Int]
myTail (x :xs) = xs
myTail [] = []

nod :: Int -> Int -> Int
nod a b
    | a `mod` b == 0 = b
    | otherwise = nod b $ a `mod` b

nodF :: Int -> Int -> Int
nodF a b = case a `mod` b of
    0 -> b
    _ -> nodF b a `mod` b

factor :: Int -> Int
factor n
    | n == 1 = 1
    | otherwise = n*factor(n-1)

sayAmount :: Int -> String
sayAmount n = case n of
    1 -> "One"
    2 -> "Two"
    _ -> "A lot of"

main :: IO ()
main = do
    print $ nod 10 100
    print $ factor 4