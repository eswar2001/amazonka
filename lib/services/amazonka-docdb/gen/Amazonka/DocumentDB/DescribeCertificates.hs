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
-- Module      : Amazonka.DocumentDB.DescribeCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of certificate authority (CA) certificates provided by
-- Amazon DocumentDB for this account.
--
-- This operation returns paginated results.
module Amazonka.DocumentDB.DescribeCertificates
  ( -- * Creating a Request
    DescribeCertificates (..),
    newDescribeCertificates,

    -- * Request Lenses
    describeCertificates_filters,
    describeCertificates_certificateIdentifier,
    describeCertificates_marker,
    describeCertificates_maxRecords,

    -- * Destructuring the Response
    DescribeCertificatesResponse (..),
    newDescribeCertificatesResponse,

    -- * Response Lenses
    describeCertificatesResponse_certificates,
    describeCertificatesResponse_marker,
    describeCertificatesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DocumentDB.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeCertificates' smart constructor.
data DescribeCertificates = DescribeCertificates'
  { -- | This parameter is not currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | The user-supplied certificate identifier. If this parameter is
    -- specified, information for only the specified certificate is returned.
    -- If this parameter is omitted, a list of up to @MaxRecords@ certificates
    -- is returned. This parameter is not case sensitive.
    --
    -- Constraints
    --
    -- -   Must match an existing @CertificateIdentifier@.
    certificateIdentifier :: Prelude.Maybe Prelude.Text,
    -- | An optional pagination token provided by a previous
    -- @DescribeCertificates@ request. If this parameter is specified, the
    -- response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that the remaining
    -- results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints:
    --
    -- -   Minimum: 20
    --
    -- -   Maximum: 100
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCertificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeCertificates_filters' - This parameter is not currently supported.
--
-- 'certificateIdentifier', 'describeCertificates_certificateIdentifier' - The user-supplied certificate identifier. If this parameter is
-- specified, information for only the specified certificate is returned.
-- If this parameter is omitted, a list of up to @MaxRecords@ certificates
-- is returned. This parameter is not case sensitive.
--
-- Constraints
--
-- -   Must match an existing @CertificateIdentifier@.
--
-- 'marker', 'describeCertificates_marker' - An optional pagination token provided by a previous
-- @DescribeCertificates@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'maxRecords', 'describeCertificates_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints:
--
-- -   Minimum: 20
--
-- -   Maximum: 100
newDescribeCertificates ::
  DescribeCertificates
newDescribeCertificates =
  DescribeCertificates'
    { filters = Prelude.Nothing,
      certificateIdentifier = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | This parameter is not currently supported.
describeCertificates_filters :: Lens.Lens' DescribeCertificates (Prelude.Maybe [Filter])
describeCertificates_filters = Lens.lens (\DescribeCertificates' {filters} -> filters) (\s@DescribeCertificates' {} a -> s {filters = a} :: DescribeCertificates) Prelude.. Lens.mapping Lens.coerced

-- | The user-supplied certificate identifier. If this parameter is
-- specified, information for only the specified certificate is returned.
-- If this parameter is omitted, a list of up to @MaxRecords@ certificates
-- is returned. This parameter is not case sensitive.
--
-- Constraints
--
-- -   Must match an existing @CertificateIdentifier@.
describeCertificates_certificateIdentifier :: Lens.Lens' DescribeCertificates (Prelude.Maybe Prelude.Text)
describeCertificates_certificateIdentifier = Lens.lens (\DescribeCertificates' {certificateIdentifier} -> certificateIdentifier) (\s@DescribeCertificates' {} a -> s {certificateIdentifier = a} :: DescribeCertificates)

-- | An optional pagination token provided by a previous
-- @DescribeCertificates@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeCertificates_marker :: Lens.Lens' DescribeCertificates (Prelude.Maybe Prelude.Text)
describeCertificates_marker = Lens.lens (\DescribeCertificates' {marker} -> marker) (\s@DescribeCertificates' {} a -> s {marker = a} :: DescribeCertificates)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints:
--
-- -   Minimum: 20
--
-- -   Maximum: 100
describeCertificates_maxRecords :: Lens.Lens' DescribeCertificates (Prelude.Maybe Prelude.Int)
describeCertificates_maxRecords = Lens.lens (\DescribeCertificates' {maxRecords} -> maxRecords) (\s@DescribeCertificates' {} a -> s {maxRecords = a} :: DescribeCertificates)

instance Core.AWSPager DescribeCertificates where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeCertificatesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeCertificatesResponse_certificates
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeCertificates_marker
          Lens..~ rs
          Lens.^? describeCertificatesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeCertificates where
  type
    AWSResponse DescribeCertificates =
      DescribeCertificatesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeCertificatesResult"
      ( \s h x ->
          DescribeCertificatesResponse'
            Prelude.<$> ( x Core..@? "Certificates" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "Certificate")
                        )
            Prelude.<*> (x Core..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCertificates

instance Prelude.NFData DescribeCertificates

instance Core.ToHeaders DescribeCertificates where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeCertificates where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCertificates where
  toQuery DescribeCertificates' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeCertificates" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "CertificateIdentifier"
          Core.=: certificateIdentifier,
        "Marker" Core.=: marker,
        "MaxRecords" Core.=: maxRecords
      ]

-- | /See:/ 'newDescribeCertificatesResponse' smart constructor.
data DescribeCertificatesResponse = DescribeCertificatesResponse'
  { -- | A list of certificates for this account.
    certificates :: Prelude.Maybe [Certificate],
    -- | An optional pagination token provided if the number of records retrieved
    -- is greater than @MaxRecords@. If this parameter is specified, the marker
    -- specifies the next record in the list. Including the value of @Marker@
    -- in the next call to @DescribeCertificates@ results in the next page of
    -- certificates.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCertificatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificates', 'describeCertificatesResponse_certificates' - A list of certificates for this account.
--
-- 'marker', 'describeCertificatesResponse_marker' - An optional pagination token provided if the number of records retrieved
-- is greater than @MaxRecords@. If this parameter is specified, the marker
-- specifies the next record in the list. Including the value of @Marker@
-- in the next call to @DescribeCertificates@ results in the next page of
-- certificates.
--
-- 'httpStatus', 'describeCertificatesResponse_httpStatus' - The response's http status code.
newDescribeCertificatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCertificatesResponse
newDescribeCertificatesResponse pHttpStatus_ =
  DescribeCertificatesResponse'
    { certificates =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of certificates for this account.
describeCertificatesResponse_certificates :: Lens.Lens' DescribeCertificatesResponse (Prelude.Maybe [Certificate])
describeCertificatesResponse_certificates = Lens.lens (\DescribeCertificatesResponse' {certificates} -> certificates) (\s@DescribeCertificatesResponse' {} a -> s {certificates = a} :: DescribeCertificatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | An optional pagination token provided if the number of records retrieved
-- is greater than @MaxRecords@. If this parameter is specified, the marker
-- specifies the next record in the list. Including the value of @Marker@
-- in the next call to @DescribeCertificates@ results in the next page of
-- certificates.
describeCertificatesResponse_marker :: Lens.Lens' DescribeCertificatesResponse (Prelude.Maybe Prelude.Text)
describeCertificatesResponse_marker = Lens.lens (\DescribeCertificatesResponse' {marker} -> marker) (\s@DescribeCertificatesResponse' {} a -> s {marker = a} :: DescribeCertificatesResponse)

-- | The response's http status code.
describeCertificatesResponse_httpStatus :: Lens.Lens' DescribeCertificatesResponse Prelude.Int
describeCertificatesResponse_httpStatus = Lens.lens (\DescribeCertificatesResponse' {httpStatus} -> httpStatus) (\s@DescribeCertificatesResponse' {} a -> s {httpStatus = a} :: DescribeCertificatesResponse)

instance Prelude.NFData DescribeCertificatesResponse