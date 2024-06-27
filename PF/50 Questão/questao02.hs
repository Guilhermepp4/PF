enumFromThenTo :: Int -> Int -> Int -> [Int]
enumFromThenTo start next end
    | start > end && next >= start || start < end && next < start = []
    | otherwise = start : enumFromThenTo next (2 * next - start) end
