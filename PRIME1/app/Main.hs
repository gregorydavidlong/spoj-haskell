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

