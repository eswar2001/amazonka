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
-- Module      : Amazonka.Rum.GetAppMonitorData
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the raw performance events that RUM has collected from your
-- web application, so that you can do your own processing or analysis of
-- this data.
--
-- This operation returns paginated results.
module Amazonka.Rum.GetAppMonitorData
  ( -- * Creating a Request
    GetAppMonitorData (..),
    newGetAppMonitorData,

    -- * Request Lenses
    getAppMonitorData_nextToken,
    getAppMonitorData_filters,
    getAppMonitorData_maxResults,
    getAppMonitorData_name,
    getAppMonitorData_timeRange,

    -- * Destructuring the Response
    GetAppMonitorDataResponse (..),
    newGetAppMonitorDataResponse,

    -- * Response Lenses
    getAppMonitorDataResponse_nextToken,
    getAppMonitorDataResponse_events,
    getAppMonitorDataResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Rum.Types

-- | /See:/ 'newGetAppMonitorData' smart constructor.
data GetAppMonitorData = GetAppMonitorData'
  { -- | Use the token returned by the previous operation to request the next
    -- page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of structures that you can use to filter the results to those
    -- that match one or more sets of key-value pairs that you specify.
    filters :: Prelude.Maybe [QueryFilter],
    -- | The maximum number of results to return in one operation.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the app monitor that collected the data that you want to
    -- retrieve.
    name :: Prelude.Text,
    -- | A structure that defines the time range that you want to retrieve
    -- results from.
    timeRange :: TimeRange
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppMonitorData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAppMonitorData_nextToken' - Use the token returned by the previous operation to request the next
-- page of results.
--
-- 'filters', 'getAppMonitorData_filters' - An array of structures that you can use to filter the results to those
-- that match one or more sets of key-value pairs that you specify.
--
-- 'maxResults', 'getAppMonitorData_maxResults' - The maximum number of results to return in one operation.
--
-- 'name', 'getAppMonitorData_name' - The name of the app monitor that collected the data that you want to
-- retrieve.
--
-- 'timeRange', 'getAppMonitorData_timeRange' - A structure that defines the time range that you want to retrieve
-- results from.
newGetAppMonitorData ::
  -- | 'name'
  Prelude.Text ->
  -- | 'timeRange'
  TimeRange ->
  GetAppMonitorData
newGetAppMonitorData pName_ pTimeRange_ =
  GetAppMonitorData'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      name = pName_,
      timeRange = pTimeRange_
    }

-- | Use the token returned by the previous operation to request the next
-- page of results.
getAppMonitorData_nextToken :: Lens.Lens' GetAppMonitorData (Prelude.Maybe Prelude.Text)
getAppMonitorData_nextToken = Lens.lens (\GetAppMonitorData' {nextToken} -> nextToken) (\s@GetAppMonitorData' {} a -> s {nextToken = a} :: GetAppMonitorData)

-- | An array of structures that you can use to filter the results to those
-- that match one or more sets of key-value pairs that you specify.
getAppMonitorData_filters :: Lens.Lens' GetAppMonitorData (Prelude.Maybe [QueryFilter])
getAppMonitorData_filters = Lens.lens (\GetAppMonitorData' {filters} -> filters) (\s@GetAppMonitorData' {} a -> s {filters = a} :: GetAppMonitorData) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return in one operation.
getAppMonitorData_maxResults :: Lens.Lens' GetAppMonitorData (Prelude.Maybe Prelude.Natural)
getAppMonitorData_maxResults = Lens.lens (\GetAppMonitorData' {maxResults} -> maxResults) (\s@GetAppMonitorData' {} a -> s {maxResults = a} :: GetAppMonitorData)

-- | The name of the app monitor that collected the data that you want to
-- retrieve.
getAppMonitorData_name :: Lens.Lens' GetAppMonitorData Prelude.Text
getAppMonitorData_name = Lens.lens (\GetAppMonitorData' {name} -> name) (\s@GetAppMonitorData' {} a -> s {name = a} :: GetAppMonitorData)

-- | A structure that defines the time range that you want to retrieve
-- results from.
getAppMonitorData_timeRange :: Lens.Lens' GetAppMonitorData TimeRange
getAppMonitorData_timeRange = Lens.lens (\GetAppMonitorData' {timeRange} -> timeRange) (\s@GetAppMonitorData' {} a -> s {timeRange = a} :: GetAppMonitorData)

instance Core.AWSPager GetAppMonitorData where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getAppMonitorDataResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getAppMonitorDataResponse_events
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getAppMonitorData_nextToken
          Lens..~ rs
          Lens.^? getAppMonitorDataResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetAppMonitorData where
  type
    AWSResponse GetAppMonitorData =
      GetAppMonitorDataResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAppMonitorDataResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Events" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAppMonitorData where
  hashWithSalt _salt GetAppMonitorData' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` timeRange

instance Prelude.NFData GetAppMonitorData where
  rnf GetAppMonitorData' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf timeRange

instance Core.ToHeaders GetAppMonitorData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetAppMonitorData where
  toJSON GetAppMonitorData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("TimeRange" Core..= timeRange)
          ]
      )

instance Core.ToPath GetAppMonitorData where
  toPath GetAppMonitorData' {..} =
    Prelude.mconcat
      ["/appmonitor/", Core.toBS name, "/data"]

instance Core.ToQuery GetAppMonitorData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAppMonitorDataResponse' smart constructor.
data GetAppMonitorDataResponse = GetAppMonitorDataResponse'
  { -- | A token that you can use in a subsequent operation to retrieve the next
    -- set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The events that RUM collected that match your request.
    events :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppMonitorDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAppMonitorDataResponse_nextToken' - A token that you can use in a subsequent operation to retrieve the next
-- set of results.
--
-- 'events', 'getAppMonitorDataResponse_events' - The events that RUM collected that match your request.
--
-- 'httpStatus', 'getAppMonitorDataResponse_httpStatus' - The response's http status code.
newGetAppMonitorDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAppMonitorDataResponse
newGetAppMonitorDataResponse pHttpStatus_ =
  GetAppMonitorDataResponse'
    { nextToken =
        Prelude.Nothing,
      events = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that you can use in a subsequent operation to retrieve the next
-- set of results.
getAppMonitorDataResponse_nextToken :: Lens.Lens' GetAppMonitorDataResponse (Prelude.Maybe Prelude.Text)
getAppMonitorDataResponse_nextToken = Lens.lens (\GetAppMonitorDataResponse' {nextToken} -> nextToken) (\s@GetAppMonitorDataResponse' {} a -> s {nextToken = a} :: GetAppMonitorDataResponse)

-- | The events that RUM collected that match your request.
getAppMonitorDataResponse_events :: Lens.Lens' GetAppMonitorDataResponse (Prelude.Maybe [Prelude.Text])
getAppMonitorDataResponse_events = Lens.lens (\GetAppMonitorDataResponse' {events} -> events) (\s@GetAppMonitorDataResponse' {} a -> s {events = a} :: GetAppMonitorDataResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getAppMonitorDataResponse_httpStatus :: Lens.Lens' GetAppMonitorDataResponse Prelude.Int
getAppMonitorDataResponse_httpStatus = Lens.lens (\GetAppMonitorDataResponse' {httpStatus} -> httpStatus) (\s@GetAppMonitorDataResponse' {} a -> s {httpStatus = a} :: GetAppMonitorDataResponse)

instance Prelude.NFData GetAppMonitorDataResponse where
  rnf GetAppMonitorDataResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf events
      `Prelude.seq` Prelude.rnf httpStatus