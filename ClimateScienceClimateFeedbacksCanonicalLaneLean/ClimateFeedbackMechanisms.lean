import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure ClimateFeedbackMechanisms where
  waterVaporFeedback : ℝ
  iceAlbedoFeedback : ℝ
  cloudFeedback : ℝ
  lapseRateFeedback : ℝ
  totalClimateSensitivity : ℝ
  feedbacksQuantified : Prop
  totalSensitivityComputed : Prop

structure ClimateFeedbackEvidence (C : ClimateFeedbackMechanisms) where
  feedbacksQuantifiedClosed : C.feedbacksQuantified
  totalSensitivityComputedClosed : C.totalSensitivityComputed

def ClimateFeedbackClosed (C : ClimateFeedbackMechanisms) : Prop :=
  C.feedbacksQuantified ∧ C.totalSensitivityComputed

theorem climate_feedback_closed_from_evidence (C : ClimateFeedbackMechanisms)
    (Ev : ClimateFeedbackEvidence C) : ClimateFeedbackClosed C := by
  exact And.intro Ev.feedbacksQuantifiedClosed Ev.totalSensitivityComputedClosed

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
