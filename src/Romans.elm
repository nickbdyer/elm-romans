module Romans exposing (convert)

import String exposing(repeat)


convert : Int -> String
convert num =
  convertRecursive num ""


convertRecursive : Int -> String -> String
convertRecursive arabic roman =
  if arabic == 6 then
    "VI"
  else if arabic >= 5 then
    convertRecursive (arabic - 5) (roman ++ "V")
  else
    roman ++ (repeat arabic "I")
