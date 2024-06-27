group :: Eq a => [a] -> [[a]]
group [] = []
group [x] = [[x]]
group (h:t)
    | elem h (head r) = (h : (head r)) : tail r
    | otherwise = [h] : r
    where r = group t