-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Datadog.Resource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Datadog.Resource
    (
    -- * Resource Datatypes
    -- ** datadog_downtime
      DowntimeResource (..)
    , downtimeResource

    -- ** datadog_metric_metadata
    , MetricMetadataResource (..)
    , metricMetadataResource

    -- ** datadog_monitor
    , MonitorResource (..)
    , monitorResource

    -- ** datadog_timeboard
    , TimeboardResource (..)
    , timeboardResource

    -- ** datadog_user
    , UserResource (..)
    , userResource

    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (($))

import Terrafomo.Datadog.Settings

import qualified Data.Hashable              as P
import qualified Data.HashMap.Strict        as P
import qualified Data.List.NonEmpty         as P
import qualified Data.Text                  as P
import qualified GHC.Generics               as P
import qualified Lens.Micro                 as P
import qualified Prelude                    as P
import qualified Terrafomo.Attribute        as TF
import qualified Terrafomo.Datadog.Lens     as P
import qualified Terrafomo.Datadog.Provider as P
import qualified Terrafomo.Datadog.Types    as P
import qualified Terrafomo.HCL              as TF
import qualified Terrafomo.Name             as TF
import qualified Terrafomo.Schema           as TF

-- | @datadog_downtime@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Datadog/datadog_downtime terraform documentation>
-- for more information.
data DowntimeResource s = DowntimeResource'
    { _active     :: TF.Attr s P.Bool
    -- ^ @active@ - (Optional)
    --
    , _disabled   :: TF.Attr s P.Bool
    -- ^ @disabled@ - (Optional)
    --
    , _end        :: TF.Attr s P.Integer
    -- ^ @end@ - (Optional)
    --
    , _message    :: TF.Attr s P.Text
    -- ^ @message@ - (Optional)
    --
    , _monitorId  :: TF.Attr s P.Integer
    -- ^ @monitor_id@ - (Optional)
    --
    , _recurrence :: TF.Attr s [Recurrence s]
    -- ^ @recurrence@ - (Optional)
    --
    , _scope      :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @scope@ - (Required)
    --
    , _start      :: TF.Attr s P.Integer
    -- ^ @start@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (DowntimeResource s) where
    toObject DowntimeResource'{..} = catMaybes
        [ TF.assign "active" <$> TF.attribute _active
        , TF.assign "disabled" <$> TF.attribute _disabled
        , TF.assign "end" <$> TF.attribute _end
        , TF.assign "message" <$> TF.attribute _message
        , TF.assign "monitor_id" <$> TF.attribute _monitorId
        , TF.assign "recurrence" <$> TF.attribute _recurrence
        , TF.assign "scope" <$> TF.attribute _scope
        , TF.assign "start" <$> TF.attribute _start
        ]

downtimeResource
    :: TF.Attr s [TF.Attr s P.Text] -- ^ @scope@ - 'P.scope'
    -> TF.Resource P.Provider (DowntimeResource s)
downtimeResource _scope =
    TF.newResource "datadog_downtime" $
        DowntimeResource'
            { _active = TF.Nil
            , _disabled = TF.Nil
            , _end = TF.Nil
            , _message = TF.Nil
            , _monitorId = TF.Nil
            , _recurrence = TF.Nil
            , _scope = _scope
            , _start = TF.Nil
            }

instance P.HasActive (DowntimeResource s) (TF.Attr s P.Bool) where
    active =
        P.lens (_active :: DowntimeResource s -> TF.Attr s P.Bool)
               (\s a -> s { _active = a
                          } :: DowntimeResource s)

instance P.HasDisabled (DowntimeResource s) (TF.Attr s P.Bool) where
    disabled =
        P.lens (_disabled :: DowntimeResource s -> TF.Attr s P.Bool)
               (\s a -> s { _disabled = a
                          } :: DowntimeResource s)

instance P.HasEnd (DowntimeResource s) (TF.Attr s P.Integer) where
    end =
        P.lens (_end :: DowntimeResource s -> TF.Attr s P.Integer)
               (\s a -> s { _end = a
                          } :: DowntimeResource s)

instance P.HasMessage (DowntimeResource s) (TF.Attr s P.Text) where
    message =
        P.lens (_message :: DowntimeResource s -> TF.Attr s P.Text)
               (\s a -> s { _message = a
                          } :: DowntimeResource s)

instance P.HasMonitorId (DowntimeResource s) (TF.Attr s P.Integer) where
    monitorId =
        P.lens (_monitorId :: DowntimeResource s -> TF.Attr s P.Integer)
               (\s a -> s { _monitorId = a
                          } :: DowntimeResource s)

instance P.HasRecurrence (DowntimeResource s) (TF.Attr s [Recurrence s]) where
    recurrence =
        P.lens (_recurrence :: DowntimeResource s -> TF.Attr s [Recurrence s])
               (\s a -> s { _recurrence = a
                          } :: DowntimeResource s)

instance P.HasScope (DowntimeResource s) (TF.Attr s [TF.Attr s P.Text]) where
    scope =
        P.lens (_scope :: DowntimeResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _scope = a
                          } :: DowntimeResource s)

instance P.HasStart (DowntimeResource s) (TF.Attr s P.Integer) where
    start =
        P.lens (_start :: DowntimeResource s -> TF.Attr s P.Integer)
               (\s a -> s { _start = a
                          } :: DowntimeResource s)

-- | @datadog_metric_metadata@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Datadog/datadog_metric_metadata terraform documentation>
-- for more information.
data MetricMetadataResource s = MetricMetadataResource'
    { _description    :: TF.Attr s P.Text
    -- ^ @description@ - (Optional)
    --
    , _metric         :: TF.Attr s P.Text
    -- ^ @metric@ - (Required)
    --
    , _perUnit        :: TF.Attr s P.Text
    -- ^ @per_unit@ - (Optional)
    --
    , _shortName      :: TF.Attr s P.Text
    -- ^ @short_name@ - (Optional)
    --
    , _statsdInterval :: TF.Attr s P.Integer
    -- ^ @statsd_interval@ - (Optional)
    --
    , _type'          :: TF.Attr s P.Text
    -- ^ @type@ - (Optional)
    --
    , _unit           :: TF.Attr s P.Text
    -- ^ @unit@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (MetricMetadataResource s) where
    toObject MetricMetadataResource'{..} = catMaybes
        [ TF.assign "description" <$> TF.attribute _description
        , TF.assign "metric" <$> TF.attribute _metric
        , TF.assign "per_unit" <$> TF.attribute _perUnit
        , TF.assign "short_name" <$> TF.attribute _shortName
        , TF.assign "statsd_interval" <$> TF.attribute _statsdInterval
        , TF.assign "type" <$> TF.attribute _type'
        , TF.assign "unit" <$> TF.attribute _unit
        ]

metricMetadataResource
    :: TF.Attr s P.Text -- ^ @metric@ - 'P.metric'
    -> TF.Resource P.Provider (MetricMetadataResource s)
metricMetadataResource _metric =
    TF.newResource "datadog_metric_metadata" $
        MetricMetadataResource'
            { _description = TF.Nil
            , _metric = _metric
            , _perUnit = TF.Nil
            , _shortName = TF.Nil
            , _statsdInterval = TF.Nil
            , _type' = TF.Nil
            , _unit = TF.Nil
            }

instance P.HasDescription (MetricMetadataResource s) (TF.Attr s P.Text) where
    description =
        P.lens (_description :: MetricMetadataResource s -> TF.Attr s P.Text)
               (\s a -> s { _description = a
                          } :: MetricMetadataResource s)

instance P.HasMetric (MetricMetadataResource s) (TF.Attr s P.Text) where
    metric =
        P.lens (_metric :: MetricMetadataResource s -> TF.Attr s P.Text)
               (\s a -> s { _metric = a
                          } :: MetricMetadataResource s)

instance P.HasPerUnit (MetricMetadataResource s) (TF.Attr s P.Text) where
    perUnit =
        P.lens (_perUnit :: MetricMetadataResource s -> TF.Attr s P.Text)
               (\s a -> s { _perUnit = a
                          } :: MetricMetadataResource s)

instance P.HasShortName (MetricMetadataResource s) (TF.Attr s P.Text) where
    shortName =
        P.lens (_shortName :: MetricMetadataResource s -> TF.Attr s P.Text)
               (\s a -> s { _shortName = a
                          } :: MetricMetadataResource s)

instance P.HasStatsdInterval (MetricMetadataResource s) (TF.Attr s P.Integer) where
    statsdInterval =
        P.lens (_statsdInterval :: MetricMetadataResource s -> TF.Attr s P.Integer)
               (\s a -> s { _statsdInterval = a
                          } :: MetricMetadataResource s)

instance P.HasType' (MetricMetadataResource s) (TF.Attr s P.Text) where
    type' =
        P.lens (_type' :: MetricMetadataResource s -> TF.Attr s P.Text)
               (\s a -> s { _type' = a
                          } :: MetricMetadataResource s)

instance P.HasUnit (MetricMetadataResource s) (TF.Attr s P.Text) where
    unit =
        P.lens (_unit :: MetricMetadataResource s -> TF.Attr s P.Text)
               (\s a -> s { _unit = a
                          } :: MetricMetadataResource s)

-- | @datadog_monitor@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Datadog/datadog_monitor terraform documentation>
-- for more information.
data MonitorResource s = MonitorResource'
    { _escalationMessage :: TF.Attr s P.Text
    -- ^ @escalation_message@ - (Optional)
    --
    , _includeTags       :: TF.Attr s P.Bool
    -- ^ @include_tags@ - (Optional)
    --
    , _locked            :: TF.Attr s P.Bool
    -- ^ @locked@ - (Optional)
    --
    , _message           :: TF.Attr s P.Text
    -- ^ @message@ - (Required)
    --
    , _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _noDataTimeframe   :: TF.Attr s P.Integer
    -- ^ @no_data_timeframe@ - (Optional)
    --
    , _notifyAudit       :: TF.Attr s P.Bool
    -- ^ @notify_audit@ - (Optional)
    --
    , _notifyNoData      :: TF.Attr s P.Bool
    -- ^ @notify_no_data@ - (Optional)
    --
    , _query             :: TF.Attr s P.Text
    -- ^ @query@ - (Required)
    --
    , _renotifyInterval  :: TF.Attr s P.Integer
    -- ^ @renotify_interval@ - (Optional)
    --
    , _requireFullWindow :: TF.Attr s P.Bool
    -- ^ @require_full_window@ - (Optional)
    --
    , _silenced          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @silenced@ - (Optional)
    --
    , _tags              :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @tags@ - (Optional)
    --
    , _thresholds        :: TF.Attr s (P.HashMap P.Text (Thresholds s))
    -- ^ @thresholds@ - (Optional)
    --
    , _timeoutH          :: TF.Attr s P.Integer
    -- ^ @timeout_h@ - (Optional)
    --
    , _type'             :: TF.Attr s P.Text
    -- ^ @type@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (MonitorResource s) where
    toObject MonitorResource'{..} = catMaybes
        [ TF.assign "escalation_message" <$> TF.attribute _escalationMessage
        , TF.assign "include_tags" <$> TF.attribute _includeTags
        , TF.assign "locked" <$> TF.attribute _locked
        , TF.assign "message" <$> TF.attribute _message
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "no_data_timeframe" <$> TF.attribute _noDataTimeframe
        , TF.assign "notify_audit" <$> TF.attribute _notifyAudit
        , TF.assign "notify_no_data" <$> TF.attribute _notifyNoData
        , TF.assign "query" <$> TF.attribute _query
        , TF.assign "renotify_interval" <$> TF.attribute _renotifyInterval
        , TF.assign "require_full_window" <$> TF.attribute _requireFullWindow
        , TF.assign "silenced" <$> TF.attribute _silenced
        , TF.assign "tags" <$> TF.attribute _tags
        , TF.assign "thresholds" <$> TF.attribute _thresholds
        , TF.assign "timeout_h" <$> TF.attribute _timeoutH
        , TF.assign "type" <$> TF.attribute _type'
        ]

monitorResource
    :: TF.Attr s P.Text -- ^ @message@ - 'P.message'
    -> TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @query@ - 'P.query'
    -> TF.Attr s P.Text -- ^ @type@ - 'P.type''
    -> TF.Resource P.Provider (MonitorResource s)
monitorResource _message _name _query _type' =
    TF.newResource "datadog_monitor" $
        MonitorResource'
            { _escalationMessage = TF.Nil
            , _includeTags = TF.value P.True
            , _locked = TF.Nil
            , _message = _message
            , _name = _name
            , _noDataTimeframe = TF.Nil
            , _notifyAudit = TF.Nil
            , _notifyNoData = TF.value P.False
            , _query = _query
            , _renotifyInterval = TF.Nil
            , _requireFullWindow = TF.value P.True
            , _silenced = TF.Nil
            , _tags = TF.Nil
            , _thresholds = TF.Nil
            , _timeoutH = TF.Nil
            , _type' = _type'
            }

instance P.HasEscalationMessage (MonitorResource s) (TF.Attr s P.Text) where
    escalationMessage =
        P.lens (_escalationMessage :: MonitorResource s -> TF.Attr s P.Text)
               (\s a -> s { _escalationMessage = a
                          } :: MonitorResource s)

instance P.HasIncludeTags (MonitorResource s) (TF.Attr s P.Bool) where
    includeTags =
        P.lens (_includeTags :: MonitorResource s -> TF.Attr s P.Bool)
               (\s a -> s { _includeTags = a
                          } :: MonitorResource s)

instance P.HasLocked (MonitorResource s) (TF.Attr s P.Bool) where
    locked =
        P.lens (_locked :: MonitorResource s -> TF.Attr s P.Bool)
               (\s a -> s { _locked = a
                          } :: MonitorResource s)

instance P.HasMessage (MonitorResource s) (TF.Attr s P.Text) where
    message =
        P.lens (_message :: MonitorResource s -> TF.Attr s P.Text)
               (\s a -> s { _message = a
                          } :: MonitorResource s)

instance P.HasName (MonitorResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: MonitorResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: MonitorResource s)

instance P.HasNoDataTimeframe (MonitorResource s) (TF.Attr s P.Integer) where
    noDataTimeframe =
        P.lens (_noDataTimeframe :: MonitorResource s -> TF.Attr s P.Integer)
               (\s a -> s { _noDataTimeframe = a
                          } :: MonitorResource s)

instance P.HasNotifyAudit (MonitorResource s) (TF.Attr s P.Bool) where
    notifyAudit =
        P.lens (_notifyAudit :: MonitorResource s -> TF.Attr s P.Bool)
               (\s a -> s { _notifyAudit = a
                          } :: MonitorResource s)

instance P.HasNotifyNoData (MonitorResource s) (TF.Attr s P.Bool) where
    notifyNoData =
        P.lens (_notifyNoData :: MonitorResource s -> TF.Attr s P.Bool)
               (\s a -> s { _notifyNoData = a
                          } :: MonitorResource s)

instance P.HasQuery (MonitorResource s) (TF.Attr s P.Text) where
    query =
        P.lens (_query :: MonitorResource s -> TF.Attr s P.Text)
               (\s a -> s { _query = a
                          } :: MonitorResource s)

instance P.HasRenotifyInterval (MonitorResource s) (TF.Attr s P.Integer) where
    renotifyInterval =
        P.lens (_renotifyInterval :: MonitorResource s -> TF.Attr s P.Integer)
               (\s a -> s { _renotifyInterval = a
                          } :: MonitorResource s)

instance P.HasRequireFullWindow (MonitorResource s) (TF.Attr s P.Bool) where
    requireFullWindow =
        P.lens (_requireFullWindow :: MonitorResource s -> TF.Attr s P.Bool)
               (\s a -> s { _requireFullWindow = a
                          } :: MonitorResource s)

instance P.HasSilenced (MonitorResource s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    silenced =
        P.lens (_silenced :: MonitorResource s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _silenced = a
                          } :: MonitorResource s)

instance P.HasTags (MonitorResource s) (TF.Attr s [TF.Attr s P.Text]) where
    tags =
        P.lens (_tags :: MonitorResource s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _tags = a
                          } :: MonitorResource s)

instance P.HasThresholds (MonitorResource s) (TF.Attr s (P.HashMap P.Text (Thresholds s))) where
    thresholds =
        P.lens (_thresholds :: MonitorResource s -> TF.Attr s (P.HashMap P.Text (Thresholds s)))
               (\s a -> s { _thresholds = a
                          } :: MonitorResource s)

instance P.HasTimeoutH (MonitorResource s) (TF.Attr s P.Integer) where
    timeoutH =
        P.lens (_timeoutH :: MonitorResource s -> TF.Attr s P.Integer)
               (\s a -> s { _timeoutH = a
                          } :: MonitorResource s)

instance P.HasType' (MonitorResource s) (TF.Attr s P.Text) where
    type' =
        P.lens (_type' :: MonitorResource s -> TF.Attr s P.Text)
               (\s a -> s { _type' = a
                          } :: MonitorResource s)

instance s ~ s' => P.HasComputedEvaluationDelay (TF.Ref s' (MonitorResource s)) (TF.Attr s P.Integer) where
    computedEvaluationDelay x = TF.compute (TF.refKey x) "evaluation_delay"

instance s ~ s' => P.HasComputedNewHostDelay (TF.Ref s' (MonitorResource s)) (TF.Attr s P.Integer) where
    computedNewHostDelay x = TF.compute (TF.refKey x) "new_host_delay"

-- | @datadog_timeboard@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Datadog/datadog_timeboard terraform documentation>
-- for more information.
data TimeboardResource s = TimeboardResource'
    { _description      :: TF.Attr s P.Text
    -- ^ @description@ - (Required)
    -- A description of the dashboard's content.
    --
    , _graph            :: TF.Attr s [Graph s]
    -- ^ @graph@ - (Required)
    -- A list of graph definitions.
    --
    , _readOnly         :: TF.Attr s P.Bool
    -- ^ @read_only@ - (Optional)
    --
    , _templateVariable :: TF.Attr s [TemplateVariable s]
    -- ^ @template_variable@ - (Optional)
    -- A list of template variables for using Dashboard templating.
    --
    , _title            :: TF.Attr s P.Text
    -- ^ @title@ - (Required)
    -- The name of the dashboard.
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (TimeboardResource s) where
    toObject TimeboardResource'{..} = catMaybes
        [ TF.assign "description" <$> TF.attribute _description
        , TF.assign "graph" <$> TF.attribute _graph
        , TF.assign "read_only" <$> TF.attribute _readOnly
        , TF.assign "template_variable" <$> TF.attribute _templateVariable
        , TF.assign "title" <$> TF.attribute _title
        ]

timeboardResource
    :: TF.Attr s P.Text -- ^ @description@ - 'P.description'
    -> TF.Attr s [Graph s] -- ^ @graph@ - 'P.graph'
    -> TF.Attr s P.Text -- ^ @title@ - 'P.title'
    -> TF.Resource P.Provider (TimeboardResource s)
timeboardResource _description _graph _title =
    TF.newResource "datadog_timeboard" $
        TimeboardResource'
            { _description = _description
            , _graph = _graph
            , _readOnly = TF.value P.False
            , _templateVariable = TF.Nil
            , _title = _title
            }

instance P.HasDescription (TimeboardResource s) (TF.Attr s P.Text) where
    description =
        P.lens (_description :: TimeboardResource s -> TF.Attr s P.Text)
               (\s a -> s { _description = a
                          } :: TimeboardResource s)

instance P.HasGraph (TimeboardResource s) (TF.Attr s [Graph s]) where
    graph =
        P.lens (_graph :: TimeboardResource s -> TF.Attr s [Graph s])
               (\s a -> s { _graph = a
                          } :: TimeboardResource s)

instance P.HasReadOnly (TimeboardResource s) (TF.Attr s P.Bool) where
    readOnly =
        P.lens (_readOnly :: TimeboardResource s -> TF.Attr s P.Bool)
               (\s a -> s { _readOnly = a
                          } :: TimeboardResource s)

instance P.HasTemplateVariable (TimeboardResource s) (TF.Attr s [TemplateVariable s]) where
    templateVariable =
        P.lens (_templateVariable :: TimeboardResource s -> TF.Attr s [TemplateVariable s])
               (\s a -> s { _templateVariable = a
                          } :: TimeboardResource s)

instance P.HasTitle (TimeboardResource s) (TF.Attr s P.Text) where
    title =
        P.lens (_title :: TimeboardResource s -> TF.Attr s P.Text)
               (\s a -> s { _title = a
                          } :: TimeboardResource s)

-- | @datadog_user@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Datadog/datadog_user terraform documentation>
-- for more information.
data UserResource s = UserResource'
    { _disabled :: TF.Attr s P.Bool
    -- ^ @disabled@ - (Optional)
    --
    , _email    :: TF.Attr s P.Text
    -- ^ @email@ - (Required)
    --
    , _handle   :: TF.Attr s P.Text
    -- ^ @handle@ - (Required)
    --
    , _isAdmin  :: TF.Attr s P.Bool
    -- ^ @is_admin@ - (Optional)
    --
    , _name     :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _role     :: TF.Attr s P.Text
    -- ^ @role@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (UserResource s) where
    toObject UserResource'{..} = catMaybes
        [ TF.assign "disabled" <$> TF.attribute _disabled
        , TF.assign "email" <$> TF.attribute _email
        , TF.assign "handle" <$> TF.attribute _handle
        , TF.assign "is_admin" <$> TF.attribute _isAdmin
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "role" <$> TF.attribute _role
        ]

userResource
    :: TF.Attr s P.Text -- ^ @email@ - 'P.email'
    -> TF.Attr s P.Text -- ^ @handle@ - 'P.handle'
    -> TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Resource P.Provider (UserResource s)
userResource _email _handle _name =
    TF.newResource "datadog_user" $
        UserResource'
            { _disabled = TF.value P.False
            , _email = _email
            , _handle = _handle
            , _isAdmin = TF.value P.False
            , _name = _name
            , _role = TF.Nil
            }

instance P.HasDisabled (UserResource s) (TF.Attr s P.Bool) where
    disabled =
        P.lens (_disabled :: UserResource s -> TF.Attr s P.Bool)
               (\s a -> s { _disabled = a
                          } :: UserResource s)

instance P.HasEmail (UserResource s) (TF.Attr s P.Text) where
    email =
        P.lens (_email :: UserResource s -> TF.Attr s P.Text)
               (\s a -> s { _email = a
                          } :: UserResource s)

instance P.HasHandle (UserResource s) (TF.Attr s P.Text) where
    handle =
        P.lens (_handle :: UserResource s -> TF.Attr s P.Text)
               (\s a -> s { _handle = a
                          } :: UserResource s)

instance P.HasIsAdmin (UserResource s) (TF.Attr s P.Bool) where
    isAdmin =
        P.lens (_isAdmin :: UserResource s -> TF.Attr s P.Bool)
               (\s a -> s { _isAdmin = a
                          } :: UserResource s)

instance P.HasName (UserResource s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: UserResource s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: UserResource s)

instance P.HasRole (UserResource s) (TF.Attr s P.Text) where
    role =
        P.lens (_role :: UserResource s -> TF.Attr s P.Text)
               (\s a -> s { _role = a
                          } :: UserResource s)

instance s ~ s' => P.HasComputedVerified (TF.Ref s' (UserResource s)) (TF.Attr s P.Bool) where
    computedVerified x = TF.compute (TF.refKey x) "verified"
