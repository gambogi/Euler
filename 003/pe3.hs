-- What is the largest prime factor of the number 600851475143?
num = 600851475143

primes = 2 : filter ((==1) . length . primeFactors) [3,5..]

primeFactors n = factor n primes
    where 
        factor n (p:ps)
            | p*p > n       = [n]
            | n `mod` p == 0 = p : factor (div n p) (p:ps)
            | otherwise     = factor n ps
                
main = print $ last $ primeFactors num 
