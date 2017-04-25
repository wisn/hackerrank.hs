rangeList a b xs = take (b - a + 1) (drop a xs)

getTime [] = []
getTime (x:xs)
  = if x == ':'
      then " " ++ getTime xs
      else [x] ++ getTime xs

handleMinSec time
  = if time < 10
      then "0" ++ (show $ time)
      else show $ time

main = do
  line <- getLine
  let time = map read $ words (getTime $ rangeList 0 7 line) :: [Int]
      format = getTime $ rangeList 8 9 line

      hours
        = if format == "PM"
            then if (time !! 0) < 12
              then show $ (time !! 0) + 12
              else show $ (time !! 0)
            else if (time !! 0) < 12
              then "0" ++ (show $ time !! 0)
              else "00"

      minutes = handleMinSec (time !! 1)
      seconds = handleMinSec (time !! 2)


  putStrLn (hours ++ ":" ++ minutes ++ ":" ++ seconds)

