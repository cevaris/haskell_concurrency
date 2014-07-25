
--swapTriple :: (t2, t, t1) -> (t, t1, t2)
swapTriple :: (a, b, c) -> (b, c, a)
swapTriple (x,y,z) = (y,z,x)

--duplicate :: a -> (a, a)
duplicate :: t -> (t, t)
duplicate x = (x,x)

--nothing :: a -> a
nothing :: t -> Maybe a
nothing _ = Nothing

--index :: Num t => [t1] -> [(t, t1)]
index :: [(Integer, a)] -> [(Integer, (Integer, a))]
index []     = []
index [x]    = [(0,x)]
index (x:xs) = let indexed@((n,_):_) = index xs
               in  (n+1,x):indexed
--maybeA :: [t] -> Char
maybeA :: [a] -> Char
maybeA [] = 'a'