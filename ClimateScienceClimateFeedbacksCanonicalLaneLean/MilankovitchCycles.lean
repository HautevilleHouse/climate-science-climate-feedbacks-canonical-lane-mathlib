import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure MilankovitchCycleParameters where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  orbitalForcingComputed : Prop
  insolationAnomalyDerived : Prop

structure MilankovitchCycleEvidence (M : MilankovitchCycleParameters) where
  orbitalForcingComputedClosed : M.orbitalForcingComputed
  insolationAnomalyDerivedClosed : M.insolationAnomalyDerived

def MilankovitchCycleClosed (M : MilankovitchCycleParameters) : Prop :=
  M.orbitalForcingComputed ∧ M.insolationAnomalyDerived

theorem milankovitch_cycle_closed_from_evidence (M : MilankovitchCycleParameters)
    (Ev : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact And.intro Ev.orbitalForcingComputedClosed Ev.insolationAnomalyDerivedClosed

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
