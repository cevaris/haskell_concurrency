filterOnes :: (Num a, Eq a) => [a] -> [a]
filterOnes l  = filter (\x -> x == 1) l

filterN :: (Num a, Eq a) => [a] -> a -> [a]
filterN l a = filter (\x -> x == a) l

filterNot :: (Num a, Eq a) => [a] -> (a -> Bool) -> [a]
filterNot l f = filter (\x -> not $ f x) l




data Client = GovOrg     String
            | Company    String Integer Person String
            | Individual Person Bool
            deriving Show

data Person = Person String String Gender
            deriving Show

-- Add a Gender argument to Person and make it Show able.
data Gender = Male | Female | None
            deriving (Show, Eq)

isGovOrg :: Client-> Bool
isGovOrg (GovOrg name) = True
isGovOrg _      = False

--clientName :: Client -> String
--clientName client = case client of
--                    GovOrg name -> name
--                    Company name id person position -> name
--                    Individual person ads -> 
--                        case person of Person fName lName gender -> fName ++ " " ++ lName