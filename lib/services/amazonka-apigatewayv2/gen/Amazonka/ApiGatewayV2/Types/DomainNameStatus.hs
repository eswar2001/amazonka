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
-- Module      : Amazonka.ApiGatewayV2.Types.DomainNameStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ApiGatewayV2.Types.DomainNameStatus
  ( DomainNameStatus
      ( ..,
        DomainNameStatus_AVAILABLE,
        DomainNameStatus_PENDING_CERTIFICATE_REIMPORT,
        DomainNameStatus_PENDING_OWNERSHIP_VERIFICATION,
        DomainNameStatus_UPDATING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The status of the domain name migration. The valid values are AVAILABLE,
-- UPDATING, PENDING_CERTIFICATE_REIMPORT, and
-- PENDING_OWNERSHIP_VERIFICATION. If the status is UPDATING, the domain
-- cannot be modified further until the existing operation is complete. If
-- it is AVAILABLE, the domain can be updated.
newtype DomainNameStatus = DomainNameStatus'
  { fromDomainNameStatus ::
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

pattern DomainNameStatus_AVAILABLE :: DomainNameStatus
pattern DomainNameStatus_AVAILABLE = DomainNameStatus' "AVAILABLE"

pattern DomainNameStatus_PENDING_CERTIFICATE_REIMPORT :: DomainNameStatus
pattern DomainNameStatus_PENDING_CERTIFICATE_REIMPORT = DomainNameStatus' "PENDING_CERTIFICATE_REIMPORT"

pattern DomainNameStatus_PENDING_OWNERSHIP_VERIFICATION :: DomainNameStatus
pattern DomainNameStatus_PENDING_OWNERSHIP_VERIFICATION = DomainNameStatus' "PENDING_OWNERSHIP_VERIFICATION"

pattern DomainNameStatus_UPDATING :: DomainNameStatus
pattern DomainNameStatus_UPDATING = DomainNameStatus' "UPDATING"

{-# COMPLETE
  DomainNameStatus_AVAILABLE,
  DomainNameStatus_PENDING_CERTIFICATE_REIMPORT,
  DomainNameStatus_PENDING_OWNERSHIP_VERIFICATION,
  DomainNameStatus_UPDATING,
  DomainNameStatus'
  #-}
