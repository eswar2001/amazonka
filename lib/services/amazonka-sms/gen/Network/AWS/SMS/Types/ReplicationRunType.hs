{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SMS.Types.ReplicationRunType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SMS.Types.ReplicationRunType
  ( ReplicationRunType
      ( ..,
        ReplicationRunType_AUTOMATIC,
        ReplicationRunType_ON_DEMAND
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ReplicationRunType = ReplicationRunType'
  { fromReplicationRunType ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern ReplicationRunType_AUTOMATIC :: ReplicationRunType
pattern ReplicationRunType_AUTOMATIC = ReplicationRunType' "AUTOMATIC"

pattern ReplicationRunType_ON_DEMAND :: ReplicationRunType
pattern ReplicationRunType_ON_DEMAND = ReplicationRunType' "ON_DEMAND"

{-# COMPLETE
  ReplicationRunType_AUTOMATIC,
  ReplicationRunType_ON_DEMAND,
  ReplicationRunType'
  #-}
