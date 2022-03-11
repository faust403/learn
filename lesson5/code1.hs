ifEven :: Integral p => (p -> p) -> p -> p
ifEven myFunction x = if even x then
                        myFunction x
                      else x

inc :: Num a => a -> a
inc n = n+1

double :: Num a => a -> a
double n = n*2

square :: Num a => a -> a
square n = n^2

ifEvenInc :: Integral p => p -> p
ifEvenInc n = ifEven inc n

ifEvenDouble :: Integral p => p -> p
ifEvenDouble n = ifEven double n

ifEvenSquare :: Integral p => p -> p
ifEvenSquare n = ifEven square n

genIfEven :: Integral p => (p -> p) -> p -> p
genIfEven f = (\x -> ifEven f x)

ifEvenIncGen :: Integer -> Integer
ifEvenIncGen = genIfEven inc