-- What is the sum of the digits of the number 2^1000
import Data.Digits
main = print $ sum $ digits 10 (2^1000)
