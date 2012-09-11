{-# LANGUAGE TypeFamilies, GADTs #-}

module GADT5 where

data T a where
  T :: T (a,b)
  -- this works:
  -- T :: p ~ (a,b) => T p

type family F a

bar :: T (F a) -> ()
bar T = ()

