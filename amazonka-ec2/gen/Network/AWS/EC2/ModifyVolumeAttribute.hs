{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

-- {-# OPTIONS_GHC -fno-warn-unused-imports #-}
-- {-# OPTIONS_GHC -fno-warn-unused-binds  #-} doesnt work if wall is used
{-# OPTIONS_GHC -w #-}

-- Module      : Network.AWS.EC2.ModifyVolumeAttribute
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Modifies a volume attribute. By default, all I/O operations for the volume
-- are suspended when the data on the volume is determined to be potentially
-- inconsistent, to prevent undetectable, latent data corruption. The I/O
-- access to the volume can be resumed by first enabling I/O access and then
-- checking the data consistency on your volume. You can change the default
-- behavior to resume I/O operations. We recommend that you change this only
-- for boot volumes or for volumes that are stateless or disposable.
module Network.AWS.EC2.ModifyVolumeAttribute
    (
    -- * Request
      ModifyVolumeAttribute
    -- ** Request constructor
    , modifyVolumeAttribute
    -- ** Request lenses
    , mvaAutoEnableIO
    , mvaDryRun
    , mvaVolumeId

    -- * Response
    , ModifyVolumeAttributeResponse
    -- ** Response constructor
    , modifyVolumeAttributeResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types
import qualified GHC.Exts

data ModifyVolumeAttribute = ModifyVolumeAttribute
    { _mvaAutoEnableIO :: Maybe AttributeBooleanValue
    , _mvaDryRun       :: Maybe Bool
    , _mvaVolumeId     :: Text
    } deriving (Eq, Show, Generic)

-- | 'ModifyVolumeAttribute' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'mvaAutoEnableIO' @::@ 'Maybe' 'AttributeBooleanValue'
--
-- * 'mvaDryRun' @::@ 'Maybe' 'Bool'
--
-- * 'mvaVolumeId' @::@ 'Text'
--
modifyVolumeAttribute :: Text -- ^ 'mvaVolumeId'
                      -> ModifyVolumeAttribute
modifyVolumeAttribute p1 = ModifyVolumeAttribute
    { _mvaVolumeId     = p1
    , _mvaDryRun       = Nothing
    , _mvaAutoEnableIO = Nothing
    }

-- | Indicates whether the volume should be auto-enabled for I/O operations.
mvaAutoEnableIO :: Lens' ModifyVolumeAttribute (Maybe AttributeBooleanValue)
mvaAutoEnableIO = lens _mvaAutoEnableIO (\s a -> s { _mvaAutoEnableIO = a })

mvaDryRun :: Lens' ModifyVolumeAttribute (Maybe Bool)
mvaDryRun = lens _mvaDryRun (\s a -> s { _mvaDryRun = a })

-- | The ID of the volume.
mvaVolumeId :: Lens' ModifyVolumeAttribute Text
mvaVolumeId = lens _mvaVolumeId (\s a -> s { _mvaVolumeId = a })

instance ToQuery ModifyVolumeAttribute

instance ToPath ModifyVolumeAttribute where
    toPath = const "/"

data ModifyVolumeAttributeResponse = ModifyVolumeAttributeResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'ModifyVolumeAttributeResponse' constructor.
modifyVolumeAttributeResponse :: ModifyVolumeAttributeResponse
modifyVolumeAttributeResponse = ModifyVolumeAttributeResponse

instance AWSRequest ModifyVolumeAttribute where
    type Sv ModifyVolumeAttribute = EC2
    type Rs ModifyVolumeAttribute = ModifyVolumeAttributeResponse

    request  = post "ModifyVolumeAttribute"
    response = nullaryResponse ModifyVolumeAttributeResponse
