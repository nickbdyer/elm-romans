module RomansTests exposing (..)

import Romans exposing (..)
import ElmTest exposing (..)

tests =
    suite "Roman Numerals Test"
        [ test "converts0" (assertEqual "" (Romans.convert 0))
        ]

main : Program Never
main =
    runSuite tests
