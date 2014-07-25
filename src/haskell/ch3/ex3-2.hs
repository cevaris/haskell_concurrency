filterOnes :: (Num a, Eq a) => [a] -> [a]
filterOnes l  = filter (\x -> x == 1) l

filterN :: (Num a, Eq a) => [a] -> a -> [a]
filterN l a = filter (\x -> x == a) l

filterNot :: (Num a, Eq a) => [a] -> (a -> Bool) -> [a]
filterNot l f = filter (\x -> not $ f x) l