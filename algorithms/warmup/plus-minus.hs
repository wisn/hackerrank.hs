import Numeric

sixDecimal n = showFFloat (Just 6) n ""

toDouble n = fromIntegral n :: Double

main = do
  line <- readLn :: IO Int
  let n = toDouble line

  line <- getLine
  let a = map read $ words line :: [Int]
      positive = toDouble $ length $ filter (> 0) a
      negative = toDouble $ length $ filter (< 0) a
      zero = toDouble $ length $ filter (== 0) a

  putStrLn $ sixDecimal $ positive / n
  putStrLn $ sixDecimal $ negative / n
  putStrLn $ sixDecimal $ zero / n
