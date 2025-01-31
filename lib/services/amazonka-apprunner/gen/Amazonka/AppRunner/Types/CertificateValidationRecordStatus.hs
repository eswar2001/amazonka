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
-- Module      : Amazonka.AppRunner.Types.CertificateValidationRecordStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppRunner.Types.CertificateValidationRecordStatus
  ( CertificateValidationRecordStatus
      ( ..,
        CertificateValidationRecordStatus_FAILED,
        CertificateValidationRecordStatus_PENDING_VALIDATION,
        CertificateValidationRecordStatus_SUCCESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype CertificateValidationRecordStatus = CertificateValidationRecordStatus'
  { fromCertificateValidationRecordStatus ::
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

pattern CertificateValidationRecordStatus_FAILED :: CertificateValidationRecordStatus
pattern CertificateValidationRecordStatus_FAILED = CertificateValidationRecordStatus' "FAILED"

pattern CertificateValidationRecordStatus_PENDING_VALIDATION :: CertificateValidationRecordStatus
pattern CertificateValidationRecordStatus_PENDING_VALIDATION = CertificateValidationRecordStatus' "PENDING_VALIDATION"

pattern CertificateValidationRecordStatus_SUCCESS :: CertificateValidationRecordStatus
pattern CertificateValidationRecordStatus_SUCCESS = CertificateValidationRecordStatus' "SUCCESS"

{-# COMPLETE
  CertificateValidationRecordStatus_FAILED,
  CertificateValidationRecordStatus_PENDING_VALIDATION,
  CertificateValidationRecordStatus_SUCCESS,
  CertificateValidationRecordStatus'
  #-}
