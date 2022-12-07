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
-- Module      : Amazonka.Kendra.Types.IndexStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.IndexStatus
  ( IndexStatus
      ( ..,
        IndexStatus_ACTIVE,
        IndexStatus_CREATING,
        IndexStatus_DELETING,
        IndexStatus_FAILED,
        IndexStatus_SYSTEM_UPDATING,
        IndexStatus_UPDATING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype IndexStatus = IndexStatus'
  { fromIndexStatus ::
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

pattern IndexStatus_ACTIVE :: IndexStatus
pattern IndexStatus_ACTIVE = IndexStatus' "ACTIVE"

pattern IndexStatus_CREATING :: IndexStatus
pattern IndexStatus_CREATING = IndexStatus' "CREATING"

pattern IndexStatus_DELETING :: IndexStatus
pattern IndexStatus_DELETING = IndexStatus' "DELETING"

pattern IndexStatus_FAILED :: IndexStatus
pattern IndexStatus_FAILED = IndexStatus' "FAILED"

pattern IndexStatus_SYSTEM_UPDATING :: IndexStatus
pattern IndexStatus_SYSTEM_UPDATING = IndexStatus' "SYSTEM_UPDATING"

pattern IndexStatus_UPDATING :: IndexStatus
pattern IndexStatus_UPDATING = IndexStatus' "UPDATING"

{-# COMPLETE
  IndexStatus_ACTIVE,
  IndexStatus_CREATING,
  IndexStatus_DELETING,
  IndexStatus_FAILED,
  IndexStatus_SYSTEM_UPDATING,
  IndexStatus_UPDATING,
  IndexStatus'
  #-}