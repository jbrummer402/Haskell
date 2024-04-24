module Piece where 

data PieceType = Pawn | Rook | Knight | Bishop | Queen | King
deriving (Enum)

type Space = (Integer, Integer)

data Piece = Piece PieceType Space


instance Enum PieceType where
    succ Pawn = "P"
    succ Rook = "R"
    succ Knight = "N"
    succ Bishop = "B"
    succ Queen = "Q"
    succ King = "K"