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
-- Module      : Terrafomo.UltraDNS.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.UltraDNS.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasActOnProbes (..)
    , HasAgents (..)
    , HasBackupRecordFailoverDelay (..)
    , HasBackupRecordRdata (..)
    , HasConflictResolve (..)
    , HasDescription (..)
    , HasHttpProbe (..)
    , HasInterval (..)
    , HasMaxToLb (..)
    , HasName (..)
    , HasNoResponse (..)
    , HasOrder (..)
    , HasPingProbe (..)
    , HasPoolRecord (..)
    , HasRdata (..)
    , HasRunProbes (..)
    , HasThreshold (..)
    , HasTtl (..)
    , HasType' (..)
    , HasZone (..)

    -- ** Computed Attributes
    , HasComputedHostname (..)
    , HasComputedId (..)
    , HasComputedName (..)
    , HasComputedRdata (..)
    , HasComputedTtl (..)
    , HasComputedType' (..)
    , HasComputedZone (..)
    ) where

import GHC.Base ((.))

import Lens.Micro (Getting, Lens', to)

import qualified Terrafomo.Attribute as TF
import qualified Terrafomo.Name      as TF
import qualified Terrafomo.Schema    as TF

class HasActOnProbes a s b | a -> s b where
    actOnProbes :: Lens' a (TF.Attr s b)

instance HasActOnProbes a s b => HasActOnProbes (TF.Schema l p a) s b where
    actOnProbes = TF.configuration . actOnProbes

class HasAgents a s b | a -> s b where
    agents :: Lens' a (TF.Attr s b)

instance HasAgents a s b => HasAgents (TF.Schema l p a) s b where
    agents = TF.configuration . agents

class HasBackupRecordFailoverDelay a s b | a -> s b where
    backupRecordFailoverDelay :: Lens' a (TF.Attr s b)

instance HasBackupRecordFailoverDelay a s b => HasBackupRecordFailoverDelay (TF.Schema l p a) s b where
    backupRecordFailoverDelay = TF.configuration . backupRecordFailoverDelay

class HasBackupRecordRdata a s b | a -> s b where
    backupRecordRdata :: Lens' a (TF.Attr s b)

instance HasBackupRecordRdata a s b => HasBackupRecordRdata (TF.Schema l p a) s b where
    backupRecordRdata = TF.configuration . backupRecordRdata

class HasConflictResolve a s b | a -> s b where
    conflictResolve :: Lens' a (TF.Attr s b)

instance HasConflictResolve a s b => HasConflictResolve (TF.Schema l p a) s b where
    conflictResolve = TF.configuration . conflictResolve

class HasDescription a s b | a -> s b where
    description :: Lens' a (TF.Attr s b)

instance HasDescription a s b => HasDescription (TF.Schema l p a) s b where
    description = TF.configuration . description

class HasHttpProbe a s b | a -> s b where
    httpProbe :: Lens' a (TF.Attr s b)

instance HasHttpProbe a s b => HasHttpProbe (TF.Schema l p a) s b where
    httpProbe = TF.configuration . httpProbe

class HasInterval a s b | a -> s b where
    interval :: Lens' a (TF.Attr s b)

instance HasInterval a s b => HasInterval (TF.Schema l p a) s b where
    interval = TF.configuration . interval

class HasMaxToLb a s b | a -> s b where
    maxToLb :: Lens' a (TF.Attr s b)

instance HasMaxToLb a s b => HasMaxToLb (TF.Schema l p a) s b where
    maxToLb = TF.configuration . maxToLb

class HasName a s b | a -> s b where
    name :: Lens' a (TF.Attr s b)

instance HasName a s b => HasName (TF.Schema l p a) s b where
    name = TF.configuration . name

class HasNoResponse a s b | a -> s b where
    noResponse :: Lens' a (TF.Attr s b)

instance HasNoResponse a s b => HasNoResponse (TF.Schema l p a) s b where
    noResponse = TF.configuration . noResponse

class HasOrder a s b | a -> s b where
    order :: Lens' a (TF.Attr s b)

instance HasOrder a s b => HasOrder (TF.Schema l p a) s b where
    order = TF.configuration . order

class HasPingProbe a s b | a -> s b where
    pingProbe :: Lens' a (TF.Attr s b)

instance HasPingProbe a s b => HasPingProbe (TF.Schema l p a) s b where
    pingProbe = TF.configuration . pingProbe

class HasPoolRecord a s b | a -> s b where
    poolRecord :: Lens' a (TF.Attr s b)

instance HasPoolRecord a s b => HasPoolRecord (TF.Schema l p a) s b where
    poolRecord = TF.configuration . poolRecord

class HasRdata a s b | a -> s b where
    rdata :: Lens' a (TF.Attr s b)

instance HasRdata a s b => HasRdata (TF.Schema l p a) s b where
    rdata = TF.configuration . rdata

class HasRunProbes a s b | a -> s b where
    runProbes :: Lens' a (TF.Attr s b)

instance HasRunProbes a s b => HasRunProbes (TF.Schema l p a) s b where
    runProbes = TF.configuration . runProbes

class HasThreshold a s b | a -> s b where
    threshold :: Lens' a (TF.Attr s b)

instance HasThreshold a s b => HasThreshold (TF.Schema l p a) s b where
    threshold = TF.configuration . threshold

class HasTtl a s b | a -> s b where
    ttl :: Lens' a (TF.Attr s b)

instance HasTtl a s b => HasTtl (TF.Schema l p a) s b where
    ttl = TF.configuration . ttl

class HasType' a s b | a -> s b where
    type' :: Lens' a (TF.Attr s b)

instance HasType' a s b => HasType' (TF.Schema l p a) s b where
    type' = TF.configuration . type'

class HasZone a s b | a -> s b where
    zone :: Lens' a (TF.Attr s b)

instance HasZone a s b => HasZone (TF.Schema l p a) s b where
    zone = TF.configuration . zone

class HasComputedHostname a b | a -> b where
    computedHostname
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedHostname =
        to (\x -> TF.compute (TF.refKey x) "hostname")

class HasComputedId a b | a -> b where
    computedId
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedId =
        to (\x -> TF.compute (TF.refKey x) "id")

class HasComputedName a b | a -> b where
    computedName
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedName =
        to (\x -> TF.compute (TF.refKey x) "name")

class HasComputedRdata a b | a -> b where
    computedRdata
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedRdata =
        to (\x -> TF.compute (TF.refKey x) "rdata")

class HasComputedTtl a b | a -> b where
    computedTtl
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedTtl =
        to (\x -> TF.compute (TF.refKey x) "ttl")

class HasComputedType' a b | a -> b where
    computedType'
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedType' =
        to (\x -> TF.compute (TF.refKey x) "type")

class HasComputedZone a b | a -> b where
    computedZone
        :: forall r s. Getting r (TF.Ref s a) (TF.Attr s b)
    computedZone =
        to (\x -> TF.compute (TF.refKey x) "zone")
