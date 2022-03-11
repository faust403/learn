
myRepeat :: a -> [a]
myRepeat n = cycle [n]

subSeq :: Int -> Int -> [Int] -> [Int]
subSeq f t list = take t $ drop f list

inFirstHalf :: Int -> [Int] -> Bool
inFirstHalf n list = elem n $ take (div n 2 + 1) list