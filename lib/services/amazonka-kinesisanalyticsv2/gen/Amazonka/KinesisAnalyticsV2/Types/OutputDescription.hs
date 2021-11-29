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
-- Module      : Amazonka.KinesisAnalyticsV2.Types.OutputDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisAnalyticsV2.Types.OutputDescription where

import qualified Amazonka.Core as Core
import Amazonka.KinesisAnalyticsV2.Types.DestinationSchema
import Amazonka.KinesisAnalyticsV2.Types.KinesisFirehoseOutputDescription
import Amazonka.KinesisAnalyticsV2.Types.KinesisStreamsOutputDescription
import Amazonka.KinesisAnalyticsV2.Types.LambdaOutputDescription
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | For a SQL-based Kinesis Data Analytics application, describes the
-- application output configuration, which includes the in-application
-- stream name and the destination where the stream data is written. The
-- destination can be a Kinesis data stream or a Kinesis Data Firehose
-- delivery stream.
--
-- /See:/ 'newOutputDescription' smart constructor.
data OutputDescription = OutputDescription'
  { -- | A unique identifier for the output configuration.
    outputId :: Prelude.Maybe Prelude.Text,
    -- | The data format used for writing data to the destination.
    destinationSchema :: Prelude.Maybe DestinationSchema,
    -- | Describes the Kinesis Data Firehose delivery stream that is configured
    -- as the destination where output is written.
    kinesisFirehoseOutputDescription :: Prelude.Maybe KinesisFirehoseOutputDescription,
    -- | Describes the Kinesis data stream that is configured as the destination
    -- where output is written.
    kinesisStreamsOutputDescription :: Prelude.Maybe KinesisStreamsOutputDescription,
    -- | The name of the in-application stream that is configured as output.
    name :: Prelude.Maybe Prelude.Text,
    -- | Describes the Lambda function that is configured as the destination
    -- where output is written.
    lambdaOutputDescription :: Prelude.Maybe LambdaOutputDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutputDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputId', 'outputDescription_outputId' - A unique identifier for the output configuration.
--
-- 'destinationSchema', 'outputDescription_destinationSchema' - The data format used for writing data to the destination.
--
-- 'kinesisFirehoseOutputDescription', 'outputDescription_kinesisFirehoseOutputDescription' - Describes the Kinesis Data Firehose delivery stream that is configured
-- as the destination where output is written.
--
-- 'kinesisStreamsOutputDescription', 'outputDescription_kinesisStreamsOutputDescription' - Describes the Kinesis data stream that is configured as the destination
-- where output is written.
--
-- 'name', 'outputDescription_name' - The name of the in-application stream that is configured as output.
--
-- 'lambdaOutputDescription', 'outputDescription_lambdaOutputDescription' - Describes the Lambda function that is configured as the destination
-- where output is written.
newOutputDescription ::
  OutputDescription
newOutputDescription =
  OutputDescription'
    { outputId = Prelude.Nothing,
      destinationSchema = Prelude.Nothing,
      kinesisFirehoseOutputDescription = Prelude.Nothing,
      kinesisStreamsOutputDescription = Prelude.Nothing,
      name = Prelude.Nothing,
      lambdaOutputDescription = Prelude.Nothing
    }

-- | A unique identifier for the output configuration.
outputDescription_outputId :: Lens.Lens' OutputDescription (Prelude.Maybe Prelude.Text)
outputDescription_outputId = Lens.lens (\OutputDescription' {outputId} -> outputId) (\s@OutputDescription' {} a -> s {outputId = a} :: OutputDescription)

-- | The data format used for writing data to the destination.
outputDescription_destinationSchema :: Lens.Lens' OutputDescription (Prelude.Maybe DestinationSchema)
outputDescription_destinationSchema = Lens.lens (\OutputDescription' {destinationSchema} -> destinationSchema) (\s@OutputDescription' {} a -> s {destinationSchema = a} :: OutputDescription)

-- | Describes the Kinesis Data Firehose delivery stream that is configured
-- as the destination where output is written.
outputDescription_kinesisFirehoseOutputDescription :: Lens.Lens' OutputDescription (Prelude.Maybe KinesisFirehoseOutputDescription)
outputDescription_kinesisFirehoseOutputDescription = Lens.lens (\OutputDescription' {kinesisFirehoseOutputDescription} -> kinesisFirehoseOutputDescription) (\s@OutputDescription' {} a -> s {kinesisFirehoseOutputDescription = a} :: OutputDescription)

-- | Describes the Kinesis data stream that is configured as the destination
-- where output is written.
outputDescription_kinesisStreamsOutputDescription :: Lens.Lens' OutputDescription (Prelude.Maybe KinesisStreamsOutputDescription)
outputDescription_kinesisStreamsOutputDescription = Lens.lens (\OutputDescription' {kinesisStreamsOutputDescription} -> kinesisStreamsOutputDescription) (\s@OutputDescription' {} a -> s {kinesisStreamsOutputDescription = a} :: OutputDescription)

-- | The name of the in-application stream that is configured as output.
outputDescription_name :: Lens.Lens' OutputDescription (Prelude.Maybe Prelude.Text)
outputDescription_name = Lens.lens (\OutputDescription' {name} -> name) (\s@OutputDescription' {} a -> s {name = a} :: OutputDescription)

-- | Describes the Lambda function that is configured as the destination
-- where output is written.
outputDescription_lambdaOutputDescription :: Lens.Lens' OutputDescription (Prelude.Maybe LambdaOutputDescription)
outputDescription_lambdaOutputDescription = Lens.lens (\OutputDescription' {lambdaOutputDescription} -> lambdaOutputDescription) (\s@OutputDescription' {} a -> s {lambdaOutputDescription = a} :: OutputDescription)

instance Core.FromJSON OutputDescription where
  parseJSON =
    Core.withObject
      "OutputDescription"
      ( \x ->
          OutputDescription'
            Prelude.<$> (x Core..:? "OutputId")
            Prelude.<*> (x Core..:? "DestinationSchema")
            Prelude.<*> (x Core..:? "KinesisFirehoseOutputDescription")
            Prelude.<*> (x Core..:? "KinesisStreamsOutputDescription")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "LambdaOutputDescription")
      )

instance Prelude.Hashable OutputDescription

instance Prelude.NFData OutputDescription