import Data.List
import Data.Digits
main = print $ unDigits 10 $ sort (permutations [0..9]) !! (10^6 - 1)
