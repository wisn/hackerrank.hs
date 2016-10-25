main = do
    _ <- getLine
    line <- getLine
    
    let array = map read $ words line :: [Int]
        result = sum array
        
    print result

