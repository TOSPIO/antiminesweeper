module AntiMinesweeper.Playground where

import Prelude
import Data.Tuple
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as RDOM
import Thermite as T

import AntiMinesweeper.Block as B

data Action = Sweep { coord :: Tuple Int Int }

type State = {
  blocks :: Array Int
}
