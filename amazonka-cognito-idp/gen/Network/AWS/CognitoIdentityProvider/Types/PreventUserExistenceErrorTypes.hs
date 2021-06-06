{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.PreventUserExistenceErrorTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.PreventUserExistenceErrorTypes
  ( PreventUserExistenceErrorTypes
      ( ..,
        PreventUserExistenceErrorTypes_ENABLED,
        PreventUserExistenceErrorTypes_LEGACY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PreventUserExistenceErrorTypes = PreventUserExistenceErrorTypes'
  { fromPreventUserExistenceErrorTypes ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern PreventUserExistenceErrorTypes_ENABLED :: PreventUserExistenceErrorTypes
pattern PreventUserExistenceErrorTypes_ENABLED = PreventUserExistenceErrorTypes' "ENABLED"

pattern PreventUserExistenceErrorTypes_LEGACY :: PreventUserExistenceErrorTypes
pattern PreventUserExistenceErrorTypes_LEGACY = PreventUserExistenceErrorTypes' "LEGACY"

{-# COMPLETE
  PreventUserExistenceErrorTypes_ENABLED,
  PreventUserExistenceErrorTypes_LEGACY,
  PreventUserExistenceErrorTypes'
  #-}