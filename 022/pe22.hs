-- Project Euler #22
--module PE22
--where

import System.IO
import Control.Monad
import Data.List
import Data.String.Utils
import Data.Char

score :: [Char] -> Int
score "" = 0
score a = sum $ map alphaOrd a

alphaOrd :: Char -> Int
alphaOrd ch = (ord ch) - 64

main = do
    handle <- openFile "names.txt" ReadMode
    contents <- hGetContents handle
    let names = sort $ filter (\s->s/="," && s/="") $ split "\"" contents
    print $ sum $ zipWith (*) [1,2..] $ map score names
    hClose handle
