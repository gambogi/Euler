import Data.List

div20 n = all (divides n) [1..20]
    where divides x y = x`mod`y == 0

main = print $ head $ filter div20 [20..]
