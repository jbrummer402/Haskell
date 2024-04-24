module Piece where 

data PieceType = Pawn | Rook | Knight | Bishop | Queen | King
deriving (Enum)

type Space = (Integer, Integer)

data Piece = Piece PieceType Space


