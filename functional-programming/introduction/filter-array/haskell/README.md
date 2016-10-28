# Filter Array in Haskell
Go to [Filter Array](..) problem.

```haskell
f :: Int -> [Int] -> [Int]
f n = filter (< n)

-- The Input/Output section. You do not need to change or modify this part
main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers
```

## Explanation
1. Create a function `f` which take `Int` and list of `Int`
2. The `f` function filtering every element of the list where element `< n`
3. Request an input (Int) from user and taken as `n`
4. Take input stream until `EOF` and taken as `inputdata`
5. Create `numbers` equation that convert every element of the list to `Int`
6. Call `f` function with `map`, `unlines` it, then print out the result





