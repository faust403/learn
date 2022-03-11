module Main where

mySum :: Num a => a -> a -> a -> a -> a
mySum a b c d = a + b + c + d

funGeneratorSum :: Num a => a -> a -> a -> a -> a
funGeneratorSum a =
    (\ b c d ->
        mySum a b c d
    )

funGeneratorSumTwo :: Num a => a -> a -> a -> a -> a
funGeneratorSumTwo a b =
    (\ c d ->
        mySum a b c d
    )

exemplar1 :: Integer -> Integer -> Integer -> Integer
exemplar1 = funGeneratorSum 1

exemplar2 :: Integer -> Integer -> Integer -> Integer
exemplar2 = funGeneratorSum 3

exemplar3 :: Integer -> Integer -> Integer
exemplar3 = funGeneratorSumTwo 1 2

main :: IO ()
main = do
    print $ exemplar3 2 3