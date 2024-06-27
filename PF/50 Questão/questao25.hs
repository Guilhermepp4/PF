elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices x l = elemIndicesAux x l 0

elemIndicesAux :: Eq a => a -> [a] -> Int -> [Int]
elemIndicesAux _ [] _ = []
elemIndicesAux x (h:t) i -- a variável `i` indica-nos qual o índice do elemento da lista que estamos a consultar
    | x == h = i : elemIndicesAux x t (i+1)
    | otherwise = elemIndicesAux x t (i+1)