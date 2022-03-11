module Main where
--lists--

simple :: p -> p
simple x = x

isPalindrome :: String -> Bool 
isPalindrome str = str == reverse str

ones :: Int -> [Integer]
ones n = take n $ cycle [1]

main :: IO()
main = do
    let list = [1, 22, 3, 4]
    let classList = ["A", "B", "C", "D", "E"]
    print $ list !! 1 --get access for an indexed item in list
    
    if isPalindrome "топот" then
        print "Yes"
    else print "No"

    if 'H' `elem` "Hello" then
        print "Yes"
    else print "No"

    print $ length "Hello"

    print $ drop 2 list
    print $ take 2 list

    print $ zip ['a' .. 'z'] [1 ..]
    print $ zip classList $ cycle [1, 2]