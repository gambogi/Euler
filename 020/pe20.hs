-- find the sum of the digits in the number 100!
import Data.Digits
main = print $ sum $ digits 10 $ factorial 100

factorial n
    | n == 1     = n
    | otherwise = n * factorial $ n-1
