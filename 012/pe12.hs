-- What is the value of the first triangle number to have over 500 divisors
import Data.Digits

--main = print $ head $ filter (\n-> ((length . factors . sum) [1..n]) > 5) [1..]
main = print $ head [x | x <- map (\n-> sum [1..n]) [1..], (length . factors) x > 500]
    where factors n = filter (\x-> n `mod` x == 0) [1..n]
