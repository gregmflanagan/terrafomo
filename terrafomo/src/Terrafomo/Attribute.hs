{-# LANGUAGE DeriveFunctor     #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}

module Terrafomo.Attribute
    ( Attr (..)
    , compute
    , flatten
    , attr
    , nil
    , true
    , false
    ) where

import Data.Hashable (Hashable)
import Data.Monoid   ((<>))
import Data.String   (IsString (fromString))

import GHC.Generics (Generic)

import Terrafomo.Name

-- | An argument is either a computed attribute of another terraform resource
-- or data source, a constant value, or nil.
data Attr s a
    = Compute  !Key !Name !Name -- ^ A computed @TYPE.NAME.FIELD@ attribute.
    | Flatten  ![Attr s a]      -- ^ A flattened comma-seperated list of attributes.
    | Constant !a               -- ^ A constant Haskell-value.
    | Nil
      deriving (Show, Eq, Generic)

instance Hashable a => Hashable (Attr s a)

instance IsString a => IsString (Attr s a) where
    fromString = attr . fromString

compute :: Key -> Name -> Attr s a
compute k v = Compute k v (Name (typeName (keyType k) <> "_" <> fromName v))
{-# INLINE compute #-}

flatten :: [Attr s a] -> Attr s a
flatten = Flatten
{-# INLINE flatten #-}

-- | Supply a constant Haskell value as an attribute. Equivalent to 'Just'.
attr :: a -> Attr s a
attr = Constant
{-# INLINE attr #-}

-- | Omit an attribute. Equivalent to 'Nothing'.
nil :: Attr s a
nil = Nil
{-# INLINE nil #-}

true :: Attr s Bool
true = Constant True
{-# INLINE true #-}

false :: Attr s Bool
false = Constant False
{-# INLINE false #-}
