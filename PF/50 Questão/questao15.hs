heads :: [[a]] -> [a]
heads [] = []
heads ([]:t) = heads t -- é necessária esta definição pois, se `h` for uma lista vazia na definição abaixo, `head []` irá resultar num erro.
heads (h:t) = head h : heads t