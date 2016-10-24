comparer [] [] n m = [n, m]
comparer (x:xs) (y:ys) n m
    | x > y = comparer xs ys (n + 1) m
    | x < y = comparer xs ys n (m + 1)
    | otherwise = comparer xs ys n m

main = do
    line <- getLine
    let a = map read $ words line :: [Int]
    
    line <- getLine
    let b = map read $ words line :: [Int]
    
    let result = comparer a b 0 0
    
    putStrLn $ show (head result) ++ " " ++ show (last result)

