inc :: Int -> Int
inc n = n + 1

double :: Int -> Int 
double n = 2 * n

square :: Int -> Int 
square n = n^2

ifEven :: Integral p => (p -> p) -> p -> p
ifEven myFun n = if even n
                 then myFun n
                 else n

main :: IO ()
main = do
    print(3.1 + 2)
    print(inc 1 + 2) --inc 1 will computing first, cause functions have more priority then ariphmetic
    f <- getLine
    print(ifEven (\ n -> n*2) 2) --lambda to ifEven func
    