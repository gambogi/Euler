-- Find the largest palindrome made from the product of two 3-digit numbers --
import Data.Digits
import Data.List

palindrome :: Integer -> Bool
palindrome n = ds == reverse ds
    where ds = digits 10 n

multiples xs = sort $ concat $ map (zipWith (*) xs) $ tails xs

main = print $ last $ filter palindrome $ multiples [100 .. 999]
