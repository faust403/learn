fun :: String -> String -> String
fun str1 str2 = str1 ++ str2

power :: Integer -> Integer -> Integer
power arg1 arg2 = do
    arg1 ^ arg2

main :: IO ()
main = do
    a <- getLine
    let ac = (read a :: Integer)
    b <- getLine
    let bc = (read b :: Integer)
    print (power ac bc)
    return ()