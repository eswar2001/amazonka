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
-- Module      : Amazonka.NetworkManager.Types.LinkAssociationState
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkManager.Types.LinkAssociationState
  ( LinkAssociationState
      ( ..,
        LinkAssociationState_AVAILABLE,
        LinkAssociationState_DELETED,
        LinkAssociationState_DELETING,
        LinkAssociationState_PENDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype LinkAssociationState = LinkAssociationState'
  { fromLinkAssociationState ::
      Data.Text
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern LinkAssociationState_AVAILABLE :: LinkAssociationState
pattern LinkAssociationState_AVAILABLE = LinkAssociationState' "AVAILABLE"

pattern LinkAssociationState_DELETED :: LinkAssociationState
pattern LinkAssociationState_DELETED = LinkAssociationState' "DELETED"

pattern LinkAssociationState_DELETING :: LinkAssociationState
pattern LinkAssociationState_DELETING = LinkAssociationState' "DELETING"

pattern LinkAssociationState_PENDING :: LinkAssociationState
pattern LinkAssociationState_PENDING = LinkAssociationState' "PENDING"

{-# COMPLETE
  LinkAssociationState_AVAILABLE,
  LinkAssociationState_DELETED,
  LinkAssociationState_DELETING,
  LinkAssociationState_PENDING,
  LinkAssociationState'
  #-}
