constroiMSet :: Ord a => [a] -> [(a,Int)]
constroiMSet [] = []
constroiMSet (l:ls) = insereMSet l (constroiMSet ls)