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

-- Module      : Network.AWS.CodeDeploy.GetDeploymentConfig
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Gets information about a deployment configuration.
module Network.AWS.CodeDeploy.GetDeploymentConfig
    (
    -- * Request
      GetDeploymentConfig
    -- ** Request constructor
    , getDeploymentConfig
    -- ** Request lenses
    , gdcDeploymentConfigName

    -- * Response
    , GetDeploymentConfigResponse
    -- ** Response constructor
    , getDeploymentConfigResponse
    -- ** Response lenses
    , gdcrDeploymentConfigInfo
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.CodeDeploy.Types

newtype GetDeploymentConfig = GetDeploymentConfig
    { _gdcDeploymentConfigName :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'GetDeploymentConfig' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gdcDeploymentConfigName' @::@ 'Text'
--
getDeploymentConfig :: Text -- ^ 'gdcDeploymentConfigName'
                    -> GetDeploymentConfig
getDeploymentConfig p1 = GetDeploymentConfig
    { _gdcDeploymentConfigName = p1
    }

-- | The name of an existing deployment configuration within the AWS user
-- account.
gdcDeploymentConfigName :: Lens' GetDeploymentConfig Text
gdcDeploymentConfigName =
    lens _gdcDeploymentConfigName (\s a -> s { _gdcDeploymentConfigName = a })

instance ToPath GetDeploymentConfig where
    toPath = const "/"

instance ToQuery GetDeploymentConfig where
    toQuery = const mempty

instance ToHeaders GetDeploymentConfig

instance ToBody GetDeploymentConfig where
    toBody = toBody . encode . _gdcDeploymentConfigName

newtype GetDeploymentConfigResponse = GetDeploymentConfigResponse
    { _gdcrDeploymentConfigInfo :: Maybe DeploymentConfigInfo
    } deriving (Eq, Show, Generic)

-- | 'GetDeploymentConfigResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gdcrDeploymentConfigInfo' @::@ 'Maybe' 'DeploymentConfigInfo'
--
getDeploymentConfigResponse :: GetDeploymentConfigResponse
getDeploymentConfigResponse = GetDeploymentConfigResponse
    { _gdcrDeploymentConfigInfo = Nothing
    }

-- | Information about the deployment configuration.
gdcrDeploymentConfigInfo :: Lens' GetDeploymentConfigResponse (Maybe DeploymentConfigInfo)
gdcrDeploymentConfigInfo =
    lens _gdcrDeploymentConfigInfo
        (\s a -> s { _gdcrDeploymentConfigInfo = a })

-- FromJSON

instance AWSRequest GetDeploymentConfig where
    type Sv GetDeploymentConfig = CodeDeploy
    type Rs GetDeploymentConfig = GetDeploymentConfigResponse

    request  = post'
    response = jsonResponse $ \h o -> GetDeploymentConfigResponse
        <$> o .: "deploymentConfigInfo"
