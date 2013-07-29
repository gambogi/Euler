-- Find the sum of all numbers less than 10^6 which are palindromes in both 
-- base 2 and 10
import Data.Digits


palindrome:: Integer -> Bool
palindrome n = (decDigs == reverse decDigs) && (binDigs == reverse binDigs)
    where decDigs = digits 10 n
          binDigs = digits 2  n
main = print $ sum $ filter palindrome [1..10^6]
