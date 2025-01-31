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
-- Module      : Amazonka.MediaConvert.Types.H264UnregisteredSeiTimecode
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.H264UnregisteredSeiTimecode
  ( H264UnregisteredSeiTimecode
      ( ..,
        H264UnregisteredSeiTimecode_DISABLED,
        H264UnregisteredSeiTimecode_ENABLED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI
-- message.
newtype H264UnregisteredSeiTimecode = H264UnregisteredSeiTimecode'
  { fromH264UnregisteredSeiTimecode ::
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

pattern H264UnregisteredSeiTimecode_DISABLED :: H264UnregisteredSeiTimecode
pattern H264UnregisteredSeiTimecode_DISABLED = H264UnregisteredSeiTimecode' "DISABLED"

pattern H264UnregisteredSeiTimecode_ENABLED :: H264UnregisteredSeiTimecode
pattern H264UnregisteredSeiTimecode_ENABLED = H264UnregisteredSeiTimecode' "ENABLED"

{-# COMPLETE
  H264UnregisteredSeiTimecode_DISABLED,
  H264UnregisteredSeiTimecode_ENABLED,
  H264UnregisteredSeiTimecode'
  #-}
