module Docs exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main =
    div [ class "max-w-lg m-auto p-12 space-y-4" ]
        [ p [ class "text-3xl text-blue-800" ]
            [ text "Hi! You could use dtwrks/elm-book to create some docs here." ]
        , p [ class "text-blue-600" ]
            [ text "The custom elements are also available – take a look:" ]
        , node "custom-element" [] []
        , node "svelte-element" [] []
        ]
