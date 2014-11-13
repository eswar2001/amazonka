{-# LANGUAGE FlexibleContexts    #-}
{-# LANGUAGE RecordWildCards     #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies        #-}

-- Module      : Network.AWS.Response
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Network.AWS.Response
    (
     -- * Status predicate
      alwaysFail

    -- * Errors
    , xmlError

    -- * Responses
    , xmlResponse
    , jsonResponse
    , nullaryResponse
    , bodyResponse
    ) where

import           Control.Applicative
import           Control.Monad.Trans.Resource
import           Data.Aeson
import           Data.Bifunctor
import qualified Data.ByteString.Lazy         as LBS
import           Data.Conduit
import qualified Data.Conduit.Binary          as Conduit
import           Data.Default.Class
import           Network.AWS.Data
import           Network.AWS.Types
import           Network.HTTP.Client          hiding (Response)
import           Network.HTTP.Types
import qualified Text.XML                     as XML
import           Text.XML.Cursor

-- index :: ToText c => Getting [b] a [b] -> Getting c b c -> a -> Maybe Text
-- index g f = fmap (toText . view f) . lastMay . view g

-- choice :: Alternative f => (a -> f b) -> (a -> f b) -> a -> f b
-- choice f g x = f x <|> g x

-- lastMay :: [a] -> Maybe a
-- lastMay []     = Nothing
-- lastMay (x:xs) = Just (go x xs)
--   where
--     go y []     = y
--     go _ (y:ys) = go y ys

alwaysFail :: Status -> Bool
alwaysFail = const False

xmlError :: FromXML (Er a)
         => (Status -> Bool)
         -> Service a
         -> Status
         -> Maybe (LBS.ByteString -> ServiceError (Er a))
xmlError f Service{..} s
    | f s       = Nothing
    | otherwise = Just (either failure success . decodeXML)
  where
    success = ServiceError _svcAbbrev s
    failure = SerializerError _svcAbbrev

xmlResponse :: (MonadResource m, AWSService (Sv a))
            => (ResponseHeaders -> Cursor -> Either String (Rs a))
            -> a
            -> Either HttpException ClientResponse
            -> m (Response a)
xmlResponse = deserialise (bimap show fromDocument . XML.parseLBS def)

jsonResponse :: (MonadResource m, AWSService (Sv a))
             => (ResponseHeaders -> Object -> Either String (Rs a))
             -> a
             -> Either HttpException ClientResponse
             -> m (Response a)
jsonResponse = deserialise eitherDecode'

bodyResponse :: (MonadResource m, AWSService (Sv a))
             => (ResponseHeaders -> ResponseBody -> Either String (Rs a))
             -> a
             -> Either HttpException ClientResponse
             -> m (Response a)
bodyResponse f = receive $ \a hs bdy ->
    return (SerializerError a `first` f hs bdy)

nullaryResponse :: (MonadResource m, AWSService (Sv a))
                => Rs a
                -> a
                -> Either HttpException ClientResponse
                -> m (Response a)
nullaryResponse rs = receive $ \_ _ bdy ->
    liftResourceT (bdy $$+- return (Right rs))

deserialise :: (AWSService (Sv a), MonadResource m)
            => (LazyByteString -> Either String b)
            -> (ResponseHeaders -> b -> Either String (Rs a))
            -> a
            -> Either HttpException ClientResponse
            -> m (Response a)
deserialise g f = receive $ \a hs bdy -> do
    lbs <- sinkLbs bdy
    return $! case g lbs of
        Left  e -> Left (SerializerError a e)
        Right o ->
            case f hs o of
                Left  e -> Left (SerializerError a e)
                Right x -> Right x

receive :: forall m a. (MonadResource m, AWSService (Sv a))
        => (Abbrev -> ResponseHeaders -> ResponseBody -> m (Response a))
        -> a
        -> Either HttpException ClientResponse
        -> m (Response a)
receive f = const (either httpFailure success)
  where
    success rs =
        maybe (f (_svcAbbrev svc) hs bdy)
              (\g -> Left . g <$> sinkLbs bdy)
              (handle svc s)
      where
        svc = service :: Service (Sv a)

        s   = responseStatus  rs
        bdy = responseBody    rs
        hs  = responseHeaders rs

sinkLbs :: MonadResource m => ResponseBody -> m LBS.ByteString
sinkLbs bdy = liftResourceT (bdy $$+- Conduit.sinkLbs)

httpFailure :: Monad m => HttpException -> m (Either (ServiceError e) a)
httpFailure = return . Left . HttpError
