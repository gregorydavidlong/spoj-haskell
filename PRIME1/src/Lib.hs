module Lib
    ( parseNumLines,
      getRange,
      getPrimesInRange,
      isPrime
    ) where

parseNumLines :: String -> Int
parseNumLines numLinesStr = read numLinesStr

getRange :: String -> (Int, Int)
getRange input = (x, y) where
	(x:y:_) = map read (words input)

getPrimesInRange :: (Int, Int) -> [Int]
getPrimesInRange (x,y) = filter isPrime [x..y]

numbersToCheckAgainst :: Int -> [Int]
numbersToCheckAgainst x = [2 .. (ceiling (sqrt (fromIntegral x)))]

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime x = not (any (\y -> (rem x y) == 0) (numbersToCheckAgainst x))
