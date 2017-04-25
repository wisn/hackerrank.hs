main :: IO ()
main = do
    n <- readLn :: IO Int
    l <- fmap (take n . lines) getContents :: IO [String]

    let x = map read l :: [Double]
    
    output x

calculate :: Double -> Double
calculate x = 1 + evaluate 1 [1, 2, 3] x
    where
    evaluate :: Int -> [Double] -> Double -> Double
    evaluate 10 _         _ = 0
    evaluate i  (a:b:c:_) x = ((x ^ i) / a) + evaluate (i + 1) [b, b * c, c + 1] x

output :: [Double] -> IO ()
output []     = return ()
output (x:xs) =
    let equation = calculate x
        result   = (fromInteger $ round $ equation * (10 ^ 4)) / (10.0 ^^ 4)
    in print result >> output xs

