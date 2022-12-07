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
-- Module      : Amazonka.Batch.Types.EksContainerVolumeMount
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.EksContainerVolumeMount where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude

-- | The volume mounts for a container for an Amazon EKS job. For more
-- information about volumes and volume mounts in Kubernetes, see
-- <https://kubernetes.io/docs/concepts/storage/volumes/ Volumes> in the
-- /Kubernetes documentation/.
--
-- /See:/ 'newEksContainerVolumeMount' smart constructor.
data EksContainerVolumeMount = EksContainerVolumeMount'
  { -- | The name the volume mount. This must match the name of one of the
    -- volumes in the pod.
    name :: Prelude.Maybe Prelude.Text,
    -- | If this value is @true@, the container has read-only access to the
    -- volume. Otherwise, the container can write to the volume. The default
    -- value is @false@.
    readOnly :: Prelude.Maybe Prelude.Bool,
    -- | The path on the container where the volume is mounted.
    mountPath :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EksContainerVolumeMount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'eksContainerVolumeMount_name' - The name the volume mount. This must match the name of one of the
-- volumes in the pod.
--
-- 'readOnly', 'eksContainerVolumeMount_readOnly' - If this value is @true@, the container has read-only access to the
-- volume. Otherwise, the container can write to the volume. The default
-- value is @false@.
--
-- 'mountPath', 'eksContainerVolumeMount_mountPath' - The path on the container where the volume is mounted.
newEksContainerVolumeMount ::
  EksContainerVolumeMount
newEksContainerVolumeMount =
  EksContainerVolumeMount'
    { name = Prelude.Nothing,
      readOnly = Prelude.Nothing,
      mountPath = Prelude.Nothing
    }

-- | The name the volume mount. This must match the name of one of the
-- volumes in the pod.
eksContainerVolumeMount_name :: Lens.Lens' EksContainerVolumeMount (Prelude.Maybe Prelude.Text)
eksContainerVolumeMount_name = Lens.lens (\EksContainerVolumeMount' {name} -> name) (\s@EksContainerVolumeMount' {} a -> s {name = a} :: EksContainerVolumeMount)

-- | If this value is @true@, the container has read-only access to the
-- volume. Otherwise, the container can write to the volume. The default
-- value is @false@.
eksContainerVolumeMount_readOnly :: Lens.Lens' EksContainerVolumeMount (Prelude.Maybe Prelude.Bool)
eksContainerVolumeMount_readOnly = Lens.lens (\EksContainerVolumeMount' {readOnly} -> readOnly) (\s@EksContainerVolumeMount' {} a -> s {readOnly = a} :: EksContainerVolumeMount)

-- | The path on the container where the volume is mounted.
eksContainerVolumeMount_mountPath :: Lens.Lens' EksContainerVolumeMount (Prelude.Maybe Prelude.Text)
eksContainerVolumeMount_mountPath = Lens.lens (\EksContainerVolumeMount' {mountPath} -> mountPath) (\s@EksContainerVolumeMount' {} a -> s {mountPath = a} :: EksContainerVolumeMount)

instance Core.FromJSON EksContainerVolumeMount where
  parseJSON =
    Core.withObject
      "EksContainerVolumeMount"
      ( \x ->
          EksContainerVolumeMount'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "readOnly")
            Prelude.<*> (x Core..:? "mountPath")
      )

instance Prelude.Hashable EksContainerVolumeMount where
  hashWithSalt _salt EksContainerVolumeMount' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` readOnly
      `Prelude.hashWithSalt` mountPath

instance Prelude.NFData EksContainerVolumeMount where
  rnf EksContainerVolumeMount' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf readOnly
      `Prelude.seq` Prelude.rnf mountPath

instance Core.ToJSON EksContainerVolumeMount where
  toJSON EksContainerVolumeMount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("readOnly" Core..=) Prelude.<$> readOnly,
            ("mountPath" Core..=) Prelude.<$> mountPath
          ]
      )