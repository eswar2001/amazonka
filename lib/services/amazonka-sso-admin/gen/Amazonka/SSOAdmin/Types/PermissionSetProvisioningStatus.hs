{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SSOAdmin.Types.PermissionSetProvisioningStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSOAdmin.Types.PermissionSetProvisioningStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSOAdmin.Types.StatusValues

-- | A structure that is used to provide the status of the provisioning
-- operation for a specified permission set.
--
-- /See:/ 'newPermissionSetProvisioningStatus' smart constructor.
data PermissionSetProvisioningStatus = PermissionSetProvisioningStatus'
  { -- | The identifier for tracking the request operation that is generated by
    -- the universally unique identifier (UUID) workflow.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The status of the permission set provisioning process.
    status :: Prelude.Maybe StatusValues,
    -- | The identifier of the AWS account from which to list the assignments.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the permission set that is being provisioned. For more
    -- information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>
    -- in the /AWS General Reference/.
    permissionSetArn :: Prelude.Maybe Prelude.Text,
    -- | The date that the permission set was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The message that contains an error or exception in case of an operation
    -- failure.
    failureReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PermissionSetProvisioningStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'permissionSetProvisioningStatus_requestId' - The identifier for tracking the request operation that is generated by
-- the universally unique identifier (UUID) workflow.
--
-- 'status', 'permissionSetProvisioningStatus_status' - The status of the permission set provisioning process.
--
-- 'accountId', 'permissionSetProvisioningStatus_accountId' - The identifier of the AWS account from which to list the assignments.
--
-- 'permissionSetArn', 'permissionSetProvisioningStatus_permissionSetArn' - The ARN of the permission set that is being provisioned. For more
-- information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>
-- in the /AWS General Reference/.
--
-- 'createdDate', 'permissionSetProvisioningStatus_createdDate' - The date that the permission set was created.
--
-- 'failureReason', 'permissionSetProvisioningStatus_failureReason' - The message that contains an error or exception in case of an operation
-- failure.
newPermissionSetProvisioningStatus ::
  PermissionSetProvisioningStatus
newPermissionSetProvisioningStatus =
  PermissionSetProvisioningStatus'
    { requestId =
        Prelude.Nothing,
      status = Prelude.Nothing,
      accountId = Prelude.Nothing,
      permissionSetArn = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      failureReason = Prelude.Nothing
    }

-- | The identifier for tracking the request operation that is generated by
-- the universally unique identifier (UUID) workflow.
permissionSetProvisioningStatus_requestId :: Lens.Lens' PermissionSetProvisioningStatus (Prelude.Maybe Prelude.Text)
permissionSetProvisioningStatus_requestId = Lens.lens (\PermissionSetProvisioningStatus' {requestId} -> requestId) (\s@PermissionSetProvisioningStatus' {} a -> s {requestId = a} :: PermissionSetProvisioningStatus)

-- | The status of the permission set provisioning process.
permissionSetProvisioningStatus_status :: Lens.Lens' PermissionSetProvisioningStatus (Prelude.Maybe StatusValues)
permissionSetProvisioningStatus_status = Lens.lens (\PermissionSetProvisioningStatus' {status} -> status) (\s@PermissionSetProvisioningStatus' {} a -> s {status = a} :: PermissionSetProvisioningStatus)

-- | The identifier of the AWS account from which to list the assignments.
permissionSetProvisioningStatus_accountId :: Lens.Lens' PermissionSetProvisioningStatus (Prelude.Maybe Prelude.Text)
permissionSetProvisioningStatus_accountId = Lens.lens (\PermissionSetProvisioningStatus' {accountId} -> accountId) (\s@PermissionSetProvisioningStatus' {} a -> s {accountId = a} :: PermissionSetProvisioningStatus)

-- | The ARN of the permission set that is being provisioned. For more
-- information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>
-- in the /AWS General Reference/.
permissionSetProvisioningStatus_permissionSetArn :: Lens.Lens' PermissionSetProvisioningStatus (Prelude.Maybe Prelude.Text)
permissionSetProvisioningStatus_permissionSetArn = Lens.lens (\PermissionSetProvisioningStatus' {permissionSetArn} -> permissionSetArn) (\s@PermissionSetProvisioningStatus' {} a -> s {permissionSetArn = a} :: PermissionSetProvisioningStatus)

-- | The date that the permission set was created.
permissionSetProvisioningStatus_createdDate :: Lens.Lens' PermissionSetProvisioningStatus (Prelude.Maybe Prelude.UTCTime)
permissionSetProvisioningStatus_createdDate = Lens.lens (\PermissionSetProvisioningStatus' {createdDate} -> createdDate) (\s@PermissionSetProvisioningStatus' {} a -> s {createdDate = a} :: PermissionSetProvisioningStatus) Prelude.. Lens.mapping Core._Time

-- | The message that contains an error or exception in case of an operation
-- failure.
permissionSetProvisioningStatus_failureReason :: Lens.Lens' PermissionSetProvisioningStatus (Prelude.Maybe Prelude.Text)
permissionSetProvisioningStatus_failureReason = Lens.lens (\PermissionSetProvisioningStatus' {failureReason} -> failureReason) (\s@PermissionSetProvisioningStatus' {} a -> s {failureReason = a} :: PermissionSetProvisioningStatus)

instance
  Core.FromJSON
    PermissionSetProvisioningStatus
  where
  parseJSON =
    Core.withObject
      "PermissionSetProvisioningStatus"
      ( \x ->
          PermissionSetProvisioningStatus'
            Prelude.<$> (x Core..:? "RequestId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "AccountId")
            Prelude.<*> (x Core..:? "PermissionSetArn")
            Prelude.<*> (x Core..:? "CreatedDate")
            Prelude.<*> (x Core..:? "FailureReason")
      )

instance
  Prelude.Hashable
    PermissionSetProvisioningStatus
  where
  hashWithSalt
    _salt
    PermissionSetProvisioningStatus' {..} =
      _salt `Prelude.hashWithSalt` requestId
        `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` accountId
        `Prelude.hashWithSalt` permissionSetArn
        `Prelude.hashWithSalt` createdDate
        `Prelude.hashWithSalt` failureReason

instance
  Prelude.NFData
    PermissionSetProvisioningStatus
  where
  rnf PermissionSetProvisioningStatus' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf accountId
      `Prelude.seq` Prelude.rnf permissionSetArn
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf failureReason
