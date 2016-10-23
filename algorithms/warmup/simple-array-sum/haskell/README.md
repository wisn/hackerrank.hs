# Simple Array Sum in Haskell
Go to [Simple Array Sum](..) problem.

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

### Function Dictionary
#### words
```haskell
words :: String -> [String]
```
It's mean take a `String` then produce a list of `String` from it.
In another words, split string by `space`.

Example:

Take `"A B C D"` and produce `["A", "B", "C", "D"]`.

```haskell
main = do
    let alpha = "A B C D"
        list = words alpha

    print list -- > ["A", "B", "C", "D"]
```

#### read
```haskell
read :: Read a => String -> a
```
Simply, it's convert a `String` to another data type. Mostly, convert `String` to `Int`.

Example:

Take `"1"` and convert it to `1` (Int).

```haskell
main = do
    let one = read "1" :: Int

    print one -- > 1
```

#### map
```haskell
map :: (a -> b) -> [a] => [b]
```
Simply, take one by one element of the list.

Example:

Convert "abcd" to "ABCD" (uppercase).

```haskell
import Data.Char -- Needed for toUpper function

main = do
    let alpha = "abcd"
        result = map toUpper alpha
    
    print result -- > "ABCD"
```

It's mean, take one by one element of the list, then make it uppercase.
