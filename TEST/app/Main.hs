module Main where

-- import Lib

main :: IO ()
main = interact f
  where f = unlines . takeWhile (/= "42") . words
