#!/bin/sh
elm-make tests/RomansTests.elm --yes --output tests.js && node tests.js

