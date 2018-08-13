-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Docker.Resource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Docker.Resource
    (
    -- * Resource Datatypes
    -- ** docker_config
      ConfigResource (..)
    , configResource

    -- ** docker_container
    , ContainerResource (..)
    , containerResource

    -- ** docker_image
    , ImageResource (..)
    , imageResource

    -- ** docker_network
    , NetworkResource (..)
    , networkResource

    -- ** docker_secret
    , SecretResource (..)
    , secretResource

    -- ** docker_service
    , ServiceResource (..)
    , serviceResource

    -- ** docker_volume
    , VolumeResource (..)
    , volumeResource

    ) where

import Data.Functor ((<$>))

import GHC.Base (($))

import Terrafomo.Docker.Settings

import qualified Data.Hashable             as P
import qualified Data.HashMap.Strict       as P
import qualified Data.HashMap.Strict       as Map
import qualified Data.List.NonEmpty        as P
import qualified Data.Maybe                as P
import qualified Data.Monoid               as P
import qualified Data.Text                 as P
import qualified GHC.Generics              as P
import qualified Lens.Micro                as P
import qualified Prelude                   as P
import qualified Terrafomo.Attribute       as TF
import qualified Terrafomo.Docker.Lens     as P
import qualified Terrafomo.Docker.Provider as P
import qualified Terrafomo.Docker.Types    as P
import qualified Terrafomo.HCL             as TF
import qualified Terrafomo.Name            as TF
import qualified Terrafomo.Schema          as TF
import qualified Terrafomo.Validator       as TF

-- | @docker_config@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_config terraform documentation>
-- for more information.
data ConfigResource s = ConfigResource'
    { _data' :: TF.Attr s P.Text
    -- ^ @data@ - (Required)
    -- Base64-url-safe-encoded config data
    --
    , _name  :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    -- User-defined name of the config
    --
    } deriving (P.Show, P.Eq, P.Generic)

configResource
    :: TF.Attr s P.Text -- ^ @data@ - 'P.data''
    -> TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Resource P.Provider (ConfigResource s)
configResource _data' _name =
    TF.newResource "docker_config" TF.validator $
        ConfigResource'
            { _data' = _data'
            , _name = _name
            }

