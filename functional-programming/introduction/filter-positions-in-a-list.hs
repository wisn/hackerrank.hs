odds []       = []
odds [_]      = []
odds (_:x:xs) = x : odds xs

f :: [Int] -> [Int]
f lst = odds lst

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata

