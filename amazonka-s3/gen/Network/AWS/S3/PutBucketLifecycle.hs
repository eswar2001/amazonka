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

-- Module      : Network.AWS.S3.PutBucketLifecycle
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Sets lifecycle configuration for your bucket. If a lifecycle configuration
-- exists, it replaces it.
module Network.AWS.S3.PutBucketLifecycle
    (
    -- * Request
      PutBucketLifecycle
    -- ** Request constructor
    , putBucketLifecycle
    -- ** Request lenses
    , pbl1Bucket
    , pbl1ContentMD5
    , pbl1LifecycleConfiguration

    -- * Response
    , PutBucketLifecycleResponse
    -- ** Response constructor
    , putBucketLifecycleResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.S3.Types
import qualified GHC.Exts

data PutBucketLifecycle = PutBucketLifecycle
    { _pbl1Bucket                 :: Text
    , _pbl1ContentMD5             :: Maybe Text
    , _pbl1LifecycleConfiguration :: Maybe LifecycleConfiguration
    } deriving (Eq, Show, Generic)

-- | 'PutBucketLifecycle' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'pbl1Bucket' @::@ 'Text'
--
-- * 'pbl1ContentMD5' @::@ 'Maybe' 'Text'
--
-- * 'pbl1LifecycleConfiguration' @::@ 'Maybe' 'LifecycleConfiguration'
--
putBucketLifecycle :: Text -- ^ 'pbl1Bucket'
                   -> PutBucketLifecycle
putBucketLifecycle p1 = PutBucketLifecycle
    { _pbl1Bucket                 = p1
    , _pbl1ContentMD5             = Nothing
    , _pbl1LifecycleConfiguration = Nothing
    }

pbl1Bucket :: Lens' PutBucketLifecycle Text
pbl1Bucket = lens _pbl1Bucket (\s a -> s { _pbl1Bucket = a })

pbl1ContentMD5 :: Lens' PutBucketLifecycle (Maybe Text)
pbl1ContentMD5 = lens _pbl1ContentMD5 (\s a -> s { _pbl1ContentMD5 = a })

pbl1LifecycleConfiguration :: Lens' PutBucketLifecycle (Maybe LifecycleConfiguration)
pbl1LifecycleConfiguration =
    lens _pbl1LifecycleConfiguration
        (\s a -> s { _pbl1LifecycleConfiguration = a })

instance ToPath PutBucketLifecycle where
    toPath PutBucketLifecycle{..} = mconcat
        [ "/"
        , toText _pbl1Bucket
        ]

instance ToQuery PutBucketLifecycle where
    toQuery = const "lifecycle"

instance ToHeaders PutBucketLifecycle where
    toHeaders PutBucketLifecycle{..} = mconcat
        [ "Content-MD5" =: _pbl1ContentMD5
        ]

instance ToBody PutBucketLifecycle where
    toBody = toBody . encodeXML . _pbl1LifecycleConfiguration

data PutBucketLifecycleResponse = PutBucketLifecycleResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'PutBucketLifecycleResponse' constructor.
putBucketLifecycleResponse :: PutBucketLifecycleResponse
putBucketLifecycleResponse = PutBucketLifecycleResponse

instance AWSRequest PutBucketLifecycle where
    type Sv PutBucketLifecycle = S3
    type Rs PutBucketLifecycle = PutBucketLifecycleResponse

    request  = put
    response = nullaryResponse PutBucketLifecycleResponse
