module Main where

main :: IO ()
main = do
  putStrLn "hello world"

data Nat = Zero | Succ Nat deriving (Show, Eq)

zero = Zero
one = Succ Zero
two = Succ one
three = Succ two
four = Succ three
five = Succ four

toInt :: Nat -> Int
toInt Zero = 0
toInt (Succ x) = 1 + toInt x

fromInt :: Int -> Maybe Nat
fromInt i
  | i < 0 = Nothing
  | otherwise = Just $ fromInt' i
  where
    fromInt' 0 = Zero
    fromInt' i' = Succ $ fromInt' (i' - 1)

plus :: Nat -> Nat -> Nat
plus x Zero = x
plus Zero x = x
plus (Succ x) y = Succ (plus x y)

times :: Nat -> Nat -> Nat
times _ Zero = Zero
times Zero _ = Zero
times (Succ x) z@(Succ y) = Succ (y `plus` (x `times` z))

instance Ord Nat where
  compare Zero Zero = EQ
  compare Zero _ = LT
  compare _ Zero = GT
  compare (Succ x) (Succ y) = compare x y
