(!!) :: [a] -> Int -> a
(!!) (h:_) 0 = h
(!!) (_:t) n = (!!) t (n - 1)