import Data.List ( sortBy )

names :: [([Char], [Char])]
names = [("Ben", "Fuck"), ("ok", "ok")]

compareNames :: ([Char], [Char]) -> ([Char], [Char]) -> Ordering
compareNames n1 n2 = (\ sname1 sname2 ->
                        if sname1 > sname2
                            then GT
                        else if sname1 < sname2
                            then LT
                        else (\ fname1 fname2 ->
                                if fname1 > fname2
                                    then GT
                                else if fname1 < fname2
                                    then LT
                                else EQ
                            ) (fst n1)(fst n2)
                    ) (snd n1)(snd n2)

main :: IO ()
main = do
    print (sortBy compareNames names)