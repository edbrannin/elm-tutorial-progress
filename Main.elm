module Main (..) where


import Html
import Mouse

view: Int -> Int -> Int -> Html.Html
view x y clicks =
  Html.text ((toString x) ++ " " ++ (toString y) ++ " " ++ (toString clicks))

accu : () -> Int -> Int
accu _ state = state + 1

countSignal = Signal.foldp accu 0 Mouse.clicks

main : Signal.Signal Html.Html

main =
  Signal.map3 view Mouse.x Mouse.y countSignal



