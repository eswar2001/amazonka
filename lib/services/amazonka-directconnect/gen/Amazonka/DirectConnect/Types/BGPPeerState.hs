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
-- Module      : Amazonka.DirectConnect.Types.BGPPeerState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectConnect.Types.BGPPeerState
  ( BGPPeerState
      ( ..,
        BGPPeerState_Available,
        BGPPeerState_Deleted,
        BGPPeerState_Deleting,
        BGPPeerState_Pending,
        BGPPeerState_Verifying
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype BGPPeerState = BGPPeerState'
  { fromBGPPeerState ::
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

pattern BGPPeerState_Available :: BGPPeerState
pattern BGPPeerState_Available = BGPPeerState' "available"

pattern BGPPeerState_Deleted :: BGPPeerState
pattern BGPPeerState_Deleted = BGPPeerState' "deleted"

pattern BGPPeerState_Deleting :: BGPPeerState
pattern BGPPeerState_Deleting = BGPPeerState' "deleting"

pattern BGPPeerState_Pending :: BGPPeerState
pattern BGPPeerState_Pending = BGPPeerState' "pending"

pattern BGPPeerState_Verifying :: BGPPeerState
pattern BGPPeerState_Verifying = BGPPeerState' "verifying"

{-# COMPLETE
  BGPPeerState_Available,
  BGPPeerState_Deleted,
  BGPPeerState_Deleting,
  BGPPeerState_Pending,
  BGPPeerState_Verifying,
  BGPPeerState'
  #-}
