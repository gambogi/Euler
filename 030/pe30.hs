-- Project Euler #30
-- Find the sum of all the numbers that can be written as the sum of fifth
-- powers of their digits.

import Data.Digits

test n = n == (sum $ map (\x->x^5) (digits 10 n))

main = print $ sum $ filter test [2..1000000]
