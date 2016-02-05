module Main (..) where


import Html
import Mouse

view: Int -> Int -> Html.Html
view x y =
  Html.text ((toString x) ++ " " ++ (toString y))

main : Signal.Signal Html.Html

main =
  Signal.map2 view Mouse.x Mouse.y