instance TF.IsObject (ConfigResource s) where
    toObject ConfigResource'{..} = P.catMaybes
        [ TF.assign "data" <$> TF.attribute _data'
        , TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (ConfigResource s) where
    validator = P.mempty

instance P.HasData' (ConfigResource s) (TF.Attr s P.Text) where
    data' =
        P.lens (_data' :: ConfigResource s -> TF.Attr s P.Text)
               (\s a -> s { _data' = a } :: ConfigResource s)

instance P.HasName (ConfigResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ConfigResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: ConfigResource s)

-- | @docker_container@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_container terraform documentation>
-- for more information.
data ContainerResource s = ContainerResource'
    { _capabilities        :: TF.Attr s (Capabilities s)
    -- ^ @capabilities@ - (Optional)
    --
    , _command             :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @command@ - (Optional)
    --
    , _cpuShares           :: TF.Attr s P.Integer
    -- ^ @cpu_shares@ - (Optional)
    --
    , _destroyGraceSeconds :: TF.Attr s P.Integer
    -- ^ @destroy_grace_seconds@ - (Optional)
    --
    , _devices             :: TF.Attr s [TF.Attr s (Devices s)]
    -- ^ @devices@ - (Optional)
    --
    , _dns                 :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @dns@ - (Optional)
    --
    , _dnsOpts             :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @dns_opts@ - (Optional)
    --
    , _dnsSearch           :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @dns_search@ - (Optional)
    --
    , _domainname          :: TF.Attr s P.Text
    -- ^ @domainname@ - (Optional)
    --
    , _entrypoint          :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @entrypoint@ - (Optional)
    --
    , _env                 :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @env@ - (Optional)
    --
    , _host                :: TF.Attr s [TF.Attr s (Host s)]
    -- ^ @host@ - (Optional)
    --
    , _hostname            :: TF.Attr s P.Text
    -- ^ @hostname@ - (Optional)
    --
    , _image               :: TF.Attr s P.Text
    -- ^ @image@ - (Required)
    --
    , _labels              :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @labels@ - (Optional)
    --
    , _links               :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @links@ - (Optional)
    --
    , _logDriver           :: TF.Attr s P.Text
    -- ^ @log_driver@ - (Optional)
    --
    , _logOpts             :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @log_opts@ - (Optional)
    --
    , _maxRetryCount       :: TF.Attr s P.Integer
    -- ^ @max_retry_count@ - (Optional)
    --
    , _memory              :: TF.Attr s P.Integer
    -- ^ @memory@ - (Optional)
    --
    , _memorySwap          :: TF.Attr s P.Integer
    -- ^ @memory_swap@ - (Optional)
    --
    , _mustRun             :: TF.Attr s P.Bool
    -- ^ @must_run@ - (Optional)
    --
    , _name                :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _networkAlias        :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @network_alias@ - (Optional)
    --
    , _networkMode         :: TF.Attr s P.Text
    -- ^ @network_mode@ - (Optional)
    --
    , _networks            :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @networks@ - (Optional)
    --
    , _ports               :: TF.Attr s [TF.Attr s (Ports s)]
    -- ^ @ports@ - (Optional)
    --
    , _privileged          :: TF.Attr s P.Bool
    -- ^ @privileged@ - (Optional)
    --
    , _publishAllPorts     :: TF.Attr s P.Bool
    -- ^ @publish_all_ports@ - (Optional)
    --
    , _restart             :: TF.Attr s P.Text
    -- ^ @restart@ - (Optional)
    --
    , _ulimit              :: TF.Attr s [TF.Attr s (Ulimit s)]
    -- ^ @ulimit@ - (Optional)
    --
    , _upload              :: TF.Attr s [TF.Attr s (Upload s)]
    -- ^ @upload@ - (Optional)
    --
    , _user                :: TF.Attr s P.Text
    -- ^ @user@ - (Optional)
    --
    , _volumes             :: TF.Attr s [TF.Attr s (Volumes s)]
    -- ^ @volumes@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

containerResource
    :: TF.Attr s P.Text -- ^ @image@ - 'P.image'
    -> TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Resource P.Provider (ContainerResource s)
containerResource _image _name =
    TF.newResource "docker_container" TF.validator $
        ContainerResource'
            { _capabilities = TF.Nil
            , _command = TF.Nil
            , _cpuShares = TF.Nil
            , _destroyGraceSeconds = TF.Nil
            , _devices = TF.Nil
            , _dns = TF.Nil
            , _dnsOpts = TF.Nil
            , _dnsSearch = TF.Nil
            , _domainname = TF.Nil
            , _entrypoint = TF.Nil
            , _env = TF.Nil
            , _host = TF.Nil
            , _hostname = TF.Nil
            , _image = _image
            , _labels = TF.Nil
            , _links = TF.Nil
            , _logDriver = TF.value "json-file"
            , _logOpts = TF.Nil
            , _maxRetryCount = TF.Nil
            , _memory = TF.Nil
            , _memorySwap = TF.Nil
            , _mustRun = TF.value P.True
            , _name = _name
            , _networkAlias = TF.Nil
            , _networkMode = TF.Nil
            , _networks = TF.Nil
            , _ports = TF.Nil
            , _privileged = TF.Nil
            , _publishAllPorts = TF.Nil
            , _restart = TF.value "no"
            , _ulimit = TF.Nil
            , _upload = TF.Nil
            , _user = TF.Nil
            , _volumes = TF.Nil
            }

instance TF.IsObject (ContainerResource s) where
    toObject ContainerResource'{..} = P.catMaybes
        [ TF.assign "capabilities" <$> TF.attribute _capabilities
        , TF.assign "command" <$> TF.attribute _command
        , TF.assign "cpu_shares" <$> TF.attribute _cpuShares
        , TF.assign "destroy_grace_seconds" <$> TF.attribute _destroyGraceSeconds
        , TF.assign "devices" <$> TF.attribute _devices
        , TF.assign "dns" <$> TF.attribute _dns
        , TF.assign "dns_opts" <$> TF.attribute _dnsOpts
        , TF.assign "dns_search" <$> TF.attribute _dnsSearch
        , TF.assign "domainname" <$> TF.attribute _domainname
        , TF.assign "entrypoint" <$> TF.attribute _entrypoint
        , TF.assign "env" <$> TF.attribute _env
        , TF.assign "host" <$> TF.attribute _host
        , TF.assign "hostname" <$> TF.attribute _hostname
        , TF.assign "image" <$> TF.attribute _image
        , TF.assign "labels" <$> TF.attribute _labels
        , TF.assign "links" <$> TF.attribute _links
        , TF.assign "log_driver" <$> TF.attribute _logDriver
        , TF.assign "log_opts" <$> TF.attribute _logOpts
        , TF.assign "max_retry_count" <$> TF.attribute _maxRetryCount
        , TF.assign "memory" <$> TF.attribute _memory
        , TF.assign "memory_swap" <$> TF.attribute _memorySwap
        , TF.assign "must_run" <$> TF.attribute _mustRun
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "network_alias" <$> TF.attribute _networkAlias
        , TF.assign "network_mode" <$> TF.attribute _networkMode
        , TF.assign "networks" <$> TF.attribute _networks
        , TF.assign "ports" <$> TF.attribute _ports
        , TF.assign "privileged" <$> TF.attribute _privileged
        , TF.assign "publish_all_ports" <$> TF.attribute _publishAllPorts
        , TF.assign "restart" <$> TF.attribute _restart
        , TF.assign "ulimit" <$> TF.attribute _ulimit
        , TF.assign "upload" <$> TF.attribute _upload
        , TF.assign "user" <$> TF.attribute _user
        , TF.assign "volumes" <$> TF.attribute _volumes
        ]

instance TF.IsValid (ContainerResource s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_capabilities"
                  (_capabilities
                      :: ContainerResource s -> TF.Attr s (Capabilities s))
                  TF.validator
           P.<> TF.settingsValidator "_devices"
                  (_devices
                      :: ContainerResource s -> TF.Attr s [TF.Attr s (Devices s)])
                  TF.validator
           P.<> TF.settingsValidator "_host"
                  (_host
                      :: ContainerResource s -> TF.Attr s [TF.Attr s (Host s)])
                  TF.validator
           P.<> TF.settingsValidator "_ports"
                  (_ports
                      :: ContainerResource s -> TF.Attr s [TF.Attr s (Ports s)])
                  TF.validator
           P.<> TF.settingsValidator "_ulimit"
                  (_ulimit
                      :: ContainerResource s -> TF.Attr s [TF.Attr s (Ulimit s)])
                  TF.validator
           P.<> TF.settingsValidator "_upload"
                  (_upload
                      :: ContainerResource s -> TF.Attr s [TF.Attr s (Upload s)])
                  TF.validator
           P.<> TF.settingsValidator "_volumes"
                  (_volumes
                      :: ContainerResource s -> TF.Attr s [TF.Attr s (Volumes s)])
                  TF.validator

instance P.HasCapabilities (ContainerResource s) (TF.Attr s (Capabilities s)) where
    capabilities =
        P.lens (_capabilities :: ContainerResource s -> TF.Attr s (Capabilities s))
               (\s a -> s { _capabilities = a } :: ContainerResource s)

instance P.HasCommand (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    command =
        P.lens (_command :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _command = a } :: ContainerResource s)

instance P.HasCpuShares (ContainerResource s) (TF.Attr s P.Integer) where
    cpuShares =
        P.lens (_cpuShares :: ContainerResource s -> TF.Attr s P.Integer)
               (\s a -> s { _cpuShares = a } :: ContainerResource s)

instance P.HasDestroyGraceSeconds (ContainerResource s) (TF.Attr s P.Integer) where
    destroyGraceSeconds =
        P.lens (_destroyGraceSeconds :: ContainerResource s -> TF.Attr s P.Integer)
               (\s a -> s { _destroyGraceSeconds = a } :: ContainerResource s)

instance P.HasDevices (ContainerResource s) (TF.Attr s [TF.Attr s (Devices s)]) where
    devices =
        P.lens (_devices :: ContainerResource s -> TF.Attr s [TF.Attr s (Devices s)])
               (\s a -> s { _devices = a } :: ContainerResource s)

instance P.HasDns (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    dns =
        P.lens (_dns :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _dns = a } :: ContainerResource s)

instance P.HasDnsOpts (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    dnsOpts =
        P.lens (_dnsOpts :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _dnsOpts = a } :: ContainerResource s)

instance P.HasDnsSearch (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    dnsSearch =
        P.lens (_dnsSearch :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _dnsSearch = a } :: ContainerResource s)

instance P.HasDomainname (ContainerResource s) (TF.Attr s P.Text) where
    domainname =
        P.lens (_domainname :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _domainname = a } :: ContainerResource s)

instance P.HasEntrypoint (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    entrypoint =
        P.lens (_entrypoint :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _entrypoint = a } :: ContainerResource s)

instance P.HasEnv (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    env =
        P.lens (_env :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _env = a } :: ContainerResource s)

instance P.HasHost (ContainerResource s) (TF.Attr s [TF.Attr s (Host s)]) where
    host =
        P.lens (_host :: ContainerResource s -> TF.Attr s [TF.Attr s (Host s)])
               (\s a -> s { _host = a } :: ContainerResource s)

instance P.HasHostname (ContainerResource s) (TF.Attr s P.Text) where
    hostname =
        P.lens (_hostname :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _hostname = a } :: ContainerResource s)

instance P.HasImage (ContainerResource s) (TF.Attr s P.Text) where
    image =
        P.lens (_image :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _image = a } :: ContainerResource s)

instance P.HasLabels (ContainerResource s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    labels =
        P.lens (_labels :: ContainerResource s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _labels = a } :: ContainerResource s)

instance P.HasLinks (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    links =
        P.lens (_links :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _links = a } :: ContainerResource s)

instance P.HasLogDriver (ContainerResource s) (TF.Attr s P.Text) where
    logDriver =
        P.lens (_logDriver :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _logDriver = a } :: ContainerResource s)

instance P.HasLogOpts (ContainerResource s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    logOpts =
        P.lens (_logOpts :: ContainerResource s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _logOpts = a } :: ContainerResource s)

instance P.HasMaxRetryCount (ContainerResource s) (TF.Attr s P.Integer) where
    maxRetryCount =
        P.lens (_maxRetryCount :: ContainerResource s -> TF.Attr s P.Integer)
               (\s a -> s { _maxRetryCount = a } :: ContainerResource s)

instance P.HasMemory (ContainerResource s) (TF.Attr s P.Integer) where
    memory =
        P.lens (_memory :: ContainerResource s -> TF.Attr s P.Integer)
               (\s a -> s { _memory = a } :: ContainerResource s)

instance P.HasMemorySwap (ContainerResource s) (TF.Attr s P.Integer) where
    memorySwap =
        P.lens (_memorySwap :: ContainerResource s -> TF.Attr s P.Integer)
               (\s a -> s { _memorySwap = a } :: ContainerResource s)

instance P.HasMustRun (ContainerResource s) (TF.Attr s P.Bool) where
    mustRun =
        P.lens (_mustRun :: ContainerResource s -> TF.Attr s P.Bool)
               (\s a -> s { _mustRun = a } :: ContainerResource s)

instance P.HasName (ContainerResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: ContainerResource s)

instance P.HasNetworkAlias (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    networkAlias =
        P.lens (_networkAlias :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _networkAlias = a } :: ContainerResource s)

instance P.HasNetworkMode (ContainerResource s) (TF.Attr s P.Text) where
    networkMode =
        P.lens (_networkMode :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _networkMode = a } :: ContainerResource s)

instance P.HasNetworks (ContainerResource s) (TF.Attr s [TF.Attr s P.Text]) where
    networks =
        P.lens (_networks :: ContainerResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _networks = a } :: ContainerResource s)

