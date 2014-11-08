{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

-- {-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.S3.PutBucketTagging
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Sets the tags for a bucket.
module Network.AWS.S3.PutBucketTagging
    (
    -- * Request
      PutBucketTagging
    -- ** Request constructor
    , putBucketTagging
    -- ** Request lenses
    , pbtrBucket
    , pbtrContentMD5
    , pbtrTagging

    -- * Response
    , PutBucketTaggingResponse
    -- ** Response constructor
    , putBucketTaggingResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.XML
import Network.AWS.S3.Types

data PutBucketTagging = PutBucketTagging
    { _pbtrBucket     :: Text
    , _pbtrContentMD5 :: Maybe Text
    , _pbtrTagging    :: Tagging
    } deriving (Eq, Show, Generic)

-- | 'PutBucketTagging' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'pbtrBucket' @::@ 'Text'
--
-- * 'pbtrContentMD5' @::@ 'Maybe' 'Text'
--
-- * 'pbtrTagging' @::@ 'Tagging'
--
putBucketTagging :: Text -- ^ 'pbtrBucket'
                 -> Tagging -- ^ 'pbtrTagging'
                 -> PutBucketTagging
putBucketTagging p1 p2 = PutBucketTagging
    { _pbtrBucket     = p1
    , _pbtrTagging    = p2
    , _pbtrContentMD5 = Nothing
    }

pbtrBucket :: Lens' PutBucketTagging Text
pbtrBucket = lens _pbtrBucket (\s a -> s { _pbtrBucket = a })

pbtrContentMD5 :: Lens' PutBucketTagging (Maybe Text)
pbtrContentMD5 = lens _pbtrContentMD5 (\s a -> s { _pbtrContentMD5 = a })

pbtrTagging :: Lens' PutBucketTagging Tagging
pbtrTagging = lens _pbtrTagging (\s a -> s { _pbtrTagging = a })

instance ToPath PutBucketTagging where
    toPath PutBucketTagging{..} = mconcat
        [ "/"
        , toText _pbtrBucket
        ]

instance ToQuery PutBucketTagging where
    toQuery = const "tagging"

instance ToHeaders PutBucketTagging where
    toHeaders PutBucketTagging{..} = mconcat
        [ "Content-MD5" =: _pbtrContentMD5
        ]

instance ToBody PutBucketTagging where
    toBody = toBody . encodeXML . _pbtrTagging

data PutBucketTaggingResponse = PutBucketTaggingResponse

-- | 'PutBucketTaggingResponse' constructor.
putBucketTaggingResponse :: PutBucketTaggingResponse
putBucketTaggingResponse = PutBucketTaggingResponse

instance AWSRequest PutBucketTagging where
    type Sv PutBucketTagging = S3
    type Rs PutBucketTagging = PutBucketTaggingResponse

    request  = put'
    response = const (nullaryResponse PutBucketTaggingResponse)
