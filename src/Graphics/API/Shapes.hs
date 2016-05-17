module Graphics.API.Shapes where

import           Control.Lens
import           Data.Binary  (Binary)
import           GHC.Generics (Generic)

data Square = Square { _s :: Int } deriving (Show, Eq, Generic)

data Rectangle = Rectangle { _w :: Int
                           , _h :: Int
                           } deriving (Show, Eq, Generic)

data Circle = Circle { _d :: Int } deriving (Show, Eq, Generic)

makeLenses ''Square
makeLenses ''Rectangle
makeLenses ''Circle

instance Binary Square
instance Binary Rectangle
instance Binary Circle
