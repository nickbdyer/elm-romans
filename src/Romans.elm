module Romans exposing (..)

import String
import Dict exposing (fromList, get)

digits = fromList [(1, "I"), (5, "V"), (10, "X")]

convert : number -> String
convert num = 
    Maybe.withDefault "" (get num digits)

