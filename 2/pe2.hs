-- Find the sum of the even fibonacci numbers below 4 million
fib n = fibs !! n
        where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)        
main = do
    print $ sum $ filter (even) $ takeWhile (<4000000) $ (map fib [1,2 ..])
