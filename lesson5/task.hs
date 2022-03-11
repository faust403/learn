module Main where

getRequestURL :: [Char] -> [Char] -> [Char] -> [Char] -> [Char]
getRequestURL host apiKey res id = 
    host ++ "/" ++ res ++ "/" ++ id ++ "?token=" ++ apiKey

genHostRequestBuilder :: [Char] -> [Char] -> [Char] -> [Char] -> [Char]
genHostRequestBuilder host =
    (\ apiKey res id ->
        getRequestURL host apiKey res id
    )

genAPIRequestBuilder :: [Char] -> [Char] -> [Char] -> [Char] -> [Char]
genAPIRequestBuilder host res =
    (\ apiKey id ->
        getRequestURL host apiKey res id
    )

exampleURLBuilder :: [Char] -> [Char] -> [Char] -> [Char]
exampleURLBuilder = genHostRequestBuilder "https://google.com"

exmapleAPIRequestBuilder :: [Char] -> [Char] -> [Char]
exmapleAPIRequestBuilder = genAPIRequestBuilder "https://google.com" "books"

main :: IO ()
main =
    print $ getRequestURL "https://google.com" "123hAsk3ll" "book" "1234"
    --print $ getHostRequestBuilder "https://google.com" "123hAsk3ll" "book" "1234"
 