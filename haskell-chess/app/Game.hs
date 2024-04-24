module Game where

score :: Int
score = 0


newtype Game = Game {
    score :: Int
} deriving (Show)

runGame :: Game -> Game

genPawns :: Integer [Piece]
genPawns n = [
    Piece Pawn (0,n) | _ <- [1..n]]

let piece_map = Data.Map.fromList ( [
   (Pawn, O),
    (Rook, 1),
    (Knight, 2),
    (Bishop, 3),
    (Queen, 4),
    (King, 5)
])
--generate each piece by mapping the number to the piece type
genOtherPieces :: Integer -> Map k a -> [Piece]
genOtherPieces n m = 
    | n > O = 
        genOtherPiece n-1 m
    | otherwise = 
    m.findWithDefault(Pawn n m)


let pieces = [Piece Pawn (0,0)]