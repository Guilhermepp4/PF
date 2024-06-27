catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes (Just x:t) = x : catMaybes ms
catMaybes (Nothing:t) = catMaybes ms