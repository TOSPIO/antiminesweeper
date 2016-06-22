module AntiMinesweeper.Block where

import Prelude
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as RDOM
import Thermite as T

data Action = Sweep

type State = { isRevealed :: Boolean, isMine :: Boolean }

initialState :: State
initialState = { isRevealed: false, isMine: false }

render :: T.Render State _ Action
render dispatch _ state _ =
  [
    R.div [ RP.className (getClassName state) ] []
  ]
  where
    getClassName :: State -> String
    getClassName { isRevealed, isMine }
      | isRevealed = "unrevealed"
      | isMine = "mine"
      | otherwise = "empty"

performAction :: T.PerformAction _ State _ Action
performAction Sweep _ _ update = update $ \state -> state { isRevealed = true }

spec :: T.Spec _ State _ Action
spec = T.simpleSpec performAction render
