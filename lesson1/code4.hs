bodyPart :: [Char] -> [Char] --Array of Char's
bodyPart bookTitle = "Thank y for y bought of " ++ bookTitle ++ "!\n"

fromPart :: [Char] -> [Char]
fromPart author = "With respect,\n" ++ author ++ " "

printInteger :: Int -> Int
printInteger num = num

fun :: String -> Int -> String
fun str num = str