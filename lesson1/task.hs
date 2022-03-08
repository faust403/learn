funPrintTempl :: String -> String
funPrintTempl str = "Your email is " ++ str

factor :: Integer -> Integer
factor arg2 = 2 ^ arg2

main :: IO ()
main = do
    str <- getLine
    print(funPrintTempl str)

    num <- getLine
    let bound = (read num :: Integer) --Convert type from String to Integer
    print(factor bound)