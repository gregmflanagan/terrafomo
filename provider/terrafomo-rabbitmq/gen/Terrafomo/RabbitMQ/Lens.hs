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
-- Module      : Terrafomo.RabbitMQ.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.RabbitMQ.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasArguments (..)
    , HasDestination (..)
    , HasDestinationType (..)
    , HasName (..)
    , HasPassword (..)
    , HasPermissions (..)
    , HasPolicy (..)
    , HasRoutingKey (..)
    , HasSettings (..)
    , HasSource (..)
    , HasTags (..)
    , HasUser (..)
    , HasVhost (..)

    -- ** Computed Attributes
    , HasComputedPropertiesKey (..)
    ) where

import GHC.Base ((.))

import Lens.Micro (Getting, Lens', to)

import qualified Terrafomo.Attribute as TF
import qualified Terrafomo.Name      as TF
import qualified Terrafomo.Schema    as TF

class HasArguments a s b | a -> s b where
    arguments :: Lens' a (TF.Attr s b)

instance HasArguments a s b => HasArguments (TF.Schema l p a) s b where
    arguments = TF.configuration . arguments

class HasDestination a s b | a -> s b where
    destination :: Lens' a (TF.Attr s b)

instance HasDestination a s b => HasDestination (TF.Schema l p a) s b where
    destination = TF.configuration . destination

class HasDestinationType a s b | a -> s b where
    destinationType :: Lens' a (TF.Attr s b)

instance HasDestinationType a s b => HasDestinationType (TF.Schema l p a) s b where
    destinationType = TF.configuration . destinationType

class HasName a s b | a -> s b where
    name :: Lens' a (TF.Attr s b)

instance HasName a s b => HasName (TF.Schema l p a) s b where
    name = TF.configuration . name

class HasPassword a s b | a -> s b where
    password :: Lens' a (TF.Attr s b)

instance HasPassword a s b => HasPassword (TF.Schema l p a) s b where
    password = TF.configuration . password

class HasPermissions a s b | a -> s b where
    permissions :: Lens' a (TF.Attr s b)

instance HasPermissions a s b => HasPermissions (TF.Schema l p a) s b where
    permissions = TF.configuration . permissions

class HasPolicy a s b | a -> s b where
    policy :: Lens' a (TF.Attr s b)

instance HasPolicy a s b => HasPolicy (TF.Schema l p a) s b where
    policy = TF.configuration . policy

class HasRoutingKey a s b | a -> s b where
    routingKey :: Lens' a (TF.Attr s b)

instance HasRoutingKey a s b => HasRoutingKey (TF.Schema l p a) s b where
    routingKey = TF.configuration . routingKey

class HasSettings a s b | a -> s b where
    settings :: Lens' a (TF.Attr s b)

instance HasSettings a s b => HasSettings (TF.Schema l p a) s b where
    settings = TF.configuration . settings

class HasSource a s b | a -> s b where
    source :: Lens' a (TF.Attr s b)

instance HasSource a s b => HasSource (TF.Schema l p a) s b where
    source = TF.configuration . source

class HasTags a s b | a -> s b where
    tags :: Lens' a (TF.Attr s b)

instance HasTags a s b => HasTags (TF.Schema l p a) s b where
    tags = TF.configuration . tags

class HasUser a s b | a -> s b where
    user :: Lens' a (TF.Attr s b)

instance HasUser a s b => HasUser (TF.Schema l p a) s b where
    user = TF.configuration . user

class HasVhost a s b | a -> s b where
    vhost :: Lens' a (TF.Attr s b)

instance HasVhost a s b => HasVhost (TF.Schema l p a) s b where
    vhost = TF.configuration . vhost

class HasComputedPropertiesKey a b | a -> b where
    computedPropertiesKey
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedPropertiesKey =
        to (\x -> TF.compute (TF.refKey x) "properties_key")
