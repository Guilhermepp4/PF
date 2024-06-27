nub :: Eq a => [a] -> [a]
nub [] = []
nub (h:t) = if h `elem` t 
            then nub t
            else h : nub t