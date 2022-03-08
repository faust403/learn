simple :: String -> String
simple x = x --all functionx are math interpretation

calculateChange :: Int -> Int -> Int
calculateChange owed given = if change > 0
                             then change
                             else 0
    where change = given - owed --For no recounting place in change

inc :: Int -> Int
inc n = n+1

double :: Int -> Int
double n = 2*n

square :: Int -> Int
square n = n^2

fun :: Int -> Int
fun n = if mod n 2 == 0 then n - 2 else 3*n + 1