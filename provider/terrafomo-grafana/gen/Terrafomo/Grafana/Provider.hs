-- This module is auto-generated.

{-# LANGUAGE DeriveGeneric #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Grafana.Provider
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Grafana.Provider where

import Data.Text (Text)

import GHC.Generics (Generic)

import Terrafomo.Syntax.Provider
import Terrafomo.Grafana.Types

{- | Grafana Terraform provider.

The Grafana provider configures data sources and dashboards in
<http://grafana.org/> , which is a web application for creating, viewing and
sharing metrics dashboards. The provider configuration block accepts the
following arguments:
-}
data Grafana = Grafana