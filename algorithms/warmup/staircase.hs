staircase 0 _ = []
staircase n m =
    [
       foldl (++) "" (replicate (n - 1) " ")
    ++ foldl (++) "" (replicate m "#")
    ] ++ staircase (n - 1) (m + 1)
    
main = do
    n <- readLn
    
    let stair = staircase n 1
    
    (putStr . unlines) stair
