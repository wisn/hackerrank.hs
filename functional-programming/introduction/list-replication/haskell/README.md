# List Replication in Haskell
Go to [List Replication](..) problem.

```haskell
f :: Int -> [Int] -> [Int]
f n = concatMap $ replicate n

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
```

## Explanation
1. Create a function `f` which take `Int` and list of `Int`
2. The `f` function replicate every element of the list as much as `n`
3. In the `main`, program get an input, call `f` function, and print out the result

