module Romans exposing (convert)

import String exposing(repeat)


convert : Int -> String
convert num =
  convertRecursive num ""


convertRecursive : Int -> String -> String
convertRecursive arabic roman =
  if arabic >= 10 then
    convertRecursive (arabic - 10) (roman ++ "X")
  else if arabic >= 5 then
    convertRecursive (arabic - 5) (roman ++ "V")
  else
    roman ++ (repeat arabic "I")