instance P.HasPorts (ContainerResource s) (TF.Attr s [TF.Attr s (Ports s)]) where
    ports =
        P.lens (_ports :: ContainerResource s -> TF.Attr s [TF.Attr s (Ports s)])
               (\s a -> s { _ports = a } :: ContainerResource s)

instance P.HasPrivileged (ContainerResource s) (TF.Attr s P.Bool) where
    privileged =
        P.lens (_privileged :: ContainerResource s -> TF.Attr s P.Bool)
               (\s a -> s { _privileged = a } :: ContainerResource s)

instance P.HasPublishAllPorts (ContainerResource s) (TF.Attr s P.Bool) where
    publishAllPorts =
        P.lens (_publishAllPorts :: ContainerResource s -> TF.Attr s P.Bool)
               (\s a -> s { _publishAllPorts = a } :: ContainerResource s)

instance P.HasRestart (ContainerResource s) (TF.Attr s P.Text) where
    restart =
        P.lens (_restart :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _restart = a } :: ContainerResource s)

instance P.HasUlimit (ContainerResource s) (TF.Attr s [TF.Attr s (Ulimit s)]) where
    ulimit =
        P.lens (_ulimit :: ContainerResource s -> TF.Attr s [TF.Attr s (Ulimit s)])
               (\s a -> s { _ulimit = a } :: ContainerResource s)

