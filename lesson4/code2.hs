ifEven :: (Int -> Int) -> Int -> Int
ifEven lmbd n
    |   even n = lmbd n
    |   otherwise = n

main :: IO()
main = do
    print(ifEven (\n -> n^3) 2)