data Movimento = Norte | Sul | Este | Oeste deriving Show

posicao :: (Int,Int) -> [Movimento] -> (Int,Int)
posicao p [] = p
posicao (x, y) (Norte:t) = posicao (x, y + 1) t
posicao (x, y) (Sul:t) = posicao (x, y - 1) t
posicao (x, y) (Este:t) = posicao (x + 1, y) t
posicao (x, y) (Oeste:t) = posicao (x - 1, y) t

hasLoops :: (Int,Int) -> [Movimento] -> Bool
hasLoops _ [] = False
hasLoops posi movs = posi == posicao posi movs || hasLoops posi (init movs)