-- What is the 10001st prime number?

primes = [n | n<-[2..], not $ elem n [j*k | j<-[2..n-1], k<-[2..n-1]]]
main = print $ primes !! 10001
