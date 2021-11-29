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
-- Module      : Amazonka.KinesisAnalytics.Types.InputSchemaUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisAnalytics.Types.InputSchemaUpdate where

import qualified Amazonka.Core as Core
import Amazonka.KinesisAnalytics.Types.RecordColumn
import Amazonka.KinesisAnalytics.Types.RecordFormat
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes updates for the application\'s input schema.
--
-- /See:/ 'newInputSchemaUpdate' smart constructor.
data InputSchemaUpdate = InputSchemaUpdate'
  { -- | Specifies the format of the records on the streaming source.
    recordFormatUpdate :: Prelude.Maybe RecordFormat,
    -- | Specifies the encoding of the records in the streaming source. For
    -- example, UTF-8.
    recordEncodingUpdate :: Prelude.Maybe Prelude.Text,
    -- | A list of @RecordColumn@ objects. Each object describes the mapping of
    -- the streaming source element to the corresponding column in the
    -- in-application stream.
    recordColumnUpdates :: Prelude.Maybe (Prelude.NonEmpty RecordColumn)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputSchemaUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordFormatUpdate', 'inputSchemaUpdate_recordFormatUpdate' - Specifies the format of the records on the streaming source.
--
-- 'recordEncodingUpdate', 'inputSchemaUpdate_recordEncodingUpdate' - Specifies the encoding of the records in the streaming source. For
-- example, UTF-8.
--
-- 'recordColumnUpdates', 'inputSchemaUpdate_recordColumnUpdates' - A list of @RecordColumn@ objects. Each object describes the mapping of
-- the streaming source element to the corresponding column in the
-- in-application stream.
newInputSchemaUpdate ::
  InputSchemaUpdate
newInputSchemaUpdate =
  InputSchemaUpdate'
    { recordFormatUpdate =
        Prelude.Nothing,
      recordEncodingUpdate = Prelude.Nothing,
      recordColumnUpdates = Prelude.Nothing
    }

-- | Specifies the format of the records on the streaming source.
inputSchemaUpdate_recordFormatUpdate :: Lens.Lens' InputSchemaUpdate (Prelude.Maybe RecordFormat)
inputSchemaUpdate_recordFormatUpdate = Lens.lens (\InputSchemaUpdate' {recordFormatUpdate} -> recordFormatUpdate) (\s@InputSchemaUpdate' {} a -> s {recordFormatUpdate = a} :: InputSchemaUpdate)

-- | Specifies the encoding of the records in the streaming source. For
-- example, UTF-8.
inputSchemaUpdate_recordEncodingUpdate :: Lens.Lens' InputSchemaUpdate (Prelude.Maybe Prelude.Text)
inputSchemaUpdate_recordEncodingUpdate = Lens.lens (\InputSchemaUpdate' {recordEncodingUpdate} -> recordEncodingUpdate) (\s@InputSchemaUpdate' {} a -> s {recordEncodingUpdate = a} :: InputSchemaUpdate)

-- | A list of @RecordColumn@ objects. Each object describes the mapping of
-- the streaming source element to the corresponding column in the
-- in-application stream.
inputSchemaUpdate_recordColumnUpdates :: Lens.Lens' InputSchemaUpdate (Prelude.Maybe (Prelude.NonEmpty RecordColumn))
inputSchemaUpdate_recordColumnUpdates = Lens.lens (\InputSchemaUpdate' {recordColumnUpdates} -> recordColumnUpdates) (\s@InputSchemaUpdate' {} a -> s {recordColumnUpdates = a} :: InputSchemaUpdate) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable InputSchemaUpdate

instance Prelude.NFData InputSchemaUpdate

instance Core.ToJSON InputSchemaUpdate where
  toJSON InputSchemaUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RecordFormatUpdate" Core..=)
              Prelude.<$> recordFormatUpdate,
            ("RecordEncodingUpdate" Core..=)
              Prelude.<$> recordEncodingUpdate,
            ("RecordColumnUpdates" Core..=)
              Prelude.<$> recordColumnUpdates
          ]
      )