main :: IO ()
main = do
    putStrLn "Who is getter of this massege?"
    recipient <- getLine
    putStrLn "Name of this book?"
    title <- getLine
    putStrLn "Who is author of this letter?"
    author <- getLine
    putStrLn ("Dear " ++ recipient ++ "!\n" ++ "Thank y for y bought")
