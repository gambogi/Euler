-- Sum of squares of unitary divisors
module Pe429 where

unitaryDivisor n d = gcd(d, n/d) == 1 && n `mod` d == 0

fac :: Int -> Int
fac n = product [1..n]
