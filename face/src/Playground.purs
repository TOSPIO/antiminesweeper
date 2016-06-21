module Playground where

import Prelude
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as RDOM
import Thermite as T

data Action = Sweep { coord :: (Int, Int) }
