main = do
    n <- readLn
    
    let result = unlines $ replicate n "Hello World"
    
    putStr result

