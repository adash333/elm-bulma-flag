module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, a, br, div, figure, footer, h1, img, input, li, p, section, table, td, text, tr, ul)
import Html.Attributes exposing (class, href, placeholder, src, style, type_, value)
import Html.Events exposing (onClick)



---- PROGRAM ----


main : Program Int Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MODEL


type alias Model =
    { times : Int }


init : Int -> ( Model, Cmd msg )
init flags =
    ( { times = flags }, Cmd.none )



-- UPDATE


type Msg
    = NoMessage


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ section [ class "hero is-primary" ]
            [ div [ class "hero-body" ]
                [ div [ class "container" ]
                    [ h1 [ class "title" ] [ text "Hello World! for 4 times" ]
                    ]
                ]
            ]
        , section [ class "section" ]
            [ div [ class "container" ]
                [ section []
                    [ figure [ class "image container is-128x128" ]
                        [ img [ src "./logo.svg" ] []
                        ]
                    ]
                ]
            ]
        , section [ class "section" ]
            [ div [ class "container" ]
                [ ul [ class "list is-hoverable" ]
                    (List.repeat model.times
                        (li [ class "list-item" ] [ text "Hello World!" ])
                    )
                ]
            ]
        , footer [ class "footer" ]
            [ div [ class "content has-text-centered" ]
                [ p []
                    [ a [ href "http://i-doctor.sakura.ne.jp/font/?p=37457" ] [ text "WordPressでフリーオリジナルフォント2" ]
                    ]
                ]
            ]
        ]
