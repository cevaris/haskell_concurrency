import Data.Char

data Client = GovOrg  { clientName :: String }
            | Company { clientName :: String,
                        id :: Integer,
                        person :: Person,
                        duty :: String }
            | Individual { person :: Person }
            deriving Show
data Person = Person { firstName :: String,
                       lastName :: String }
                       deriving Show

--capitalizeName :: Person -> Person
--capitalizeName p@(Person { firstName = x:xs }) = let newName = (toUpper x):xs
--                                                 in p {firstName = newName }
--capitalizeName p@(Person {firstName = ""}) = p

capitalizeName :: Person -> Person
capitalizeName p@(Person { firstName = x:xs }) = p { firstName = (toUpper x):xs }
capitalizeName p@(Person {firstName = ""}) = p
