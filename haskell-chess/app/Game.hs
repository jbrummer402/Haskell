module Game where

score :: Int
score = 0

newtype Game = Game {
    score :: Int
} deriving (Show)