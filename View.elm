module View exposing (..)
import Html exposing (div, text, h1, p, h4)

layout = 
    div [] [ div[] [ header ]
    , div [] [ body ]
    , div [] [ footer ]
    ]

header =
    h1 [] [ text "I am a Header" ]
    
body = 
    p [] [ text "Layout Body" ]
    
footer = 
    h4 [] [ text "I am a footer" ]
