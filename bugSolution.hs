```haskell
import Data.List (sort)

isSorted :: Ord a => [a] -> Bool
isSorted [] = True
isSorted [x] = True
isSorted (x:y:xs) = x <= y && isSorted (y:xs)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = if isSorted xs then xs else sort xs
  print ys
```
This improved version includes the `isSorted` function. This function efficiently checks if the input list is already sorted. The main function now uses a conditional expression to apply `sort` only if the list is not already sorted. This optimization significantly improves performance when working with frequently sorted lists.