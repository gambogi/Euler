-- What is the 10001st prime number?
import Data.List
primes = 2 : unfoldr (\(x:xs)-> Just(x, filter ((> 0).(`rem`x)) xs)) [3,5..]
main = print $ sum $ takeWhile (<2*10^6) primes
