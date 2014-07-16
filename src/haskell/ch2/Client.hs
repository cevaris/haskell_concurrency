data Client = GovOrg     String
            | Company    String Integer Person String
            | Individual Person Bool
            deriving Show

data Person = Person String String Gender
            deriving Show

-- Add a Gender argument to Person and make it Show able.
data Gender = Male | Female | None
            deriving (Show, Eq)

-- Create new values of the new Client data types with the enhanced definition we worked throughout this section.
-- :t Individual (Person "Hello" "World") Male



{- 
You have learned how to define new data types, so it’s time to look at other types that could be useful for our Time Machine Store. Time machines are defined by its manufacturer, its model (which is an integer), its name, whether they can travel to the past and to the future and a price (which can be represented as a floating-point number). Define a TimeMachine data type holding that information. Try to use more than one ADT to structure the values.
-}

data Machine = TimeMachine Manufacturer Int String MachineType Price
             deriving Show

data Manufacturer = String 
                  deriving Show

data MachineType = Past | Future
                 deriving Show

data Price = Float
           deriving Show

-- clientName (Individual (Person "Jimmy" "John" Male) False)
clientName :: Client -> String
clientName client = case client of
                    GovOrg name -> name
                    Company name id person position -> name
                    Individual person ads -> 
                        case person of Person fName lName gender -> fName ++ " " ++ lName


clientName2 :: Client -> String
clientName2 client = case client of
                    GovOrg name -> name
                    Company name _ _ _  -> name
                    Individual (Person fName lName _) _ -> fName ++ " " ++ lName


clientName3 :: Client -> Maybe String
clientName3 client = case client of
                    GovOrg name -> Just name
                    Individual (Person fName lName _) _ -> Just (fName ++ " " ++ lName)
                    _                                   -> Nothing


-- For statistical purposes, write a function that returns the number of clients of each gender. You may need to define an auxiliary data type to hold the results of this function.

sum2 :: (Num a) => ([a], [a]) -> (a, a)
sum2 (x,y) = (sum(x), sum(y))

countGender :: (Num a) => [Person] -> (a, a)
countGender list = sum2 (unzip[ (if gender == Male then 1 else 0, 
                                  if gender == Female then 1 else 0) | 
                                (Person fName lName gender) <- list ])


-- Every year a time comes when time machines are sold with a big discount to encourage potential buyers. Write a function that given a list of time machines, decreases their price by some percentage. Use the TimeMachine data type you defined in the previous set of exercises.


