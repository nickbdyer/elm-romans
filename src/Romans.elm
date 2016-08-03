module Romans exposing (convert)

import String exposing (repeat)
import Dict exposing (fromList, get)

conversions = 
  Dict.fromList [(10, "X"), (5, "V"), (1, "I")]

convert : Int -> String
convert num =
  convertRecursive num ""


convertRecursive : Int -> String -> String
convertRecursive arabic roman =
  if arabic == 0 then
    roman
  else
    let 
      nextRomanAsArabic = getHighestFactor arabic

      letter = Maybe.withDefault "" 
        <| (get (nextRomanAsArabic) conversions)
    in
      convertRecursive (arabic - (nextRomanAsArabic)) (roman ++ letter)

getHighestFactor : Int -> Int
getHighestFactor num =
  conversions
  |> Dict.keys
  |> List.filter (\x -> x <= num)
  |> List.reverse
  |> List.head
  |> Maybe.withDefault 0
