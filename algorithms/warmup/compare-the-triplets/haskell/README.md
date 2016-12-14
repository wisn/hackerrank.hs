# Compare the Triplets in Haskell
Go to [Compare the Triplets](..) problem.

```haskell
main = do
    line <- getLine
    let a = map read $ words line :: [Int]
    line <- getLine
    let b = map read $ words line :: [Int]

    let pairs  = zipWith (-) a b
        scoreA = length $ filter (> 0) pairs
        scoreB = length $ filter (< 0) pairs

    putStrLn $ (show scoreA) ++ " " ++ (show scoreB)
```

## Explanation
1. Take one line of user input as `line`
2. Convert elements of the list to `Int` as `a` equation
3. Take one line of user input as `line`
4. Convert elements of the list to `Int` as `b` equation
5. Do subtraction to `a` and `b` list
6. For every number from `pairs`, if it's `> 0`, then it's a score for Alice
7. For every number from `pairs`, if it's `< 0`, then it's a score for Bob
8. Print the result. `scoreA` for Alice, and `scoreB` for Bob
