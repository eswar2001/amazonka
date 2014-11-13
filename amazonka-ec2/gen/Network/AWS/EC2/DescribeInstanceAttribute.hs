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

-- Module      : Network.AWS.EC2.DescribeInstanceAttribute
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Describes the specified attribute of the specified instance. You can
-- specify only one attribute at a time. Valid attribute values are:
-- instanceType | kernel | ramdisk | userData | disableApiTermination |
-- instanceInitiatedShutdownBehavior | rootDeviceName | blockDeviceMapping |
-- productCodes | sourceDestCheck | groupSet | ebsOptimized | sriovNetSupport.
module Network.AWS.EC2.DescribeInstanceAttribute
    (
    -- * Request
      DescribeInstanceAttribute
    -- ** Request constructor
    , describeInstanceAttribute
    -- ** Request lenses
    , diaAttribute
    , diaDryRun
    , diaInstanceId

    -- * Response
    , DescribeInstanceAttributeResponse
    -- ** Response constructor
    , describeInstanceAttributeResponse
    -- ** Response lenses
    , diar1BlockDeviceMappings
    , diar1DisableApiTermination
    , diar1EbsOptimized
    , diar1Groups
    , diar1InstanceId
    , diar1InstanceInitiatedShutdownBehavior
    , diar1InstanceType
    , diar1KernelId
    , diar1ProductCodes
    , diar1RamdiskId
    , diar1RootDeviceName
    , diar1SourceDestCheck
    , diar1SriovNetSupport
    , diar1UserData
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types
import qualified GHC.Exts

data DescribeInstanceAttribute = DescribeInstanceAttribute
    { _diaAttribute  :: Text
    , _diaDryRun     :: Maybe Bool
    , _diaInstanceId :: Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'DescribeInstanceAttribute' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'diaAttribute' @::@ 'Text'
--
-- * 'diaDryRun' @::@ 'Maybe' 'Bool'
--
-- * 'diaInstanceId' @::@ 'Text'
--
describeInstanceAttribute :: Text -- ^ 'diaInstanceId'
                          -> Text -- ^ 'diaAttribute'
                          -> DescribeInstanceAttribute
describeInstanceAttribute p1 p2 = DescribeInstanceAttribute
    { _diaInstanceId = p1
    , _diaAttribute  = p2
    , _diaDryRun     = Nothing
    }

-- | The instance attribute.
diaAttribute :: Lens' DescribeInstanceAttribute Text
diaAttribute = lens _diaAttribute (\s a -> s { _diaAttribute = a })

diaDryRun :: Lens' DescribeInstanceAttribute (Maybe Bool)
diaDryRun = lens _diaDryRun (\s a -> s { _diaDryRun = a })

-- | The ID of the instance.
diaInstanceId :: Lens' DescribeInstanceAttribute Text
diaInstanceId = lens _diaInstanceId (\s a -> s { _diaInstanceId = a })

instance ToQuery DescribeInstanceAttribute

instance ToPath DescribeInstanceAttribute where
    toPath = const "/"

data DescribeInstanceAttributeResponse = DescribeInstanceAttributeResponse
    { _diar1BlockDeviceMappings               :: [InstanceBlockDeviceMapping]
    , _diar1DisableApiTermination             :: Maybe AttributeBooleanValue
    , _diar1EbsOptimized                      :: Maybe AttributeBooleanValue
    , _diar1Groups                            :: [GroupIdentifier]
    , _diar1InstanceId                        :: Maybe Text
    , _diar1InstanceInitiatedShutdownBehavior :: Maybe AttributeValue
    , _diar1InstanceType                      :: Maybe AttributeValue
    , _diar1KernelId                          :: Maybe AttributeValue
    , _diar1ProductCodes                      :: [ProductCode]
    , _diar1RamdiskId                         :: Maybe AttributeValue
    , _diar1RootDeviceName                    :: Maybe AttributeValue
    , _diar1SourceDestCheck                   :: Maybe AttributeBooleanValue
    , _diar1SriovNetSupport                   :: Maybe AttributeValue
    , _diar1UserData                          :: Maybe AttributeValue
    } deriving (Eq, Show, Generic)

-- | 'DescribeInstanceAttributeResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'diar1BlockDeviceMappings' @::@ ['InstanceBlockDeviceMapping']
--
-- * 'diar1DisableApiTermination' @::@ 'Maybe' 'AttributeBooleanValue'
--
-- * 'diar1EbsOptimized' @::@ 'Maybe' 'AttributeBooleanValue'
--
-- * 'diar1Groups' @::@ ['GroupIdentifier']
--
-- * 'diar1InstanceId' @::@ 'Maybe' 'Text'
--
-- * 'diar1InstanceInitiatedShutdownBehavior' @::@ 'Maybe' 'AttributeValue'
--
-- * 'diar1InstanceType' @::@ 'Maybe' 'AttributeValue'
--
-- * 'diar1KernelId' @::@ 'Maybe' 'AttributeValue'
--
-- * 'diar1ProductCodes' @::@ ['ProductCode']
--
-- * 'diar1RamdiskId' @::@ 'Maybe' 'AttributeValue'
--
-- * 'diar1RootDeviceName' @::@ 'Maybe' 'AttributeValue'
--
-- * 'diar1SourceDestCheck' @::@ 'Maybe' 'AttributeBooleanValue'
--
-- * 'diar1SriovNetSupport' @::@ 'Maybe' 'AttributeValue'
--
-- * 'diar1UserData' @::@ 'Maybe' 'AttributeValue'
--
describeInstanceAttributeResponse :: DescribeInstanceAttributeResponse
describeInstanceAttributeResponse = DescribeInstanceAttributeResponse
    { _diar1InstanceId                        = Nothing
    , _diar1InstanceType                      = Nothing
    , _diar1KernelId                          = Nothing
    , _diar1RamdiskId                         = Nothing
    , _diar1UserData                          = Nothing
    , _diar1DisableApiTermination             = Nothing
    , _diar1InstanceInitiatedShutdownBehavior = Nothing
    , _diar1RootDeviceName                    = Nothing
    , _diar1BlockDeviceMappings               = mempty
    , _diar1ProductCodes                      = mempty
    , _diar1EbsOptimized                      = Nothing
    , _diar1SriovNetSupport                   = Nothing
    , _diar1SourceDestCheck                   = Nothing
    , _diar1Groups                            = mempty
    }

-- | The block device mapping of the instance.
diar1BlockDeviceMappings :: Lens' DescribeInstanceAttributeResponse [InstanceBlockDeviceMapping]
diar1BlockDeviceMappings =
    lens _diar1BlockDeviceMappings
        (\s a -> s { _diar1BlockDeviceMappings = a })

-- | If the value is true, you can't terminate the instance through the Amazon
-- EC2 console, CLI, or API; otherwise, you can.
diar1DisableApiTermination :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diar1DisableApiTermination =
    lens _diar1DisableApiTermination
        (\s a -> s { _diar1DisableApiTermination = a })

-- | Indicates whether the instance is optimized for EBS I/O.
diar1EbsOptimized :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diar1EbsOptimized =
    lens _diar1EbsOptimized (\s a -> s { _diar1EbsOptimized = a })

-- | The security groups associated with the instance.
diar1Groups :: Lens' DescribeInstanceAttributeResponse [GroupIdentifier]
diar1Groups = lens _diar1Groups (\s a -> s { _diar1Groups = a })

-- | The ID of the instance.
diar1InstanceId :: Lens' DescribeInstanceAttributeResponse (Maybe Text)
diar1InstanceId = lens _diar1InstanceId (\s a -> s { _diar1InstanceId = a })

-- | Indicates whether an instance stops or terminates when you initiate
-- shutdown from the instance (using the operating system command for system
-- shutdown).
diar1InstanceInitiatedShutdownBehavior :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1InstanceInitiatedShutdownBehavior =
    lens _diar1InstanceInitiatedShutdownBehavior
        (\s a -> s { _diar1InstanceInitiatedShutdownBehavior = a })

-- | The instance type.
diar1InstanceType :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1InstanceType =
    lens _diar1InstanceType (\s a -> s { _diar1InstanceType = a })

-- | The kernel ID.
diar1KernelId :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1KernelId = lens _diar1KernelId (\s a -> s { _diar1KernelId = a })

-- | A list of product codes.
diar1ProductCodes :: Lens' DescribeInstanceAttributeResponse [ProductCode]
diar1ProductCodes =
    lens _diar1ProductCodes (\s a -> s { _diar1ProductCodes = a })

-- | The RAM disk ID.
diar1RamdiskId :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1RamdiskId = lens _diar1RamdiskId (\s a -> s { _diar1RamdiskId = a })

-- | The name of the root device (for example, /dev/sda1).
diar1RootDeviceName :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1RootDeviceName =
    lens _diar1RootDeviceName (\s a -> s { _diar1RootDeviceName = a })

-- | Indicates whether source/destination checking is enabled. A value of true
-- means checking is enabled, and false means checking is disabled. This
-- value must be false for a NAT instance to perform NAT.
diar1SourceDestCheck :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diar1SourceDestCheck =
    lens _diar1SourceDestCheck (\s a -> s { _diar1SourceDestCheck = a })

diar1SriovNetSupport :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1SriovNetSupport =
    lens _diar1SriovNetSupport (\s a -> s { _diar1SriovNetSupport = a })

-- | The Base64-encoded MIME user data.
diar1UserData :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diar1UserData = lens _diar1UserData (\s a -> s { _diar1UserData = a })

instance AWSRequest DescribeInstanceAttribute where
    type Sv DescribeInstanceAttribute = EC2
    type Rs DescribeInstanceAttribute = DescribeInstanceAttributeResponse

    request  = post "DescribeInstanceAttribute"
    response = xmlResponse $ \h x -> DescribeInstanceAttributeResponse
        <$> x %| "blockDeviceMapping"
        <*> x %| "disableApiTermination"
        <*> x %| "ebsOptimized"
        <*> x %| "groupSet"
        <*> x %| "instanceId"
        <*> x %| "instanceInitiatedShutdownBehavior"
        <*> x %| "instanceType"
        <*> x %| "kernel"
        <*> x %| "productCodes"
        <*> x %| "ramdisk"
        <*> x %| "rootDeviceName"
        <*> x %| "sourceDestCheck"
        <*> x %| "sriovNetSupport"
        <*> x %| "userData"
