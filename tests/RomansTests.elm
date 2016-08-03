module RomansTests exposing (..)

import Romans exposing (..)
import ElmTest exposing (..)

tests =
  suite "Roman Numerals Test"
    [ 
      test 
      "Converts 0" 
      <| assertEqual "" (Romans.convert 0)

      , test
      "Converts 1"
      <| assertEqual "I" (Romans.convert 1)

      , test
      "Converts 2"
      <| assertEqual "II" (Romans.convert 2)

      , test
      "Converts 3"
      <| assertEqual "III" (Romans.convert 3)

      , test
      "Converts 5"
      <| assertEqual "V" (Romans.convert 5)

      , test
      "Converts 6"
      <| assertEqual "VI" (Romans.convert 6)
    ]


main : Program Never
main =
  runSuite tests
