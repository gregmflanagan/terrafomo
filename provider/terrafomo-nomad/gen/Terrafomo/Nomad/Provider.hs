-- This module is auto-generated.

{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Nomad.Provider
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Nomad.Provider where

import Data.Hashable (Hashable)
import Data.Text     (Text)

import GHC.Generics (Generic)

import qualified Terrafomo.Nomad.Types     as TF
import qualified Terrafomo.Syntax.HCL      as TF
import qualified Terrafomo.Syntax.Variable as TF
import qualified Terrafomo.TH              as TF

{- | Nomad Terraform provider.

<https://www.nomadproject.io> is an application scheduler. The Nomad
provider exposes resources to interact with a Nomad cluster. Use the
navigation to the left to read about the available resources.
-}
data Nomad = Nomad
    { _address   :: !(TF.Argument Text)
    {- ^  @(string: "http://127.0.0.1:4646")@ - The HTTP(S) API address of the Nomad agent. This must include the leading protocol (e.g. @https://@ ). This can also be specified as the @NOMAD_ADDR@ environment variable. -}
    , _ca_file   :: !(TF.Argument Text)
    {- ^  @(string: "")@ - A local file path to a PEM-encoded certificate authority used to verify the remote agent's certificate. This can also be specified as the @NOMAD_CACERT@ environment variable. -}
    , _cert_file :: !(TF.Argument Text)
    {- ^  @(string: "")@ - A local file path to a PEM-encoded certificate provided to the remote agent. If this is specified, @key_file@ is also required. This can also be specified as the @NOMAD_CLIENT_CERT@ environment variable. -}
    , _key_file  :: !(TF.Argument Text)
    {- ^  @(string: "")@ - A local file path to a PEM-encoded private key. This is required if @cert_file@ is specified. This can also be specified via the @NOMAD_CLIENT_KEY@ environment variable. -}
    , _region    :: !(TF.Argument Text)
    {- ^  @(string: "")@ - The Nomad region to target. This can also be specified as the @NOMAD_REGION@ environment variable. -}
    , _secret_id :: !(TF.Argument Text)
    {- ^  @(string: "")@ - The Secret ID of an ACL token to make requests with, for ACL-enabled clusters. This can also be specified via the @NOMAD_TOKEN@ environment variable. -}
    } deriving (Show, Eq, Generic)

instance Hashable Nomad

instance TF.ToHCL Nomad where
    toHCL x = TF.arguments
        [ TF.assign "address" <$> _address x
        , TF.assign "ca_file" <$> _ca_file x
        , TF.assign "cert_file" <$> _cert_file x
        , TF.assign "key_file" <$> _key_file x
        , TF.assign "region" <$> _region x
        , TF.assign "secret_id" <$> _secret_id x
        ]

$(TF.makeClassy ''Nomad)