instance P.HasUpload (ContainerResource s) (TF.Attr s [TF.Attr s (Upload s)]) where
    upload =
        P.lens (_upload :: ContainerResource s -> TF.Attr s [TF.Attr s (Upload s)])
               (\s a -> s { _upload = a } :: ContainerResource s)

instance P.HasUser (ContainerResource s) (TF.Attr s P.Text) where
    user =
        P.lens (_user :: ContainerResource s -> TF.Attr s P.Text)
               (\s a -> s { _user = a } :: ContainerResource s)

instance P.HasVolumes (ContainerResource s) (TF.Attr s [TF.Attr s (Volumes s)]) where
    volumes =
        P.lens (_volumes :: ContainerResource s -> TF.Attr s [TF.Attr s (Volumes s)])
               (\s a -> s { _volumes = a } :: ContainerResource s)

instance s ~ s' => P.HasComputedBridge (TF.Ref s' (ContainerResource s)) (TF.Attr s P.Text) where
    computedBridge x = TF.compute (TF.refKey x) "_computedBridge"

instance s ~ s' => P.HasComputedGateway (TF.Ref s' (ContainerResource s)) (TF.Attr s P.Text) where
    computedGateway x = TF.compute (TF.refKey x) "_computedGateway"

instance s ~ s' => P.HasComputedIpAddress (TF.Ref s' (ContainerResource s)) (TF.Attr s P.Text) where
    computedIpAddress x = TF.compute (TF.refKey x) "_computedIpAddress"

