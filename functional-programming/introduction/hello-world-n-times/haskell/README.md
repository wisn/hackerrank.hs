# Hello World N Times in Haskell
Go to [Hello World N Times](..) problem.

```haskell
hello_worlds n = putStr $ unlines $ replicate n "Hello World"

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   hello_worlds n
```

## Explanation
1. Create a `hello_worlds` function which `replicate` "hello world" as much as `n`, `unlines` it, then print out the result
2. Request an input (Int) from user and taken as `n`
3. Call `hello_worlds` function with `n` parameter





