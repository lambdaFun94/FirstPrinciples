module Vehicles where 

data Price = Price Integer deriving (Eq, Show)

data Manufacturer = Mazda | Mini | Tata deriving (Eq, Show)

data Airline = PapuAir | CatapultsRus | TakeYourChancesUnited deriving (Eq, Show)

data Size = Size Integer deriving (Eq, Show)

data Vehicle = Car Manufacturer Price
             | Plane Airline Size
             deriving (Eq, Show) 

myCar = Car Mini (Price 13408)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir (Size 10000)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _         = False

isPlane :: Vehicle -> Bool
isPlane (Plane _  _) = True
isPlane _         = False

areCars :: [Vehicle] -> [Bool]
areCars = map isCar

getManu :: Vehicle -> Manufacturer
getManu (Car x y) = x 
