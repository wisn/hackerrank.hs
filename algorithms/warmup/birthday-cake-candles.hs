main :: IO ()
main = do
    n <- readLn :: IO Int
    l <- fmap (take n . words) getLine
    
    let input = map read l :: [Int]
        maxi  = maximum input
        res   = filter (==maxi) input
    
    (print . length) res

