module Block where

import Thermite as T
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as RDOM

import Data.Maybe

data Action = Sweep

type State = { isRevealed :: Maybe Bool, isMine :: Maybe Bool }

initialState :: State
initialState = { isRevealed: undefined, isMine: undefined }

render :: T.Render State _ Action
render dispatch _ state _ =
