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
-- Module      : Amazonka.EC2.Types.FpgaImageStateCode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FpgaImageStateCode
  ( FpgaImageStateCode
      ( ..,
        FpgaImageStateCode_Available,
        FpgaImageStateCode_Failed,
        FpgaImageStateCode_Pending,
        FpgaImageStateCode_Unavailable
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype FpgaImageStateCode = FpgaImageStateCode'
  { fromFpgaImageStateCode ::
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

pattern FpgaImageStateCode_Available :: FpgaImageStateCode
pattern FpgaImageStateCode_Available = FpgaImageStateCode' "available"

pattern FpgaImageStateCode_Failed :: FpgaImageStateCode
pattern FpgaImageStateCode_Failed = FpgaImageStateCode' "failed"

pattern FpgaImageStateCode_Pending :: FpgaImageStateCode
pattern FpgaImageStateCode_Pending = FpgaImageStateCode' "pending"

pattern FpgaImageStateCode_Unavailable :: FpgaImageStateCode
pattern FpgaImageStateCode_Unavailable = FpgaImageStateCode' "unavailable"

{-# COMPLETE
  FpgaImageStateCode_Available,
  FpgaImageStateCode_Failed,
  FpgaImageStateCode_Pending,
  FpgaImageStateCode_Unavailable,
  FpgaImageStateCode'
  #-}
