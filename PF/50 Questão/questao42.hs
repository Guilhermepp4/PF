removeMSet :: Eq a => a -> [(a,Int)] -> [(a,Int)]
removeMSet x [] = []
removeMSet x ((a,n):t) 
    | x == a = if n > 1 then (a, n-1) : t else t
    | otherwise = (a,n) : removeMSet x t