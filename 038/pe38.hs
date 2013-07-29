import Data.Digits
import Data.List
pandigital b = b^(b-1) + foldr 0 (\d -> d*b^(b-1-d)) [2..(b-1)]

main = print pandigital 2
