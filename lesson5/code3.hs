module Main where

urlCreator :: [Char] -> [Char] -> [Char] -> [Char] -> [Char]
urlCreator host res id key =
    host ++ "/" ++ res ++ "/" ++ id ++ "?token=" ++ key

urlGenById :: [Char] -> [Char] -> [Char] -> [Char] -> [Char]
urlGenById host res key =
    (\ id ->
        urlCreator host res id key
    )


exampleURLCreator :: [Char] -> [Char]
exampleURLCreator = urlGenById "https://google.com" "books" "1337hAsk3ll"

main :: IO ()
main = do
    print $ exampleURLCreator "myId"