module RomansTests exposing (..)

import Romans exposing (..)
import ElmTest exposing (..)

tests =
    suite "Roman Numerals Test"
        [ 
          test "Converts 0" 
          <| assertEqual "" (Romans.convert 0)

        , test "Converts 1" 
          <| assertEqual "I" (Romans.convert 1)


        ]


main : Program Never
main =
    runSuite tests
