import Html exposing (..)
import Html.App as Html
import View exposing (layout)
import Router
import Navigation

type alias Model =
  {route: String}

model : Model
model =
  {route = ""}

init : String -> (Model, Cmd Msg)
init result = 
  urlUpdate result model

type Msg 
  = ClientPath
  | IndexPath

view : Model -> Html Msg
view model = 
    div [ ] [View.layout, div [] [ text (toString model)]]


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        _ -> (model, Cmd.none)

urlUpdate : String -> Model -> (Model, Cmd Msg)
urlUpdate result model = 
  ({ model | route = result }, Cmd.none)

main =
    Navigation.program Router.urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = (\_-> Sub.none)
    }
