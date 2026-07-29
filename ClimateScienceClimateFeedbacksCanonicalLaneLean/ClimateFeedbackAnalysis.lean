import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure FeedbackFactor where
  name : String
  gain : ℝ
  timescale : ℝ

structure TotalFeedback where
  factors : List FeedbackFactor
  totalGain : ℝ
  netGain : ℝ

structure ClimateSensitivity where
  equilibriumSensitivity : ℝ
  transientSensitivity : ℝ
  feedbackSum : ℝ

structure ClimateFeedbackAnalysisPackage where
  feedbacks : TotalFeedback
  sensitivity : ClimateSensitivity
  feedbackLoopClosed : Prop

structure ClimateFeedbackAnalysisEvidence (C : ClimateFeedbackAnalysisPackage) where
  feedbackLoopClosedClosed : C.feedbackLoopClosed
  sensitivityConsistent : C.sensitivity.feedbackSum = C.feedbacks.totalGain

def ClimateFeedbackAnalysisClosed (C : ClimateFeedbackAnalysisPackage) : Prop :=
  C.feedbackLoopClosed ∧ (C.sensitivity.feedbackSum = C.feedbacks.totalGain)

theorem climate_feedback_analysis_closed_from_evidence
    (C : ClimateFeedbackAnalysisPackage)
    (E : ClimateFeedbackAnalysisEvidence C) : ClimateFeedbackAnalysisClosed C := by
  exact And.intro E.feedbackLoopClosedClosed E.sensitivityConsistent

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse