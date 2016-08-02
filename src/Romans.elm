module Romans exposing (convert)

import String exposing(repeat)


convert : Int -> String
convert num =
    repeat num "I"
