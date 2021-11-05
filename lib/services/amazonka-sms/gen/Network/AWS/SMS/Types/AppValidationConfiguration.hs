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
-- Module      : Amazonka.SMS.Types.AppValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SMS.Types.AppValidationConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SMS.Types.AppValidationStrategy
import Amazonka.SMS.Types.SSMValidationParameters

-- | Configuration for validating an application.
--
-- /See:/ 'newAppValidationConfiguration' smart constructor.
data AppValidationConfiguration = AppValidationConfiguration'
  { -- | The validation parameters.
    ssmValidationParameters :: Prelude.Maybe SSMValidationParameters,
    -- | The name of the configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the validation.
    validationId :: Prelude.Maybe Prelude.Text,
    -- | The validation strategy.
    appValidationStrategy :: Prelude.Maybe AppValidationStrategy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppValidationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ssmValidationParameters', 'appValidationConfiguration_ssmValidationParameters' - The validation parameters.
--
-- 'name', 'appValidationConfiguration_name' - The name of the configuration.
--
-- 'validationId', 'appValidationConfiguration_validationId' - The ID of the validation.
--
-- 'appValidationStrategy', 'appValidationConfiguration_appValidationStrategy' - The validation strategy.
newAppValidationConfiguration ::
  AppValidationConfiguration
newAppValidationConfiguration =
  AppValidationConfiguration'
    { ssmValidationParameters =
        Prelude.Nothing,
      name = Prelude.Nothing,
      validationId = Prelude.Nothing,
      appValidationStrategy = Prelude.Nothing
    }

-- | The validation parameters.
appValidationConfiguration_ssmValidationParameters :: Lens.Lens' AppValidationConfiguration (Prelude.Maybe SSMValidationParameters)
appValidationConfiguration_ssmValidationParameters = Lens.lens (\AppValidationConfiguration' {ssmValidationParameters} -> ssmValidationParameters) (\s@AppValidationConfiguration' {} a -> s {ssmValidationParameters = a} :: AppValidationConfiguration)

-- | The name of the configuration.
appValidationConfiguration_name :: Lens.Lens' AppValidationConfiguration (Prelude.Maybe Prelude.Text)
appValidationConfiguration_name = Lens.lens (\AppValidationConfiguration' {name} -> name) (\s@AppValidationConfiguration' {} a -> s {name = a} :: AppValidationConfiguration)

-- | The ID of the validation.
appValidationConfiguration_validationId :: Lens.Lens' AppValidationConfiguration (Prelude.Maybe Prelude.Text)
appValidationConfiguration_validationId = Lens.lens (\AppValidationConfiguration' {validationId} -> validationId) (\s@AppValidationConfiguration' {} a -> s {validationId = a} :: AppValidationConfiguration)

-- | The validation strategy.
appValidationConfiguration_appValidationStrategy :: Lens.Lens' AppValidationConfiguration (Prelude.Maybe AppValidationStrategy)
appValidationConfiguration_appValidationStrategy = Lens.lens (\AppValidationConfiguration' {appValidationStrategy} -> appValidationStrategy) (\s@AppValidationConfiguration' {} a -> s {appValidationStrategy = a} :: AppValidationConfiguration)

instance Core.FromJSON AppValidationConfiguration where
  parseJSON =
    Core.withObject
      "AppValidationConfiguration"
      ( \x ->
          AppValidationConfiguration'
            Prelude.<$> (x Core..:? "ssmValidationParameters")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "validationId")
            Prelude.<*> (x Core..:? "appValidationStrategy")
      )

instance Prelude.Hashable AppValidationConfiguration

instance Prelude.NFData AppValidationConfiguration

instance Core.ToJSON AppValidationConfiguration where
  toJSON AppValidationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ssmValidationParameters" Core..=)
              Prelude.<$> ssmValidationParameters,
            ("name" Core..=) Prelude.<$> name,
            ("validationId" Core..=) Prelude.<$> validationId,
            ("appValidationStrategy" Core..=)
              Prelude.<$> appValidationStrategy
          ]
      )
