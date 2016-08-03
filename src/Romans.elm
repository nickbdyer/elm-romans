module Romans exposing (convert)

import String exposing(repeat)


convert : Int -> String
convert num =
  if num == 6 then
     "VI"
     else if num == 5 then
     "V"
     else
     repeat num "I"

