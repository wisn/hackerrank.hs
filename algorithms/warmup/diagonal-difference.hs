import Control.Monad

calculateDiagonal a b [] = abs $ a - b
calculateDiagonal a b ((x:y:_):xs) =
    calculateDiagonal (a + x) (b + y) xs

main = do
  n <- readLn :: IO Int

  calculate <- forM [1..n] (\x -> do
        line <- getLine
        let row = map read $ words line :: [Int]
            a = row !! (x - 1)
            b = row !! (n - x)

        return [a, b]
      )

  print $ calculateDiagonal 0 0 calculate

