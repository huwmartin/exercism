module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Int] -> Int -> Int
sumOfMultiples [] _ = 0
sumOfMultiples (multiplier:multipliers) number =
  calculateMultiples multipliers number (totalForMultiplier multiplier (number - 1) 0)

calculateMultiples :: [Int] -> Int -> Int -> Int
calculateMultiples [] _ total = total
calculateMultiples (multiplier:multipliers) number total =
  calculateMultiples multipliers number (total + (totalForMultiplier multiplier (number - 1) 0))

totalForMultiplier :: Int -> Int -> Int -> Int
totalForMultiplier multiplier number total
  | number < multiplier = total
  | mod number multiplier == 0 = totalForMultiplier multiplier (number - 1) (total + number)
  | otherwise = totalForMultiplier multiplier (number - 1) total