module RomansTests exposing (..)

import Romans exposing (..)
import ElmTest exposing (..)

tests =
    suite "Roman Numerals Test"
        [ 
          test "Converts 0" 
          <| assertRomans "" 0

        , test "Converts 1" 
          <| assertRomans "I" 1

        , test "Converts 5"
          <| assertRomans "V" 5

        , test "Converts 10"
          <| assertRomans "X" 10

        , test "Converts 4"
          <| assertRomans "IV" 4

        , test "Converts 9"
          <| assertRomans "IX" 9

        , test "Converts 2"
          <| assertRomans "II" 2

        , test "Converts 2"
          <| assertRomans "II" 2

        , test "Converts 28"
          <| assertRomans "XXVIII" 28
        ]

assertRomans : String -> Int -> Assertion
assertRomans roman arabic =
  assertEqual roman (Romans.convert arabic)


main : Program Never
main =
    runSuite tests
