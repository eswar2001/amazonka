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
-- Module      : Network.AWS.CodeArtifact.Types.PackageDependency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeArtifact.Types.PackageDependency where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about a package dependency.
--
-- /See:/ 'newPackageDependency' smart constructor.
data PackageDependency = PackageDependency'
  { -- | The type of a package dependency. The possible values depend on the
    -- package type. Example types are @compile@, @runtime@, and @test@ for
    -- Maven packages, and @dev@, @prod@, and @optional@ for npm packages.
    dependencyType :: Prelude.Maybe Prelude.Text,
    -- | The namespace of the package. The package component that specifies its
    -- namespace depends on its type. For example:
    --
    -- -   The namespace of a Maven package is its @groupId@.
    --
    -- -   The namespace of an npm package is its @scope@.
    --
    -- -   A Python package does not contain a corresponding component, so
    --     Python packages do not have a namespace.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The name of the package that this package depends on.
    package :: Prelude.Maybe Prelude.Text,
    -- | The required version, or version range, of the package that this package
    -- depends on. The version format is specific to the package type. For
    -- example, the following are possible valid required versions: @1.2.3@,
    -- @^2.3.4@, or @4.x@.
    versionRequirement :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PackageDependency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dependencyType', 'packageDependency_dependencyType' - The type of a package dependency. The possible values depend on the
-- package type. Example types are @compile@, @runtime@, and @test@ for
-- Maven packages, and @dev@, @prod@, and @optional@ for npm packages.
--
-- 'namespace', 'packageDependency_namespace' - The namespace of the package. The package component that specifies its
-- namespace depends on its type. For example:
--
-- -   The namespace of a Maven package is its @groupId@.
--
-- -   The namespace of an npm package is its @scope@.
--
-- -   A Python package does not contain a corresponding component, so
--     Python packages do not have a namespace.
--
-- 'package', 'packageDependency_package' - The name of the package that this package depends on.
--
-- 'versionRequirement', 'packageDependency_versionRequirement' - The required version, or version range, of the package that this package
-- depends on. The version format is specific to the package type. For
-- example, the following are possible valid required versions: @1.2.3@,
-- @^2.3.4@, or @4.x@.
newPackageDependency ::
  PackageDependency
newPackageDependency =
  PackageDependency'
    { dependencyType =
        Prelude.Nothing,
      namespace = Prelude.Nothing,
      package = Prelude.Nothing,
      versionRequirement = Prelude.Nothing
    }

-- | The type of a package dependency. The possible values depend on the
-- package type. Example types are @compile@, @runtime@, and @test@ for
-- Maven packages, and @dev@, @prod@, and @optional@ for npm packages.
packageDependency_dependencyType :: Lens.Lens' PackageDependency (Prelude.Maybe Prelude.Text)
packageDependency_dependencyType = Lens.lens (\PackageDependency' {dependencyType} -> dependencyType) (\s@PackageDependency' {} a -> s {dependencyType = a} :: PackageDependency)

-- | The namespace of the package. The package component that specifies its
-- namespace depends on its type. For example:
--
-- -   The namespace of a Maven package is its @groupId@.
--
-- -   The namespace of an npm package is its @scope@.
--
-- -   A Python package does not contain a corresponding component, so
--     Python packages do not have a namespace.
packageDependency_namespace :: Lens.Lens' PackageDependency (Prelude.Maybe Prelude.Text)
packageDependency_namespace = Lens.lens (\PackageDependency' {namespace} -> namespace) (\s@PackageDependency' {} a -> s {namespace = a} :: PackageDependency)

-- | The name of the package that this package depends on.
packageDependency_package :: Lens.Lens' PackageDependency (Prelude.Maybe Prelude.Text)
packageDependency_package = Lens.lens (\PackageDependency' {package} -> package) (\s@PackageDependency' {} a -> s {package = a} :: PackageDependency)

-- | The required version, or version range, of the package that this package
-- depends on. The version format is specific to the package type. For
-- example, the following are possible valid required versions: @1.2.3@,
-- @^2.3.4@, or @4.x@.
packageDependency_versionRequirement :: Lens.Lens' PackageDependency (Prelude.Maybe Prelude.Text)
packageDependency_versionRequirement = Lens.lens (\PackageDependency' {versionRequirement} -> versionRequirement) (\s@PackageDependency' {} a -> s {versionRequirement = a} :: PackageDependency)

instance Core.FromJSON PackageDependency where
  parseJSON =
    Core.withObject
      "PackageDependency"
      ( \x ->
          PackageDependency'
            Prelude.<$> (x Core..:? "dependencyType")
            Prelude.<*> (x Core..:? "namespace")
            Prelude.<*> (x Core..:? "package")
            Prelude.<*> (x Core..:? "versionRequirement")
      )

instance Prelude.Hashable PackageDependency

instance Prelude.NFData PackageDependency
