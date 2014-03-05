module Main where

import Prelude hiding(Just)
import System.Environment(getArgs)

data FizzBuzz = FizzBuzz | Fizz | Buzz | Just Int deriving(Show)

fizzBuzz :: Int -> FizzBuzz
fizzBuzz n
    | n `mod` 3  == 0 &&
      n `mod` 5  == 0 = FizzBuzz
    | n `mod` 3  == 0 = Fizz
    | n `mod` 5  == 0 = Buzz
    | otherwise       = Just n

fizzBuzzs :: [FizzBuzz]
fizzBuzzs = map fizzBuzz [1..]

main :: IO ()
main = do
    [n] <- getArgs
    mapM_ print $ take (read n) fizzBuzzs

