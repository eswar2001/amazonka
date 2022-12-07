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
-- Module      : Amazonka.WAFV2.Types.RuleAction
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.RuleAction where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WAFV2.Types.AllowAction
import Amazonka.WAFV2.Types.BlockAction
import Amazonka.WAFV2.Types.CaptchaAction
import Amazonka.WAFV2.Types.ChallengeAction
import Amazonka.WAFV2.Types.CountAction

-- | The action that WAF should take on a web request when it matches a
-- rule\'s statement. Settings at the web ACL level can override the rule
-- action setting.
--
-- /See:/ 'newRuleAction' smart constructor.
data RuleAction = RuleAction'
  { -- | Instructs WAF to run a @Challenge@ check against the web request.
    challenge :: Prelude.Maybe ChallengeAction,
    -- | Instructs WAF to allow the web request.
    allow :: Prelude.Maybe AllowAction,
    -- | Instructs WAF to count the web request and then continue evaluating the
    -- request using the remaining rules in the web ACL.
    count :: Prelude.Maybe CountAction,
    -- | Instructs WAF to run a @CAPTCHA@ check against the web request.
    captcha :: Prelude.Maybe CaptchaAction,
    -- | Instructs WAF to block the web request.
    block :: Prelude.Maybe BlockAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'challenge', 'ruleAction_challenge' - Instructs WAF to run a @Challenge@ check against the web request.
--
-- 'allow', 'ruleAction_allow' - Instructs WAF to allow the web request.
--
-- 'count', 'ruleAction_count' - Instructs WAF to count the web request and then continue evaluating the
-- request using the remaining rules in the web ACL.
--
-- 'captcha', 'ruleAction_captcha' - Instructs WAF to run a @CAPTCHA@ check against the web request.
--
-- 'block', 'ruleAction_block' - Instructs WAF to block the web request.
newRuleAction ::
  RuleAction
newRuleAction =
  RuleAction'
    { challenge = Prelude.Nothing,
      allow = Prelude.Nothing,
      count = Prelude.Nothing,
      captcha = Prelude.Nothing,
      block = Prelude.Nothing
    }

-- | Instructs WAF to run a @Challenge@ check against the web request.
ruleAction_challenge :: Lens.Lens' RuleAction (Prelude.Maybe ChallengeAction)
ruleAction_challenge = Lens.lens (\RuleAction' {challenge} -> challenge) (\s@RuleAction' {} a -> s {challenge = a} :: RuleAction)

-- | Instructs WAF to allow the web request.
ruleAction_allow :: Lens.Lens' RuleAction (Prelude.Maybe AllowAction)
ruleAction_allow = Lens.lens (\RuleAction' {allow} -> allow) (\s@RuleAction' {} a -> s {allow = a} :: RuleAction)

-- | Instructs WAF to count the web request and then continue evaluating the
-- request using the remaining rules in the web ACL.
ruleAction_count :: Lens.Lens' RuleAction (Prelude.Maybe CountAction)
ruleAction_count = Lens.lens (\RuleAction' {count} -> count) (\s@RuleAction' {} a -> s {count = a} :: RuleAction)

-- | Instructs WAF to run a @CAPTCHA@ check against the web request.
ruleAction_captcha :: Lens.Lens' RuleAction (Prelude.Maybe CaptchaAction)
ruleAction_captcha = Lens.lens (\RuleAction' {captcha} -> captcha) (\s@RuleAction' {} a -> s {captcha = a} :: RuleAction)

-- | Instructs WAF to block the web request.
ruleAction_block :: Lens.Lens' RuleAction (Prelude.Maybe BlockAction)
ruleAction_block = Lens.lens (\RuleAction' {block} -> block) (\s@RuleAction' {} a -> s {block = a} :: RuleAction)

instance Core.FromJSON RuleAction where
  parseJSON =
    Core.withObject
      "RuleAction"
      ( \x ->
          RuleAction'
            Prelude.<$> (x Core..:? "Challenge")
            Prelude.<*> (x Core..:? "Allow")
            Prelude.<*> (x Core..:? "Count")
            Prelude.<*> (x Core..:? "Captcha")
            Prelude.<*> (x Core..:? "Block")
      )

instance Prelude.Hashable RuleAction where
  hashWithSalt _salt RuleAction' {..} =
    _salt `Prelude.hashWithSalt` challenge
      `Prelude.hashWithSalt` allow
      `Prelude.hashWithSalt` count
      `Prelude.hashWithSalt` captcha
      `Prelude.hashWithSalt` block

instance Prelude.NFData RuleAction where
  rnf RuleAction' {..} =
    Prelude.rnf challenge
      `Prelude.seq` Prelude.rnf allow
      `Prelude.seq` Prelude.rnf count
      `Prelude.seq` Prelude.rnf captcha
      `Prelude.seq` Prelude.rnf block

instance Core.ToJSON RuleAction where
  toJSON RuleAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Challenge" Core..=) Prelude.<$> challenge,
            ("Allow" Core..=) Prelude.<$> allow,
            ("Count" Core..=) Prelude.<$> count,
            ("Captcha" Core..=) Prelude.<$> captcha,
            ("Block" Core..=) Prelude.<$> block
          ]
      )