-- Given a^2 + b^2 = c^2
-- Given a + b + c = 1000
-- Find a*b*c

main = print (head [ a*b*c | c <- [1..], b <- [1..c], a <- [1..b], (a**2 + b**2 == c**2) && (sum [a,b,c] == 1000)])
