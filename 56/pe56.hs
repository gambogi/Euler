-- what is the maximum digital sum of numbers a^b where a, b <100
module Pe56 where
import Data.Digits
import Data.List

main = print maxDigital
maxDigital = foldr1 max $ map sumDigits nums
sumDigits = sum . digits 10
nums = concat $ map (zipWith (^) [1..100]) $ tails [1..100]
