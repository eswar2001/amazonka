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
-- Module      : Amazonka.OpenSearch.Types.DryRunResults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.DryRunResults where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | /See:/ 'newDryRunResults' smart constructor.
data DryRunResults = DryRunResults'
  { -- | Contains an optional message associated with the DryRunResults.
    message :: Prelude.Maybe Prelude.Text,
    -- | Specifies the way in which Amazon OpenSearch Service applies the update.
    -- Possible responses are @Blue\/Green@ (the update requires a blue\/green
    -- deployment), @DynamicUpdate@ (no blue\/green required), @Undetermined@
    -- (the domain is undergoing an update and can\'t predict the deployment
    -- type; try again after the update is complete), and @None@ (the request
    -- doesn\'t include any configuration changes).
    deploymentType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DryRunResults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'dryRunResults_message' - Contains an optional message associated with the DryRunResults.
--
-- 'deploymentType', 'dryRunResults_deploymentType' - Specifies the way in which Amazon OpenSearch Service applies the update.
-- Possible responses are @Blue\/Green@ (the update requires a blue\/green
-- deployment), @DynamicUpdate@ (no blue\/green required), @Undetermined@
-- (the domain is undergoing an update and can\'t predict the deployment
-- type; try again after the update is complete), and @None@ (the request
-- doesn\'t include any configuration changes).
newDryRunResults ::
  DryRunResults
newDryRunResults =
  DryRunResults'
    { message = Prelude.Nothing,
      deploymentType = Prelude.Nothing
    }

-- | Contains an optional message associated with the DryRunResults.
dryRunResults_message :: Lens.Lens' DryRunResults (Prelude.Maybe Prelude.Text)
dryRunResults_message = Lens.lens (\DryRunResults' {message} -> message) (\s@DryRunResults' {} a -> s {message = a} :: DryRunResults)

-- | Specifies the way in which Amazon OpenSearch Service applies the update.
-- Possible responses are @Blue\/Green@ (the update requires a blue\/green
-- deployment), @DynamicUpdate@ (no blue\/green required), @Undetermined@
-- (the domain is undergoing an update and can\'t predict the deployment
-- type; try again after the update is complete), and @None@ (the request
-- doesn\'t include any configuration changes).
dryRunResults_deploymentType :: Lens.Lens' DryRunResults (Prelude.Maybe Prelude.Text)
dryRunResults_deploymentType = Lens.lens (\DryRunResults' {deploymentType} -> deploymentType) (\s@DryRunResults' {} a -> s {deploymentType = a} :: DryRunResults)

instance Core.FromJSON DryRunResults where
  parseJSON =
    Core.withObject
      "DryRunResults"
      ( \x ->
          DryRunResults'
            Prelude.<$> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "DeploymentType")
      )

instance Prelude.Hashable DryRunResults where
  hashWithSalt _salt DryRunResults' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` deploymentType

instance Prelude.NFData DryRunResults where
  rnf DryRunResults' {..} =
    Prelude.rnf message
      `Prelude.seq` Prelude.rnf deploymentType