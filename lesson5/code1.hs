import Distribution.SPDX (LicenseId(AFL_1_2))
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