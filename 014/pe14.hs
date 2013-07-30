-- Project Euler #14
-- Longest Collatz sequence
import Data.List
import Data.Array

collatzSeq :: Integer -> [Integer]
collatzSeq 1 = []
collatzSeq n = n:[collatz n]
    where collatz n
            | even n = n`div`2
            | odd  n = 3*n+1

main = print $ maximum $ map (length . collatzSeq) [1..1000000]
