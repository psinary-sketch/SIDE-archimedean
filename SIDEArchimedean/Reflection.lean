/-
  SIDE-archimedean · Reflection.lean
  ==================================

  Checkpoint 1.2-A in the alternative-proof-paths census
  (PATHS_TO_THE_CRITICAL_LINE).

  An IDENTIFICATION kernel over ℚ: it proves that the fixed point of
  the reflection σ ↦ 1 − σ is σ = 1/2 and that a codimension count
  defined to be 1 exactly at σ = 1/2 picks out the same point; the
  path n² → θ → √ transformation → ξ(s) = ξ(1−s) → Focus is the
  reading, not stated in this file, and it does not prove RH.

  Source: CRITICAL RESOLVE Path One; A Place to Stand (√ mechanism,
  Focus); SIDE-kernel Voice3 (reflect_fixed_iff).
-/

import Mathlib

namespace SIDEArchimedean

/-! ## T1 — the √ / theta-transformation weight -/

def theta_weight : ℚ := 1 / 2

theorem theta_weight_doubles_to_one : 2 * theta_weight = 1 := by
  unfold theta_weight; norm_num

/-! ## T2 — the functional-equation reflection fixed point -/

def fe_reflect (σ : ℚ) : ℚ := 1 - σ

theorem fe_reflect_fixed_iff (σ : ℚ) : fe_reflect σ = σ ↔ σ = 1 / 2 := by
  unfold fe_reflect
  constructor <;> intro h <;> linarith
/-! ## T3 — Focus: the codimension collapse

At σ = 1/2, Schwarz reflection + the FE force ξ real (Im ξ = 0): a
zero needs one real equation, not two (codim 2 → 1). Off the line a
zero needs Re ξ = Im ξ = 0. -/

def focus_codim (σ : ℚ) : ℕ := if σ = 1 / 2 then 1 else 2

theorem focus_codim_eq_one_iff (σ : ℚ) : focus_codim σ = 1 ↔ σ = 1 / 2 := by
  unfold focus_codim
  by_cases h : σ = 1 / 2 <;> simp [h]

/-! ## T4 — the identification: FE fixed point ⟺ Focus point -/

theorem archimedean_identifies_half (σ : ℚ) :
    fe_reflect σ = σ ↔ focus_codim σ = 1 := by
  rw [fe_reflect_fixed_iff, focus_codim_eq_one_iff]

/-- The headline identification: the fixed point of the
    functional-equation reflection σ ↦ 1 − σ (over ℚ) is σ = 1/2. -/
theorem archimedean_forces_half (σ : ℚ) (h : fe_reflect σ = σ) : σ = 1 / 2 :=
  (fe_reflect_fixed_iff σ).mp h

end SIDEArchimedean