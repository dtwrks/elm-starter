module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main =
    div [ class "max-w-lg m-auto p-12 space-y-4" ]
        [ h1 [ class "text-3xl" ]
            [ text "This would be your main application." ]
        , p [ class "text-gray-600" ]
            [ text "The custom elements are also available – take a look:" ]
        , node "custom-element" [] []
        , node "svelte-element" [] []
        ]
