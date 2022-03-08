fun :: Int -> Int
fun n = if even n then n^2 else n^3

funLmbd :: Int -> Int
funLmbd n = (\ param ->
                if even param
                    then n^2
                else
                    n^3
            )n

funIn :: Int -> Int
funIn n = let param = n
             in
                 if even param
                     then
                         param^2
                 else
                     param^3

funWhere :: Int -> Int
funWhere n = if even param
             then
                 param^2
             else
                 param^3
    where param = n

funOtherwise :: Int -> Int
funOtherwise n
    | even param    = param^2
    | otherwise     = param^3
    where param = n