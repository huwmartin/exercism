module Sublist (Sublist(Equal, Sublist, Superlist, Unequal), sublist) where

import Data.List (isInfixOf)

data Sublist = Sublist | Equal | Superlist | Unequal deriving (Eq, Show)

sublist :: Eq a => [a] -> [a] -> Sublist
sublist first second
  | first == second = Equal
  | isInfixOf first second = Sublist
  | isInfixOf second first = Superlist
  | otherwise = Unequal