-- Project Euler #21
-- Evaluate the sum of all the amicable numbers <10000
import Data.List

--combos :: (a -> a-> b) -> [a] -> [b]
--combos f xs = concatMap (zipWith f xs) $ tails xs

properDivisors :: Int -> [Int]
properDivisors n  = filter (divides n) [1..(n`div`2)]
    where divides a b = a`mod`b == 0

amicable :: Int -> Bool
amicable a = d (d a) == a
    where d = sum . properDivisors

main = print $ sum $ filter amicable [1..9999]
