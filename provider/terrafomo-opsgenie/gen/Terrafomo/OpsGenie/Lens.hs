-- This module is auto-generated.

{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE RankNTypes             #-}
{-# LANGUAGE UndecidableInstances   #-}

-- {-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.OpsGenie.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.OpsGenie.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasDescription (..)
    , HasFullName (..)
    , HasLocale (..)
    , HasMember (..)
    , HasName (..)
    , HasRole (..)
    , HasTimezone (..)
    , HasUsername (..)

    -- ** Computed Attributes
    , HasComputedFullName (..)
    , HasComputedId (..)
    , HasComputedRole (..)
    ) where

import GHC.Base ((.))

import Lens.Micro (Getting, Lens', to)

import qualified Terrafomo.Attribute as TF
import qualified Terrafomo.Name      as TF
import qualified Terrafomo.Schema    as TF

class HasDescription a s b | a -> s b where
    description :: Lens' a (TF.Attr s b)

instance HasDescription a s b => HasDescription (TF.Schema l p a) s b where
    description = TF.configuration . description

class HasFullName a s b | a -> s b where
    fullName :: Lens' a (TF.Attr s b)

instance HasFullName a s b => HasFullName (TF.Schema l p a) s b where
    fullName = TF.configuration . fullName

class HasLocale a s b | a -> s b where
    locale :: Lens' a (TF.Attr s b)

instance HasLocale a s b => HasLocale (TF.Schema l p a) s b where
    locale = TF.configuration . locale

class HasMember a s b | a -> s b where
    member :: Lens' a (TF.Attr s b)

instance HasMember a s b => HasMember (TF.Schema l p a) s b where
    member = TF.configuration . member

class HasName a s b | a -> s b where
    name :: Lens' a (TF.Attr s b)

instance HasName a s b => HasName (TF.Schema l p a) s b where
    name = TF.configuration . name

class HasRole a s b | a -> s b where
    role :: Lens' a (TF.Attr s b)

instance HasRole a s b => HasRole (TF.Schema l p a) s b where
    role = TF.configuration . role

class HasTimezone a s b | a -> s b where
    timezone :: Lens' a (TF.Attr s b)

instance HasTimezone a s b => HasTimezone (TF.Schema l p a) s b where
    timezone = TF.configuration . timezone

class HasUsername a s b | a -> s b where
    username :: Lens' a (TF.Attr s b)

instance HasUsername a s b => HasUsername (TF.Schema l p a) s b where
    username = TF.configuration . username

class HasComputedFullName a b | a -> b where
    computedFullName
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedFullName =
        to (\x -> TF.compute (TF.refKey x) "full_name")

class HasComputedId a b | a -> b where
    computedId
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedId =
        to (\x -> TF.compute (TF.refKey x) "id")

class HasComputedRole a b | a -> b where
    computedRole
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedRole =
        to (\x -> TF.compute (TF.refKey x) "role")
