module Home where

import Data.Unit (Unit)
import Effect (Effect)
import Effect.Class.Console as Console

test :: Effect Unit
test = Console.log "TEST FROM PURESCRIPT!"
