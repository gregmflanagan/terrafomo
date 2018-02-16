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
-- Module      : Terrafomo.Bitbucket.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Bitbucket.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasDescription (..)
    , HasEvents (..)
    , HasForkPolicy (..)
    , HasHasIssues (..)
    , HasHasWiki (..)
    , HasIsPrivate (..)
    , HasLanguage (..)
    , HasName (..)
    , HasOwner (..)
    , HasProjectKey (..)
    , HasRepository (..)
    , HasReviewers (..)
    , HasScm (..)
    , HasSlug (..)
    , HasUrl (..)
    , HasWebsite (..)

    -- ** Computed Attributes
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

class HasEvents a s b | a -> s b where
    events :: Lens' a (TF.Attr s b)

instance HasEvents a s b => HasEvents (TF.Schema l p a) s b where
    events = TF.configuration . events

class HasForkPolicy a s b | a -> s b where
    forkPolicy :: Lens' a (TF.Attr s b)

instance HasForkPolicy a s b => HasForkPolicy (TF.Schema l p a) s b where
    forkPolicy = TF.configuration . forkPolicy

class HasHasIssues a s b | a -> s b where
    hasIssues :: Lens' a (TF.Attr s b)

instance HasHasIssues a s b => HasHasIssues (TF.Schema l p a) s b where
    hasIssues = TF.configuration . hasIssues

class HasHasWiki a s b | a -> s b where
    hasWiki :: Lens' a (TF.Attr s b)

instance HasHasWiki a s b => HasHasWiki (TF.Schema l p a) s b where
    hasWiki = TF.configuration . hasWiki

class HasIsPrivate a s b | a -> s b where
    isPrivate :: Lens' a (TF.Attr s b)

instance HasIsPrivate a s b => HasIsPrivate (TF.Schema l p a) s b where
    isPrivate = TF.configuration . isPrivate

class HasLanguage a s b | a -> s b where
    language :: Lens' a (TF.Attr s b)

instance HasLanguage a s b => HasLanguage (TF.Schema l p a) s b where
    language = TF.configuration . language

class HasName a s b | a -> s b where
    name :: Lens' a (TF.Attr s b)

instance HasName a s b => HasName (TF.Schema l p a) s b where
    name = TF.configuration . name

class HasOwner a s b | a -> s b where
    owner :: Lens' a (TF.Attr s b)

instance HasOwner a s b => HasOwner (TF.Schema l p a) s b where
    owner = TF.configuration . owner

class HasProjectKey a s b | a -> s b where
    projectKey :: Lens' a (TF.Attr s b)

instance HasProjectKey a s b => HasProjectKey (TF.Schema l p a) s b where
    projectKey = TF.configuration . projectKey

class HasRepository a s b | a -> s b where
    repository :: Lens' a (TF.Attr s b)

instance HasRepository a s b => HasRepository (TF.Schema l p a) s b where
    repository = TF.configuration . repository

class HasReviewers a s b | a -> s b where
    reviewers :: Lens' a (TF.Attr s b)

instance HasReviewers a s b => HasReviewers (TF.Schema l p a) s b where
    reviewers = TF.configuration . reviewers

class HasScm a s b | a -> s b where
    scm :: Lens' a (TF.Attr s b)

instance HasScm a s b => HasScm (TF.Schema l p a) s b where
    scm = TF.configuration . scm

class HasSlug a s b | a -> s b where
    slug :: Lens' a (TF.Attr s b)

instance HasSlug a s b => HasSlug (TF.Schema l p a) s b where
    slug = TF.configuration . slug

class HasUrl a s b | a -> s b where
    url :: Lens' a (TF.Attr s b)

instance HasUrl a s b => HasUrl (TF.Schema l p a) s b where
    url = TF.configuration . url

class HasWebsite a s b | a -> s b where
    website :: Lens' a (TF.Attr s b)

instance HasWebsite a s b => HasWebsite (TF.Schema l p a) s b where
    website = TF.configuration . website
