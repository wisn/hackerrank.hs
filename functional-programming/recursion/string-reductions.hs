import Data.List

main :: IO ()
main = (putStrLn . nub) =<< getLine

