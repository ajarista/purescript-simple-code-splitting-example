module Component.Lazy where

import Control.Applicative (pure)
import Control.Bind (bind, discard)
import Data.Unit (Unit)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)
import Effect.Class (liftEffect)

foreign import clog :: forall x. x -> Effect Unit
foreign import debug :: Effect Unit

foreign import importHome_ :: EffectFnAff {test :: Effect Unit}

importHome :: Aff {test :: Effect Unit}
importHome = do
  home <- fromEffectFnAff importHome_
  liftEffect (clog home)
  pure home
