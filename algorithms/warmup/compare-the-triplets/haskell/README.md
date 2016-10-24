# Compare the Triplets in Haskell
Go to [Compare the Triplets](..) problem.

```haskell
comparer [] [] n m = [n, m]
comparer (x:xs) (y:ys) n m
    | x > y = comparer xs ys (n + 1) m
    | x < y = comparer xs ys n (m + 1)
    | otherwise = comparer xs ys n m

main = do
    line <- getLine
    let a = map read $ words line :: [Int]
    
    line <- getLine
    let b = map read $ words line :: [Int]
    
    let result = comparer a b 0 0
    
    putStrLn $ show (head result) ++ " " ++ show (last result)
```

## Explanation
1. Create a `comparer` function which comparing and collecting the points
2. Take one line of user input as `line`
3. Convert elements of the list to `Int` as `a` equation
4. Take one line of user input as `line`
5. Convert elements of the list to `Int` as `b` equation
6. Compare `a` and `b` with `comparer` in `result` equation
7. Print the result

