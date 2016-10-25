# Hello World N Times in Haskell
Go to [Hello World N Times](..) problem.

```haskell
main = do
    n <- readLn
    
    let result = unlines $ replicate n "Hello World"
    
    putStr result
```

## Explanation
1. Request an input (Int) from user and taken as `n`
2. Replicate `"Hello World"` `n` times and save it as a list. Then, turn back the list to a single line string as `result` equation
3. Print out `result`



