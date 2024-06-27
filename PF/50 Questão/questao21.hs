isPrime :: Int -> Bool
isPrime n = n >= 2 && primeCheck n 2

primeCheck :: Int -> Int -> Bool
primeCheck n m
    | m * m > n = True
    | mod n m == 0 = False
    | otherwise = primeCheck n (m + 1)