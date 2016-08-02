module Romans exposing (..)

import Dict exposing (fromList, get)

digits = fromList [(1, "I"), (5, "V"), (10, "X"), (4, "IV"), (9, "IX")]

convert : Int -> String
convert num = 
  if num == 0 then
     ""
  else
    let
        nextLetter = getLargestRomanFactor num

        letter = 
          Maybe.withDefault "" 
          <| get nextLetter digits
    in
        letter ++ convert(num - nextLetter)


getLargestRomanFactor : Int -> Int
getLargestRomanFactor num =
  digits
  |> Dict.keys
  |> List.filter (\x -> x <= num)
  |> List.reverse
  |> List.head
  |> Maybe.withDefault 0
