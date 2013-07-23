-- How many months have started on a Sunday between 1901 and 2000
import Data.Dates
start = DateTime 1901 1 1 0 0 0
addMonths n = addInterval start (Months n)
main = print $ length $ filter (==Sunday) $ map (dateWeekDay . addMonths) [1..1200]
