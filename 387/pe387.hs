-- Project Euler #387
import Data.Digits
import System.Time
import Data.Numbers.Primes
import Control.Parallel.Strategies
-- sum of digits
sumDigits n = sum (digits 10 n)

-- rTrunc
rTrunc n = unDigits 10 $ init $ digits 10 n

-- harshad number
-- divisible by sum of digits
harshad 0 = True
harshad n = n `mod` (sumDigits n) == 0

-- strong harshad number
-- divivision by sum of digits also results in a prime quocient
strongHarshad 0 = False
strongHarshad n = (harshad n) && (isPrime $ quot n (sumDigits n))

-- right trunctable harshad number
-- harshad numbers all the way down 
-- e.g. 2011 -> 201 -> 20 -> 2 
rHarshad 0 = True
rHarshad n = (harshad $ rTrunc n) && (rHarshad $ rTrunc n)

-- strong right trunctable Harshad prime
-- Prime, right trunctable harshad numbers
strongRHarshad n = (isPrime n) && (rHarshad n) && (strongHarshad $ rTrunc n) 

secDiff :: ClockTime -> ClockTime -> Float
secDiff (TOD secs1 psecs1) (TOD secs2 psecs2) 
        = fromInteger (psecs2 - psecs1) / 1e12 + fromInteger (secs2 - secs1)


main = do 
    t0<- getClockTime
    let result = sum $ takeWhile (<10^14) $ filter strongRHarshad [1, 2 ..]
    t1 <- getClockTime
    putStrLn $ "sum: "++ show result
    putStrLn $ "time: " ++ (show (secDiff t0 t1) ++"seconds")