instance s ~ s' => P.HasComputedIpPrefixLength (TF.Ref s' (ContainerResource s)) (TF.Attr s P.Integer) where
    computedIpPrefixLength x = TF.compute (TF.refKey x) "_computedIpPrefixLength"

-- | @docker_image@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_image terraform documentation>
-- for more information.
data ImageResource s = ImageResource'
    { _keepLocally  :: TF.Attr s P.Bool
    -- ^ @keep_locally@ - (Optional)
    --
    , _name         :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _pullTrigger  :: TF.Attr s P.Text
    -- ^ @pull_trigger@ - (Optional)
    --
    -- Conflicts with:
    --
    -- * 'pullTriggers'
    , _pullTriggers :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @pull_triggers@ - (Optional)
    --
    -- Conflicts with:
    --
    -- * 'pullTrigger'
    } deriving (P.Show, P.Eq, P.Generic)

imageResource
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Resource P.Provider (ImageResource s)
imageResource _name =
    TF.newResource "docker_image" TF.validator $
        ImageResource'
            { _keepLocally = TF.Nil
            , _name = _name
            , _pullTrigger = TF.Nil
            , _pullTriggers = TF.Nil
            }

instance TF.IsObject (ImageResource s) where
    toObject ImageResource'{..} = P.catMaybes
        [ TF.assign "keep_locally" <$> TF.attribute _keepLocally
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "pull_trigger" <$> TF.attribute _pullTrigger
        , TF.assign "pull_triggers" <$> TF.attribute _pullTriggers
        ]

