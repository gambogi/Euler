-- find the sum of all the multiples of 3 or 5 below 1000

-- Function
main = do
     let result = sum[x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
     putStr "The sum of all the multiples of 3 or 5 below 100: "
     print result
