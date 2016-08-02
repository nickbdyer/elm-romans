module Romans exposing (convert)

import String exposing(repeat)


convert : Int -> String
convert num =
  if num == 3 then
     repeat 3 "I"
  else if num == 2 then
     repeat 2 "I"
     "II"
  else if num == 1 then
     repeat 1 "I"
  else
    ""
