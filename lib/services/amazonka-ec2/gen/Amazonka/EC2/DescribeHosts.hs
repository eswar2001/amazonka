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
-- Module      : Amazonka.EC2.DescribeHosts
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified Dedicated Hosts or all your Dedicated Hosts.
--
-- The results describe only the Dedicated Hosts in the Region you\'re
-- currently using. All listed instances consume capacity on your Dedicated
-- Host. Dedicated Hosts that have recently been released are listed with
-- the state @released@.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeHosts
  ( -- * Creating a Request
    DescribeHosts (..),
    newDescribeHosts,

    -- * Request Lenses
    describeHosts_nextToken,
    describeHosts_hostIds,
    describeHosts_filter,
    describeHosts_maxResults,

    -- * Destructuring the Response
    DescribeHostsResponse (..),
    newDescribeHostsResponse,

    -- * Response Lenses
    describeHostsResponse_nextToken,
    describeHostsResponse_hosts,
    describeHostsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeHosts' smart constructor.
data DescribeHosts = DescribeHosts'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The IDs of the Dedicated Hosts. The IDs are used for targeted instance
    -- launches.
    hostIds :: Prelude.Maybe [Prelude.Text],
    -- | The filters.
    --
    -- -   @auto-placement@ - Whether auto-placement is enabled or disabled
    --     (@on@ | @off@).
    --
    -- -   @availability-zone@ - The Availability Zone of the host.
    --
    -- -   @client-token@ - The idempotency token that you provided when you
    --     allocated the host.
    --
    -- -   @host-reservation-id@ - The ID of the reservation assigned to this
    --     host.
    --
    -- -   @instance-type@ - The instance type size that the Dedicated Host is
    --     configured to support.
    --
    -- -   @state@ - The allocation state of the Dedicated Host (@available@ |
    --     @under-assessment@ | @permanent-failure@ | @released@ |
    --     @released-permanent-failure@).
    --
    -- -   @tag-key@ - The key of a tag assigned to the resource. Use this
    --     filter to find all resources assigned a tag with a specific key,
    --     regardless of the tag value.
    filter' :: Prelude.Maybe [Filter],
    -- | The maximum number of results to return for the request in a single
    -- page. The remaining results can be seen by sending another request with
    -- the returned @nextToken@ value. This value can be between 5 and 500. If
    -- @maxResults@ is given a larger value than 500, you receive an error.
    --
    -- You cannot specify this parameter and the host IDs parameter in the same
    -- request.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeHosts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeHosts_nextToken' - The token to use to retrieve the next page of results.
--
-- 'hostIds', 'describeHosts_hostIds' - The IDs of the Dedicated Hosts. The IDs are used for targeted instance
-- launches.
--
-- 'filter'', 'describeHosts_filter' - The filters.
--
-- -   @auto-placement@ - Whether auto-placement is enabled or disabled
--     (@on@ | @off@).
--
-- -   @availability-zone@ - The Availability Zone of the host.
--
-- -   @client-token@ - The idempotency token that you provided when you
--     allocated the host.
--
-- -   @host-reservation-id@ - The ID of the reservation assigned to this
--     host.
--
-- -   @instance-type@ - The instance type size that the Dedicated Host is
--     configured to support.
--
-- -   @state@ - The allocation state of the Dedicated Host (@available@ |
--     @under-assessment@ | @permanent-failure@ | @released@ |
--     @released-permanent-failure@).
--
-- -   @tag-key@ - The key of a tag assigned to the resource. Use this
--     filter to find all resources assigned a tag with a specific key,
--     regardless of the tag value.
--
-- 'maxResults', 'describeHosts_maxResults' - The maximum number of results to return for the request in a single
-- page. The remaining results can be seen by sending another request with
-- the returned @nextToken@ value. This value can be between 5 and 500. If
-- @maxResults@ is given a larger value than 500, you receive an error.
--
-- You cannot specify this parameter and the host IDs parameter in the same
-- request.
newDescribeHosts ::
  DescribeHosts
newDescribeHosts =
  DescribeHosts'
    { nextToken = Prelude.Nothing,
      hostIds = Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to use to retrieve the next page of results.
describeHosts_nextToken :: Lens.Lens' DescribeHosts (Prelude.Maybe Prelude.Text)
describeHosts_nextToken = Lens.lens (\DescribeHosts' {nextToken} -> nextToken) (\s@DescribeHosts' {} a -> s {nextToken = a} :: DescribeHosts)

-- | The IDs of the Dedicated Hosts. The IDs are used for targeted instance
-- launches.
describeHosts_hostIds :: Lens.Lens' DescribeHosts (Prelude.Maybe [Prelude.Text])
describeHosts_hostIds = Lens.lens (\DescribeHosts' {hostIds} -> hostIds) (\s@DescribeHosts' {} a -> s {hostIds = a} :: DescribeHosts) Prelude.. Lens.mapping Lens.coerced

-- | The filters.
--
-- -   @auto-placement@ - Whether auto-placement is enabled or disabled
--     (@on@ | @off@).
--
-- -   @availability-zone@ - The Availability Zone of the host.
--
-- -   @client-token@ - The idempotency token that you provided when you
--     allocated the host.
--
-- -   @host-reservation-id@ - The ID of the reservation assigned to this
--     host.
--
-- -   @instance-type@ - The instance type size that the Dedicated Host is
--     configured to support.
--
-- -   @state@ - The allocation state of the Dedicated Host (@available@ |
--     @under-assessment@ | @permanent-failure@ | @released@ |
--     @released-permanent-failure@).
--
-- -   @tag-key@ - The key of a tag assigned to the resource. Use this
--     filter to find all resources assigned a tag with a specific key,
--     regardless of the tag value.
describeHosts_filter :: Lens.Lens' DescribeHosts (Prelude.Maybe [Filter])
describeHosts_filter = Lens.lens (\DescribeHosts' {filter'} -> filter') (\s@DescribeHosts' {} a -> s {filter' = a} :: DescribeHosts) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return for the request in a single
-- page. The remaining results can be seen by sending another request with
-- the returned @nextToken@ value. This value can be between 5 and 500. If
-- @maxResults@ is given a larger value than 500, you receive an error.
--
-- You cannot specify this parameter and the host IDs parameter in the same
-- request.
describeHosts_maxResults :: Lens.Lens' DescribeHosts (Prelude.Maybe Prelude.Int)
describeHosts_maxResults = Lens.lens (\DescribeHosts' {maxResults} -> maxResults) (\s@DescribeHosts' {} a -> s {maxResults = a} :: DescribeHosts)

instance Core.AWSPager DescribeHosts where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeHostsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeHostsResponse_hosts Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeHosts_nextToken
          Lens..~ rs
          Lens.^? describeHostsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest DescribeHosts where
  type
    AWSResponse DescribeHosts =
      DescribeHostsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeHostsResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "hostSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeHosts where
  hashWithSalt _salt DescribeHosts' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` hostIds
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeHosts where
  rnf DescribeHosts' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf hostIds
      `Prelude.seq` Prelude.rnf filter'
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeHosts where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeHosts where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeHosts where
  toQuery DescribeHosts' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeHosts" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "HostId" Prelude.<$> hostIds),
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filter'),
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeHostsResponse' smart constructor.
data DescribeHostsResponse = DescribeHostsResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the Dedicated Hosts.
    hosts :: Prelude.Maybe [Host],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeHostsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeHostsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'hosts', 'describeHostsResponse_hosts' - Information about the Dedicated Hosts.
--
-- 'httpStatus', 'describeHostsResponse_httpStatus' - The response's http status code.
newDescribeHostsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeHostsResponse
newDescribeHostsResponse pHttpStatus_ =
  DescribeHostsResponse'
    { nextToken = Prelude.Nothing,
      hosts = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeHostsResponse_nextToken :: Lens.Lens' DescribeHostsResponse (Prelude.Maybe Prelude.Text)
describeHostsResponse_nextToken = Lens.lens (\DescribeHostsResponse' {nextToken} -> nextToken) (\s@DescribeHostsResponse' {} a -> s {nextToken = a} :: DescribeHostsResponse)

-- | Information about the Dedicated Hosts.
describeHostsResponse_hosts :: Lens.Lens' DescribeHostsResponse (Prelude.Maybe [Host])
describeHostsResponse_hosts = Lens.lens (\DescribeHostsResponse' {hosts} -> hosts) (\s@DescribeHostsResponse' {} a -> s {hosts = a} :: DescribeHostsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeHostsResponse_httpStatus :: Lens.Lens' DescribeHostsResponse Prelude.Int
describeHostsResponse_httpStatus = Lens.lens (\DescribeHostsResponse' {httpStatus} -> httpStatus) (\s@DescribeHostsResponse' {} a -> s {httpStatus = a} :: DescribeHostsResponse)

instance Prelude.NFData DescribeHostsResponse where
  rnf DescribeHostsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf hosts
      `Prelude.seq` Prelude.rnf httpStatus
