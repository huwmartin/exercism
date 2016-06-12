module DNA (toRNA) where

toRNA :: String -> String
toRNA = map transcribe

transcribe :: Char -> Char
transcribe 'C' = 'G'
transcribe 'G' = 'C'
transcribe 'T' = 'A'
transcribe 'A' = 'U'
transcribe char = error ("Not a valid nucleotide: " ++ [char])