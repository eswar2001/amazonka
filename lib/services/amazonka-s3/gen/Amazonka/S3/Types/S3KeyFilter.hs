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
-- Module      : Amazonka.S3.Types.S3KeyFilter
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.S3KeyFilter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal
import Amazonka.S3.Types.FilterRule

-- | A container for object key name prefix and suffix filtering rules.
--
-- /See:/ 'newS3KeyFilter' smart constructor.
data S3KeyFilter = S3KeyFilter'
  { filterRules :: Prelude.Maybe [FilterRule]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3KeyFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterRules', 's3KeyFilter_filterRules' - Undocumented member.
newS3KeyFilter ::
  S3KeyFilter
newS3KeyFilter =
  S3KeyFilter' {filterRules = Prelude.Nothing}

-- | Undocumented member.
s3KeyFilter_filterRules :: Lens.Lens' S3KeyFilter (Prelude.Maybe [FilterRule])
s3KeyFilter_filterRules = Lens.lens (\S3KeyFilter' {filterRules} -> filterRules) (\s@S3KeyFilter' {} a -> s {filterRules = a} :: S3KeyFilter) Prelude.. Lens.mapping Lens.coerced

instance Data.FromXML S3KeyFilter where
  parseXML x =
    S3KeyFilter'
      Prelude.<$> (Core.may (Data.parseXMLList "FilterRule") x)

instance Prelude.Hashable S3KeyFilter where
  hashWithSalt _salt S3KeyFilter' {..} =
    _salt `Prelude.hashWithSalt` filterRules

instance Prelude.NFData S3KeyFilter where
  rnf S3KeyFilter' {..} = Prelude.rnf filterRules

instance Data.ToXML S3KeyFilter where
  toXML S3KeyFilter' {..} =
    Prelude.mconcat
      [ Data.toXML
          ( Data.toXMLList "FilterRule"
              Prelude.<$> filterRules
          )
      ]
