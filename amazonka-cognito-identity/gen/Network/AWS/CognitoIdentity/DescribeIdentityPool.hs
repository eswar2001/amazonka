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

-- Module      : Network.AWS.CognitoIdentity.DescribeIdentityPool
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Gets details about a particular identity pool, including the pool name, ID
-- description, creation date, and current number of users.
module Network.AWS.CognitoIdentity.DescribeIdentityPool
    (
    -- * Request
      DescribeIdentityPool
    -- ** Request constructor
    , describeIdentityPool
    -- ** Request lenses
    , dipIdentityPoolId

    -- * Response
    , DescribeIdentityPoolResponse
    -- ** Response constructor
    , describeIdentityPoolResponse
    -- ** Response lenses
    , diprAllowUnauthenticatedIdentities
    , diprDeveloperProviderName
    , diprIdentityPoolId
    , diprIdentityPoolName
    , diprOpenIdConnectProviderARNs
    , diprSupportedLoginProviders
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.CognitoIdentity.Types

newtype DescribeIdentityPool = DescribeIdentityPool
    { _dipIdentityPoolId :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DescribeIdentityPool' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dipIdentityPoolId' @::@ 'Text'
--
describeIdentityPool :: Text -- ^ 'dipIdentityPoolId'
                     -> DescribeIdentityPool
describeIdentityPool p1 = DescribeIdentityPool
    { _dipIdentityPoolId = p1
    }

-- | An identity pool ID in the format REGION:GUID.
dipIdentityPoolId :: Lens' DescribeIdentityPool Text
dipIdentityPoolId =
    lens _dipIdentityPoolId (\s a -> s { _dipIdentityPoolId = a })

instance ToPath DescribeIdentityPool where
    toPath = const "/"

instance ToQuery DescribeIdentityPool where
    toQuery = const mempty

instance ToHeaders DescribeIdentityPool

instance ToBody DescribeIdentityPool where
    toBody = toBody . encode . _dipIdentityPoolId

data DescribeIdentityPoolResponse = DescribeIdentityPoolResponse
    { _diprAllowUnauthenticatedIdentities :: Bool
    , _diprDeveloperProviderName          :: Maybe Text
    , _diprIdentityPoolId                 :: Text
    , _diprIdentityPoolName               :: Text
    , _diprOpenIdConnectProviderARNs      :: [Text]
    , _diprSupportedLoginProviders        :: Map Text Text
    } deriving (Eq, Show, Generic)

-- | 'DescribeIdentityPoolResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'diprAllowUnauthenticatedIdentities' @::@ 'Bool'
--
-- * 'diprDeveloperProviderName' @::@ 'Maybe' 'Text'
--
-- * 'diprIdentityPoolId' @::@ 'Text'
--
-- * 'diprIdentityPoolName' @::@ 'Text'
--
-- * 'diprOpenIdConnectProviderARNs' @::@ ['Text']
--
-- * 'diprSupportedLoginProviders' @::@ 'HashMap' 'Text' 'Text'
--
describeIdentityPoolResponse :: Text -- ^ 'diprIdentityPoolId'
                             -> Text -- ^ 'diprIdentityPoolName'
                             -> Bool -- ^ 'diprAllowUnauthenticatedIdentities'
                             -> DescribeIdentityPoolResponse
describeIdentityPoolResponse p1 p2 p3 = DescribeIdentityPoolResponse
    { _diprIdentityPoolId                 = p1
    , _diprIdentityPoolName               = p2
    , _diprAllowUnauthenticatedIdentities = p3
    , _diprSupportedLoginProviders        = mempty
    , _diprDeveloperProviderName          = Nothing
    , _diprOpenIdConnectProviderARNs      = mempty
    }

-- | TRUE if the identity pool supports unauthenticated logins.
diprAllowUnauthenticatedIdentities :: Lens' DescribeIdentityPoolResponse Bool
diprAllowUnauthenticatedIdentities =
    lens _diprAllowUnauthenticatedIdentities
        (\s a -> s { _diprAllowUnauthenticatedIdentities = a })

-- | The "domain" by which Cognito will refer to your users.
diprDeveloperProviderName :: Lens' DescribeIdentityPoolResponse (Maybe Text)
diprDeveloperProviderName =
    lens _diprDeveloperProviderName
        (\s a -> s { _diprDeveloperProviderName = a })

-- | An identity pool ID in the format REGION:GUID.
diprIdentityPoolId :: Lens' DescribeIdentityPoolResponse Text
diprIdentityPoolId =
    lens _diprIdentityPoolId (\s a -> s { _diprIdentityPoolId = a })

-- | A string that you provide.
diprIdentityPoolName :: Lens' DescribeIdentityPoolResponse Text
diprIdentityPoolName =
    lens _diprIdentityPoolName (\s a -> s { _diprIdentityPoolName = a })

diprOpenIdConnectProviderARNs :: Lens' DescribeIdentityPoolResponse [Text]
diprOpenIdConnectProviderARNs =
    lens _diprOpenIdConnectProviderARNs
        (\s a -> s { _diprOpenIdConnectProviderARNs = a })

-- | Optional key:value pairs mapping provider names to provider app IDs.
diprSupportedLoginProviders :: Lens' DescribeIdentityPoolResponse (HashMap Text Text)
diprSupportedLoginProviders =
    lens _diprSupportedLoginProviders
        (\s a -> s { _diprSupportedLoginProviders = a })
            . _Map

-- FromJSON

instance AWSRequest DescribeIdentityPool where
    type Sv DescribeIdentityPool = CognitoIdentity
    type Rs DescribeIdentityPool = DescribeIdentityPoolResponse

    request  = post'
    response = jsonResponse $ \h o -> DescribeIdentityPoolResponse
        <$> o .: "AllowUnauthenticatedIdentities"
        <*> o .: "DeveloperProviderName"
        <*> o .: "IdentityPoolId"
        <*> o .: "IdentityPoolName"
        <*> o .: "OpenIdConnectProviderARNs"
        <*> o .: "SupportedLoginProviders"
