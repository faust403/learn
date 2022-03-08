--lesson for lambda functions

sum :: Int -> Int -> Int
sum a b = a + b

sumSquareOrSquareSum :: Int -> Int -> Int
sumSquareOrSquareSum a b = if sumSquare > squareSum
                            then sumSquare
                            else squareSum
    where squareSum = (a+b)^2
          sumSquare = a^2+b^2

sumSquareOrSquareSumLmbd :: Int -> Int -> Int
sumSquareOrSquareSumLmbd a b = (\ sumSquare squareSum ->
                                if squareSum > sumSquare
                                    then squareSum
                                    else sumSquare
                                ) ((a+b)^2) (a^2+b^2)

doubleDouble :: Int -> Int
doubleDouble n = param * 2
    where param = n*2

doubleDoubleLet :: Int -> Int 
doubleDoubleLet n = let param = n*2
                    in
                        param*2 

doubleDoubleLmbd :: Int -> Int
doubleDoubleLmbd n = (\ param -> param*2) (n*2)

multiplyArguments :: Int -> Int -> Int
multiplyArguments a b = a * b

multiplyArgumentsWhere :: Int -> Int -> Int
multiplyArgumentsWhere a b = param1*param2
    where param1 = a
          param2 = b

multiplyArgumentsLet :: Int -> Int -> Int
multiplyArgumentsLet a b = let param1 = a
                               param2 = b
                            in
                                param1*param2

multiplyArgumentsLmbd :: Int -> Int -> Int
multiplyArgumentsLmbd a b = (\ param1 param2 ->
                            param1*param2)(a)(b)

rewriteFunctionLet :: Int -> Int
rewriteFunctionLet n = let n = 3
                    in
                        let n = 2
                        in
                            n

rewriteFunctionLmbd :: Int -> Int
rewriteFunctionLmbd n = (\n -> 
                            (\n -> 
                                (\n -> n)6)2)(4)

task :: Int -> Int
task n = (\ param1 ->
            (\ param2 -> param2+1)param1
         )n+1