-- Find the first fibonacci number with 100 digits
module PE25 where
import Data.Digits

--Using Binet's formula
--golden ratio
f n = round $ phi ** fromIntegral n/sq5
    where
        sq5 = sqrt 5 :: Double
        phi = (1+ sq5) / 2

grandFibs = filter (\x -> 1000 == length x) $ map (digits 10 . f)  [1000000..]

main = print $ unDigits 10 $ head grandFibs
