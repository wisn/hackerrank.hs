# A Very Big Sum in Haskell
Go to [A Very Big Sum](..) problem.

```haskell
main = do
    _ <- getLine
    line <- getLine
    
    let array = map read $ words line :: [Int]
        result = sum array
        
    print result
```

## Explanation
1. Ignore first input from user. `_` read as `hole` or `just ignore`
2. Take one line input from user as `line`
3. Convert elements of the list to `Int` as `array` equation
4. Sum `array` equation. It's mean sum all elements of the list
5. Print `result` equation

