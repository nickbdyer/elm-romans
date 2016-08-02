module Romans exposing (..)

import String

convert : number -> String
convert num = 
  if num == 0 then 
      ""
  else if num == 1 then
      "I"
  else
      "V"

