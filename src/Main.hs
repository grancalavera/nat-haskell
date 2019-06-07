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
toInt (Succ n) = 1 + toInt n

fromInt :: Int -> Maybe Nat
fromInt i
  | i < 0 = Nothing
  | otherwise = Just $ foldr (const Succ) Zero [0..(i-1)]