instance TF.IsValid (ImageResource s) where
    validator = TF.fieldsValidator (\ImageResource'{..} -> Map.fromList $ P.catMaybes
        [ if (_pullTrigger P.== TF.Nil)
              then P.Nothing
              else P.Just ("_pullTrigger",
                            [ "_pullTriggers"
                            ])
        , if (_pullTriggers P.== TF.Nil)
              then P.Nothing
              else P.Just ("_pullTriggers",
                            [ "_pullTrigger"
                            ])
        ])

instance P.HasKeepLocally (ImageResource s) (TF.Attr s P.Bool) where
    keepLocally =
        P.lens (_keepLocally :: ImageResource s -> TF.Attr s P.Bool)
               (\s a -> s { _keepLocally = a } :: ImageResource s)

instance P.HasName (ImageResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ImageResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: ImageResource s)

instance P.HasPullTrigger (ImageResource s) (TF.Attr s P.Text) where
    pullTrigger =
        P.lens (_pullTrigger :: ImageResource s -> TF.Attr s P.Text)
               (\s a -> s { _pullTrigger = a } :: ImageResource s)

instance P.HasPullTriggers (ImageResource s) (TF.Attr s [TF.Attr s P.Text]) where
    pullTriggers =
        P.lens (_pullTriggers :: ImageResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _pullTriggers = a } :: ImageResource s)

instance s ~ s' => P.HasComputedLatest (TF.Ref s' (ImageResource s)) (TF.Attr s P.Text) where
    computedLatest x = TF.compute (TF.refKey x) "_computedLatest"

