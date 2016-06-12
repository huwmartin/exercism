module LeapYear (isLeapYear) where

isLeapYear :: Int -> Bool
isLeapYear y
	| divisible 400 = True
	| divisible 100 = False
	| divisible 4   = True
	| otherwise     = False
	where divisible x = y mod x == 0


let leap_year year =>
| year mod 400 = true
| year mod 100 = false
| year mod 4 = true