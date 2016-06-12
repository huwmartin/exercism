module Accumulate (accumulate) where

accumulate :: (a -> b) -> [a] -> [b]
accumulate _ [] = []
accumulate function (head:tail) = function head:accumulate function tail