-- | @docker_network@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_network terraform documentation>
-- for more information.
data NetworkResource s = NetworkResource'
    { _checkDuplicate :: TF.Attr s P.Bool
    -- ^ @check_duplicate@ - (Optional)
    --
    , _ipamConfig     :: TF.Attr s [TF.Attr s (IpamConfig s)]
    -- ^ @ipam_config@ - (Optional)
    --
    , _ipamDriver     :: TF.Attr s P.Text
    -- ^ @ipam_driver@ - (Optional)
    --
    , _name           :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

networkResource
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Resource P.Provider (NetworkResource s)
networkResource _name =
    TF.newResource "docker_network" TF.validator $
        NetworkResource'
            { _checkDuplicate = TF.Nil
            , _ipamConfig = TF.Nil
            , _ipamDriver = TF.Nil
            , _name = _name
            }

instance TF.IsObject (NetworkResource s) where
    toObject NetworkResource'{..} = P.catMaybes
        [ TF.assign "check_duplicate" <$> TF.attribute _checkDuplicate
        , TF.assign "ipam_config" <$> TF.attribute _ipamConfig
        , TF.assign "ipam_driver" <$> TF.attribute _ipamDriver
        , TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (NetworkResource s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_ipamConfig"
                  (_ipamConfig
                      :: NetworkResource s -> TF.Attr s [TF.Attr s (IpamConfig s)])
                  TF.validator

instance P.HasCheckDuplicate (NetworkResource s) (TF.Attr s P.Bool) where
    checkDuplicate =
        P.lens (_checkDuplicate :: NetworkResource s -> TF.Attr s P.Bool)
               (\s a -> s { _checkDuplicate = a } :: NetworkResource s)

instance P.HasIpamConfig (NetworkResource s) (TF.Attr s [TF.Attr s (IpamConfig s)]) where
    ipamConfig =
        P.lens (_ipamConfig :: NetworkResource s -> TF.Attr s [TF.Attr s (IpamConfig s)])
               (\s a -> s { _ipamConfig = a } :: NetworkResource s)

instance P.HasIpamDriver (NetworkResource s) (TF.Attr s P.Text) where
    ipamDriver =
        P.lens (_ipamDriver :: NetworkResource s -> TF.Attr s P.Text)
               (\s a -> s { _ipamDriver = a } :: NetworkResource s)

instance P.HasName (NetworkResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: NetworkResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: NetworkResource s)

instance s ~ s' => P.HasComputedDriver (TF.Ref s' (NetworkResource s)) (TF.Attr s P.Text) where
    computedDriver x = TF.compute (TF.refKey x) "_computedDriver"

instance s ~ s' => P.HasComputedInternal (TF.Ref s' (NetworkResource s)) (TF.Attr s P.Bool) where
    computedInternal x = TF.compute (TF.refKey x) "_computedInternal"

instance s ~ s' => P.HasComputedOptions (TF.Ref s' (NetworkResource s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedOptions x = TF.compute (TF.refKey x) "_computedOptions"

instance s ~ s' => P.HasComputedScope (TF.Ref s' (NetworkResource s)) (TF.Attr s P.Text) where
    computedScope x = TF.compute (TF.refKey x) "_computedScope"

-- | @docker_secret@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_secret terraform documentation>
-- for more information.
data SecretResource s = SecretResource'
    { _data' :: TF.Attr s P.Text
    -- ^ @data@ - (Required)
    -- User-defined name of the secret
    --
    , _name  :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    -- User-defined name of the secret
    --
    } deriving (P.Show, P.Eq, P.Generic)

secretResource
    :: TF.Attr s P.Text -- ^ @data@ - 'P.data''
    -> TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Resource P.Provider (SecretResource s)
secretResource _data' _name =
    TF.newResource "docker_secret" TF.validator $
        SecretResource'
            { _data' = _data'
            , _name = _name
            }

instance TF.IsObject (SecretResource s) where
    toObject SecretResource'{..} = P.catMaybes
        [ TF.assign "data" <$> TF.attribute _data'
        , TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (SecretResource s) where
    validator = P.mempty

instance P.HasData' (SecretResource s) (TF.Attr s P.Text) where
    data' =
        P.lens (_data' :: SecretResource s -> TF.Attr s P.Text)
               (\s a -> s { _data' = a } :: SecretResource s)

instance P.HasName (SecretResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SecretResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: SecretResource s)

-- | @docker_service@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_service terraform documentation>
-- for more information.
data ServiceResource s = ServiceResource'
    { _auth           :: TF.Attr s (P.HashMap P.Text (Auth s))
    -- ^ @auth@ - (Optional)
    --
    , _convergeConfig :: TF.Attr s (ConvergeConfig s)
    -- ^ @converge_config@ - (Optional)
    -- A configuration to ensure that a service converges aka reaches the desired
    -- that of all task up and running
    --
    , _name           :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    -- Name of the service
    --
    , _rollbackConfig :: TF.Attr s (RollbackConfig s)
    -- ^ @rollback_config@ - (Optional)
    -- Specification for the rollback strategy of the service
    --
    , _taskSpec       :: TF.Attr s (TaskSpec s)
    -- ^ @task_spec@ - (Required)
    -- User modifiable task configuration
    --
    , _updateConfig   :: TF.Attr s (UpdateConfig s)
    -- ^ @update_config@ - (Optional)
    -- Specification for the update strategy of the service
    --
    } deriving (P.Show, P.Eq, P.Generic)

serviceResource
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s (TaskSpec s) -- ^ @task_spec@ - 'P.taskSpec'
    -> TF.Resource P.Provider (ServiceResource s)
serviceResource _name _taskSpec =
    TF.newResource "docker_service" TF.validator $
        ServiceResource'
            { _auth = TF.Nil
            , _convergeConfig = TF.Nil
            , _name = _name
            , _rollbackConfig = TF.Nil
            , _taskSpec = _taskSpec
            , _updateConfig = TF.Nil
            }

instance TF.IsObject (ServiceResource s) where
    toObject ServiceResource'{..} = P.catMaybes
        [ TF.assign "auth" <$> TF.attribute _auth
        , TF.assign "converge_config" <$> TF.attribute _convergeConfig
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "rollback_config" <$> TF.attribute _rollbackConfig
        , TF.assign "task_spec" <$> TF.attribute _taskSpec
        , TF.assign "update_config" <$> TF.attribute _updateConfig
        ]

instance TF.IsValid (ServiceResource s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_auth"
                  (_auth
                      :: ServiceResource s -> TF.Attr s (P.HashMap P.Text (Auth s)))
                  TF.validator
           P.<> TF.settingsValidator "_convergeConfig"
                  (_convergeConfig
                      :: ServiceResource s -> TF.Attr s (ConvergeConfig s))
                  TF.validator
           P.<> TF.settingsValidator "_rollbackConfig"
                  (_rollbackConfig
                      :: ServiceResource s -> TF.Attr s (RollbackConfig s))
                  TF.validator
           P.<> TF.settingsValidator "_taskSpec"
                  (_taskSpec
                      :: ServiceResource s -> TF.Attr s (TaskSpec s))
                  TF.validator
           P.<> TF.settingsValidator "_updateConfig"
                  (_updateConfig
                      :: ServiceResource s -> TF.Attr s (UpdateConfig s))
                  TF.validator

instance P.HasAuth (ServiceResource s) (TF.Attr s (P.HashMap P.Text (Auth s))) where
    auth =
        P.lens (_auth :: ServiceResource s -> TF.Attr s (P.HashMap P.Text (Auth s)))
               (\s a -> s { _auth = a } :: ServiceResource s)

instance P.HasConvergeConfig (ServiceResource s) (TF.Attr s (ConvergeConfig s)) where
    convergeConfig =
        P.lens (_convergeConfig :: ServiceResource s -> TF.Attr s (ConvergeConfig s))
               (\s a -> s { _convergeConfig = a } :: ServiceResource s)

instance P.HasName (ServiceResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ServiceResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: ServiceResource s)

instance P.HasRollbackConfig (ServiceResource s) (TF.Attr s (RollbackConfig s)) where
    rollbackConfig =
        P.lens (_rollbackConfig :: ServiceResource s -> TF.Attr s (RollbackConfig s))
               (\s a -> s { _rollbackConfig = a } :: ServiceResource s)

instance P.HasTaskSpec (ServiceResource s) (TF.Attr s (TaskSpec s)) where
    taskSpec =
        P.lens (_taskSpec :: ServiceResource s -> TF.Attr s (TaskSpec s))
               (\s a -> s { _taskSpec = a } :: ServiceResource s)

instance P.HasUpdateConfig (ServiceResource s) (TF.Attr s (UpdateConfig s)) where
    updateConfig =
        P.lens (_updateConfig :: ServiceResource s -> TF.Attr s (UpdateConfig s))
               (\s a -> s { _updateConfig = a } :: ServiceResource s)

instance s ~ s' => P.HasComputedEndpointSpec (TF.Ref s' (ServiceResource s)) (TF.Attr s (EndpointSpec s)) where
    computedEndpointSpec x = TF.compute (TF.refKey x) "_computedEndpointSpec"

instance s ~ s' => P.HasComputedLabels (TF.Ref s' (ServiceResource s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedLabels x = TF.compute (TF.refKey x) "_computedLabels"

instance s ~ s' => P.HasComputedMode (TF.Ref s' (ServiceResource s)) (TF.Attr s (Mode s)) where
    computedMode x = TF.compute (TF.refKey x) "_computedMode"

-- | @docker_volume@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Docker/docker_volume terraform documentation>
-- for more information.
data VolumeResource s = VolumeResource'
    { _driverOpts :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @driver_opts@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

volumeResource
    :: TF.Resource P.Provider (VolumeResource s)
volumeResource =
    TF.newResource "docker_volume" TF.validator $
        VolumeResource'
            { _driverOpts = TF.Nil
            }

instance TF.IsObject (VolumeResource s) where
    toObject VolumeResource'{..} = P.catMaybes
        [ TF.assign "driver_opts" <$> TF.attribute _driverOpts
        ]

instance TF.IsValid (VolumeResource s) where
    validator = P.mempty

instance P.HasDriverOpts (VolumeResource s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    driverOpts =
        P.lens (_driverOpts :: VolumeResource s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _driverOpts = a } :: VolumeResource s)

instance s ~ s' => P.HasComputedDriver (TF.Ref s' (VolumeResource s)) (TF.Attr s P.Text) where
    computedDriver x = TF.compute (TF.refKey x) "_computedDriver"

instance s ~ s' => P.HasComputedMountpoint (TF.Ref s' (VolumeResource s)) (TF.Attr s P.Text) where
    computedMountpoint x = TF.compute (TF.refKey x) "_computedMountpoint"

instance s ~ s' => P.HasComputedName (TF.Ref s' (VolumeResource s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"
