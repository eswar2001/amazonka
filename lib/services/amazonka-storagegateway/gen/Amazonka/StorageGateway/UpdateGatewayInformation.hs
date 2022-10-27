{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.StorageGateway.UpdateGatewayInformation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a gateway\'s metadata, which includes the gateway\'s name and
-- time zone. To specify which gateway to update, use the Amazon Resource
-- Name (ARN) of the gateway in your request.
--
-- For gateways activated after September 2, 2015, the gateway\'s ARN
-- contains the gateway ID rather than the gateway name. However, changing
-- the name of the gateway has no effect on the gateway\'s ARN.
module Amazonka.StorageGateway.UpdateGatewayInformation
  ( -- * Creating a Request
    UpdateGatewayInformation (..),
    newUpdateGatewayInformation,

    -- * Request Lenses
    updateGatewayInformation_cloudWatchLogGroupARN,
    updateGatewayInformation_gatewayName,
    updateGatewayInformation_gatewayCapacity,
    updateGatewayInformation_gatewayTimezone,
    updateGatewayInformation_gatewayARN,

    -- * Destructuring the Response
    UpdateGatewayInformationResponse (..),
    newUpdateGatewayInformationResponse,

    -- * Response Lenses
    updateGatewayInformationResponse_gatewayName,
    updateGatewayInformationResponse_gatewayARN,
    updateGatewayInformationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | /See:/ 'newUpdateGatewayInformation' smart constructor.
data UpdateGatewayInformation = UpdateGatewayInformation'
  { -- | The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
    -- you want to use to monitor and log events in the gateway.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html What is Amazon CloudWatch Logs?>
    cloudWatchLogGroupARN :: Prelude.Maybe Prelude.Text,
    gatewayName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the size of the gateway\'s metadata cache.
    gatewayCapacity :: Prelude.Maybe GatewayCapacity,
    -- | A value that indicates the time zone of the gateway.
    gatewayTimezone :: Prelude.Maybe Prelude.Text,
    gatewayARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGatewayInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchLogGroupARN', 'updateGatewayInformation_cloudWatchLogGroupARN' - The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
-- you want to use to monitor and log events in the gateway.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html What is Amazon CloudWatch Logs?>
--
-- 'gatewayName', 'updateGatewayInformation_gatewayName' - Undocumented member.
--
-- 'gatewayCapacity', 'updateGatewayInformation_gatewayCapacity' - Specifies the size of the gateway\'s metadata cache.
--
-- 'gatewayTimezone', 'updateGatewayInformation_gatewayTimezone' - A value that indicates the time zone of the gateway.
--
-- 'gatewayARN', 'updateGatewayInformation_gatewayARN' - Undocumented member.
newUpdateGatewayInformation ::
  -- | 'gatewayARN'
  Prelude.Text ->
  UpdateGatewayInformation
newUpdateGatewayInformation pGatewayARN_ =
  UpdateGatewayInformation'
    { cloudWatchLogGroupARN =
        Prelude.Nothing,
      gatewayName = Prelude.Nothing,
      gatewayCapacity = Prelude.Nothing,
      gatewayTimezone = Prelude.Nothing,
      gatewayARN = pGatewayARN_
    }

-- | The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
-- you want to use to monitor and log events in the gateway.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html What is Amazon CloudWatch Logs?>
updateGatewayInformation_cloudWatchLogGroupARN :: Lens.Lens' UpdateGatewayInformation (Prelude.Maybe Prelude.Text)
updateGatewayInformation_cloudWatchLogGroupARN = Lens.lens (\UpdateGatewayInformation' {cloudWatchLogGroupARN} -> cloudWatchLogGroupARN) (\s@UpdateGatewayInformation' {} a -> s {cloudWatchLogGroupARN = a} :: UpdateGatewayInformation)

-- | Undocumented member.
updateGatewayInformation_gatewayName :: Lens.Lens' UpdateGatewayInformation (Prelude.Maybe Prelude.Text)
updateGatewayInformation_gatewayName = Lens.lens (\UpdateGatewayInformation' {gatewayName} -> gatewayName) (\s@UpdateGatewayInformation' {} a -> s {gatewayName = a} :: UpdateGatewayInformation)

-- | Specifies the size of the gateway\'s metadata cache.
updateGatewayInformation_gatewayCapacity :: Lens.Lens' UpdateGatewayInformation (Prelude.Maybe GatewayCapacity)
updateGatewayInformation_gatewayCapacity = Lens.lens (\UpdateGatewayInformation' {gatewayCapacity} -> gatewayCapacity) (\s@UpdateGatewayInformation' {} a -> s {gatewayCapacity = a} :: UpdateGatewayInformation)

-- | A value that indicates the time zone of the gateway.
updateGatewayInformation_gatewayTimezone :: Lens.Lens' UpdateGatewayInformation (Prelude.Maybe Prelude.Text)
updateGatewayInformation_gatewayTimezone = Lens.lens (\UpdateGatewayInformation' {gatewayTimezone} -> gatewayTimezone) (\s@UpdateGatewayInformation' {} a -> s {gatewayTimezone = a} :: UpdateGatewayInformation)

-- | Undocumented member.
updateGatewayInformation_gatewayARN :: Lens.Lens' UpdateGatewayInformation Prelude.Text
updateGatewayInformation_gatewayARN = Lens.lens (\UpdateGatewayInformation' {gatewayARN} -> gatewayARN) (\s@UpdateGatewayInformation' {} a -> s {gatewayARN = a} :: UpdateGatewayInformation)

instance Core.AWSRequest UpdateGatewayInformation where
  type
    AWSResponse UpdateGatewayInformation =
      UpdateGatewayInformationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateGatewayInformationResponse'
            Prelude.<$> (x Core..?> "GatewayName")
            Prelude.<*> (x Core..?> "GatewayARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateGatewayInformation where
  hashWithSalt _salt UpdateGatewayInformation' {..} =
    _salt `Prelude.hashWithSalt` cloudWatchLogGroupARN
      `Prelude.hashWithSalt` gatewayName
      `Prelude.hashWithSalt` gatewayCapacity
      `Prelude.hashWithSalt` gatewayTimezone
      `Prelude.hashWithSalt` gatewayARN

instance Prelude.NFData UpdateGatewayInformation where
  rnf UpdateGatewayInformation' {..} =
    Prelude.rnf cloudWatchLogGroupARN
      `Prelude.seq` Prelude.rnf gatewayName
      `Prelude.seq` Prelude.rnf gatewayCapacity
      `Prelude.seq` Prelude.rnf gatewayTimezone
      `Prelude.seq` Prelude.rnf gatewayARN

instance Core.ToHeaders UpdateGatewayInformation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.UpdateGatewayInformation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateGatewayInformation where
  toJSON UpdateGatewayInformation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CloudWatchLogGroupARN" Core..=)
              Prelude.<$> cloudWatchLogGroupARN,
            ("GatewayName" Core..=) Prelude.<$> gatewayName,
            ("GatewayCapacity" Core..=)
              Prelude.<$> gatewayCapacity,
            ("GatewayTimezone" Core..=)
              Prelude.<$> gatewayTimezone,
            Prelude.Just ("GatewayARN" Core..= gatewayARN)
          ]
      )

instance Core.ToPath UpdateGatewayInformation where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateGatewayInformation where
  toQuery = Prelude.const Prelude.mempty

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway
-- that was updated.
--
-- /See:/ 'newUpdateGatewayInformationResponse' smart constructor.
data UpdateGatewayInformationResponse = UpdateGatewayInformationResponse'
  { -- | The name you configured for your gateway.
    gatewayName :: Prelude.Maybe Prelude.Text,
    gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGatewayInformationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayName', 'updateGatewayInformationResponse_gatewayName' - The name you configured for your gateway.
--
-- 'gatewayARN', 'updateGatewayInformationResponse_gatewayARN' - Undocumented member.
--
-- 'httpStatus', 'updateGatewayInformationResponse_httpStatus' - The response's http status code.
newUpdateGatewayInformationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateGatewayInformationResponse
newUpdateGatewayInformationResponse pHttpStatus_ =
  UpdateGatewayInformationResponse'
    { gatewayName =
        Prelude.Nothing,
      gatewayARN = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name you configured for your gateway.
updateGatewayInformationResponse_gatewayName :: Lens.Lens' UpdateGatewayInformationResponse (Prelude.Maybe Prelude.Text)
updateGatewayInformationResponse_gatewayName = Lens.lens (\UpdateGatewayInformationResponse' {gatewayName} -> gatewayName) (\s@UpdateGatewayInformationResponse' {} a -> s {gatewayName = a} :: UpdateGatewayInformationResponse)

-- | Undocumented member.
updateGatewayInformationResponse_gatewayARN :: Lens.Lens' UpdateGatewayInformationResponse (Prelude.Maybe Prelude.Text)
updateGatewayInformationResponse_gatewayARN = Lens.lens (\UpdateGatewayInformationResponse' {gatewayARN} -> gatewayARN) (\s@UpdateGatewayInformationResponse' {} a -> s {gatewayARN = a} :: UpdateGatewayInformationResponse)

-- | The response's http status code.
updateGatewayInformationResponse_httpStatus :: Lens.Lens' UpdateGatewayInformationResponse Prelude.Int
updateGatewayInformationResponse_httpStatus = Lens.lens (\UpdateGatewayInformationResponse' {httpStatus} -> httpStatus) (\s@UpdateGatewayInformationResponse' {} a -> s {httpStatus = a} :: UpdateGatewayInformationResponse)

instance
  Prelude.NFData
    UpdateGatewayInformationResponse
  where
  rnf UpdateGatewayInformationResponse' {..} =
    Prelude.rnf gatewayName
      `Prelude.seq` Prelude.rnf gatewayARN
      `Prelude.seq` Prelude.rnf httpStatus
