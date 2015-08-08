module Main where

import Lib

main :: IO ()
main = do
  numLinesStr <- getLine
  let numLines = parseNumLines numLinesStr
  input <- fmap (take numLines . lines) getContents
  let primeRanges = map getRange input
  let primes = map getPrimesInRange primeRanges
  mapM_ (mapM_ (putStrLn . show)) primes

parseNumLines :: String -> Int
parseNumLines numLinesStr = read numLinesStr

getRange :: String -> [Int]
getRange input = map read (words input)

getPrimesInRange :: [Int] -> [Int]
getPrimesInRange (x:y:_) = filter isPrime [x..y]

isPrime :: Int -> Bool
isPrime x = not (any (\y -> (rem x y) == 0) [2..(x-1)])
