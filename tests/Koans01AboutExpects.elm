module Koans01AboutExpects exposing (testSuite)

-- Single line comments begin with "--"
{- Multi line comments
   begin with "{-" and end with "-}"
-}
-- modules are named the same as their file name
-- and list what members they publicly expose
-- Other module names are referenced with `import`s

import Expect


-- members from other modules can be individually exposed within this module

import Utils.Test exposing (describe, test)


-- or you may expose all the members of another module

import Utils.Blank exposing (..)

add : number -> number -> number
add x y = x + y
testSuite =
    -- `describe` takes the suite description and a list of `Test`s
    describe "About Expects"
        [
          test "it can add 0 twice and return 0" <|
              \_ ->
              (add 0 0) |>
                  Expect.equal(0),
          test "it can add 1 and 0" <|
              \_ ->
              (add 1 0) |>
                  Expect.equal(1),
          test "it can add 1 and 1" <|
              \_ ->
              (add 1 1) |>
                  Expect.equal(2),
          test "it can only accept numbers" <|
              \_ ->
              (add 1 1) |>
                  Expect.equal(2)
        ]
