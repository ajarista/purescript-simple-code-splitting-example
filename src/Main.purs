module Main where

import Prelude

import Component.Lazy (importHome)
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)

main :: Effect Unit
main = launchAff_ do
  home <- importHome
  liftEffect home.test
