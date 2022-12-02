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
-- Module      : Amazonka.KafkaConnect.Types.CustomPluginFileDescription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KafkaConnect.Types.CustomPluginFileDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Details about a custom plugin file.
--
-- /See:/ 'newCustomPluginFileDescription' smart constructor.
data CustomPluginFileDescription = CustomPluginFileDescription'
  { -- | The size in bytes of the custom plugin file. You can use it to validate
    -- the file.
    fileSize :: Prelude.Maybe Prelude.Integer,
    -- | The hex-encoded MD5 checksum of the custom plugin file. You can use it
    -- to validate the file.
    fileMd5 :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomPluginFileDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fileSize', 'customPluginFileDescription_fileSize' - The size in bytes of the custom plugin file. You can use it to validate
-- the file.
--
-- 'fileMd5', 'customPluginFileDescription_fileMd5' - The hex-encoded MD5 checksum of the custom plugin file. You can use it
-- to validate the file.
newCustomPluginFileDescription ::
  CustomPluginFileDescription
newCustomPluginFileDescription =
  CustomPluginFileDescription'
    { fileSize =
        Prelude.Nothing,
      fileMd5 = Prelude.Nothing
    }

-- | The size in bytes of the custom plugin file. You can use it to validate
-- the file.
customPluginFileDescription_fileSize :: Lens.Lens' CustomPluginFileDescription (Prelude.Maybe Prelude.Integer)
customPluginFileDescription_fileSize = Lens.lens (\CustomPluginFileDescription' {fileSize} -> fileSize) (\s@CustomPluginFileDescription' {} a -> s {fileSize = a} :: CustomPluginFileDescription)

-- | The hex-encoded MD5 checksum of the custom plugin file. You can use it
-- to validate the file.
customPluginFileDescription_fileMd5 :: Lens.Lens' CustomPluginFileDescription (Prelude.Maybe Prelude.Text)
customPluginFileDescription_fileMd5 = Lens.lens (\CustomPluginFileDescription' {fileMd5} -> fileMd5) (\s@CustomPluginFileDescription' {} a -> s {fileMd5 = a} :: CustomPluginFileDescription)

instance Data.FromJSON CustomPluginFileDescription where
  parseJSON =
    Data.withObject
      "CustomPluginFileDescription"
      ( \x ->
          CustomPluginFileDescription'
            Prelude.<$> (x Data..:? "fileSize")
            Prelude.<*> (x Data..:? "fileMd5")
      )

instance Prelude.Hashable CustomPluginFileDescription where
  hashWithSalt _salt CustomPluginFileDescription' {..} =
    _salt `Prelude.hashWithSalt` fileSize
      `Prelude.hashWithSalt` fileMd5

instance Prelude.NFData CustomPluginFileDescription where
  rnf CustomPluginFileDescription' {..} =
    Prelude.rnf fileSize
      `Prelude.seq` Prelude.rnf fileMd5
