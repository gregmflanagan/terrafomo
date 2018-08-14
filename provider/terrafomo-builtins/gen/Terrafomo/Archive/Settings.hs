-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Archive.Settings
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Archive.Settings
    (
    -- * Settings Datatypes
    -- ** source
      Source (..)
    , newSource

    ) where

import Data.Functor ((<$>))

import GHC.Base (($))

import qualified Data.Hashable           as P
import qualified Data.HashMap.Strict     as P
import qualified Data.HashMap.Strict     as Map
import qualified Data.List.NonEmpty      as P
import qualified Data.Maybe              as P
import qualified Data.Monoid             as P
import qualified Data.Text               as P
import qualified GHC.Generics            as P
import qualified Lens.Micro              as P
import qualified Prelude                 as P
import qualified Terrafomo.Archive.Lens  as P
import qualified Terrafomo.Archive.Types as P
import qualified Terrafomo.Attribute     as TF
import qualified Terrafomo.HCL           as TF
import qualified Terrafomo.Name          as TF
import qualified Terrafomo.Validator     as TF

-- | @source@ nested settings.
data Source s = Source'
    { _content  :: TF.Attr s P.Text
    -- ^ @content@ - (Required)
    --
    , _filename :: TF.Attr s P.Text
    -- ^ @filename@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newSource
    :: TF.Attr s P.Text -- ^ @content@ - 'P.content'
    -> TF.Attr s P.Text -- ^ @filename@ - 'P.filename'
    -> Source s
newSource _content _filename =
    Source'
        { _content = _content
        , _filename = _filename
        }

instance P.Hashable  (Source s)
instance TF.IsValue  (Source s)
instance TF.IsObject (Source s) where
    toObject Source'{..} = P.catMaybes
        [ TF.assign "content" <$> TF.attribute _content
        , TF.assign "filename" <$> TF.attribute _filename
        ]

instance TF.IsValid (Source s) where
    validator = P.mempty

instance P.HasContent (Source s) (TF.Attr s P.Text) where
    content =
        P.lens (_content :: Source s -> TF.Attr s P.Text)
               (\s a -> s { _content = a } :: Source s)

instance P.HasFilename (Source s) (TF.Attr s P.Text) where
    filename =
        P.lens (_filename :: Source s -> TF.Attr s P.Text)
               (\s a -> s { _filename = a } :: Source s)