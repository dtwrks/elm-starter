module Main exposing (main)

import Browser exposing (application)
import Browser.Navigation as Nav
import Html exposing (Html, div, node, text)
import Html.Attributes exposing (class)
import Ports
import Url exposing (Url)



-- Model


type alias Flags =
    ()


type alias Model =
    { navKey : Nav.Key
    , value : Int
    }


init : Flags -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags_ url_ navKey =
    ( { navKey = navKey
      , value = 0
      }
    , Ports.init ()
    )


type Msg
    = NoOp
    | Increase


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        Increase ->
            ( { model | value = model.value + 1 }, Cmd.none )



-- View


view : Model -> Browser.Document msg
view _ =
    { title = "Dtwrks Starter - Elm"
    , body =
        [ div
            [ class "p-8" ]
            [ text "Elm + Tailwind + Typescript + Custom elements" ]
        , node "my-custom-element" [ class "p-8 pt-0" ] []
        ]
    }



-- Main


main : Program Flags Model Msg
main =
    application
        { init = init
        , view = view
        , update = update
        , subscriptions = \model -> Sub.none
        , onUrlRequest = \urlRequest -> NoOp
        , onUrlChange = \url -> NoOp
        }
