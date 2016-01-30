module Data.Base where

import Prelude


type family Base a :: *


type family Bases a where Bases '[]       = '[]
                          Bases (a ': as) = Base a ': Bases as

--type family MatchedBase bases a :: Maybe * where
--    MatchedBase (b ': bs) a = If (Base b :== Base a) ('Just b) (MatchedBase bs a)
--    MatchedBase '[]       a = 'Nothing


--type instance Base (Maybe a) = Proxy Maybe
