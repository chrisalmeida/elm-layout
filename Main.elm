import Html exposing (..)
import Html.App as Html
import View exposing (layout)

type alias Model = 
    {num : Int}

type Msg 
  = Sure

model : Model    
model = 
    {num = 0}

view : Model -> Html Msg
view model = 
    div [ ] [View.layout]

update : Msg -> Model -> Model
update msg model =
    case msg of
        _ -> {model | num = 1}


main =
    Html.beginnerProgram
    {model = model
    ,update = update
    ,view = view
    }
