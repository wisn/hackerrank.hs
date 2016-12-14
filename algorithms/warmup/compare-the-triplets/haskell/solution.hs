main = do
    line <- getLine
    let a = map read $ words line :: [Int]
    line <- getLine
    let b = map read $ words line :: [Int]

    let pairs  = zipWith (-) a b
        scoreA = length $ filter (> 0) pairs
        scoreB = length $ filter (< 0) pairs

    putStrLn $ (show scoreA) ++ " " ++ (show scoreB)
