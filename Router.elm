module Router exposing (..)
import Navigation
import String

type alias Model =
  {route: String}

type Msg 
  = ClientPath
  | IndexPath

toUrl : String -> String
toUrl parsedpath =
  "#/" ++ toString parsedpath

fromUrl : String -> String
fromUrl url = 
  toString (String.dropLeft 2 url)

urlParser : Navigation.Parser  String
urlParser = 
  Navigation.makeParser (fromUrl << .hash)

    
      

