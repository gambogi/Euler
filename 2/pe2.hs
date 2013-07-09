-- Find the sum of the even fibonacci numbers below 4 million

--naive first approach
fib n = fibs !! n
        where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)        

--Using Binet's formula
--golden ratio
f n = round $ phi ** fromIntegral n/sq5
    where
        sq5 = sqrt 5 :: Double
        phi = (1+ sq5) / 2

main = print $ sum $ filter (even) $ takeWhile (<4000000) $ (map f [1,2 ..])
