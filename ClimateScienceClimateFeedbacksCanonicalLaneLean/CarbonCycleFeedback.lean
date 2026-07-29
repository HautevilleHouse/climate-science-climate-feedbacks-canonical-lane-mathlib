import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure CarbonCycleFeedbackPackage where
  atmosphericCO2 : Prop
  oceanUptake : Prop
  terrestrialUptake : Prop
  temperatureCO2Sensitivity : Prop
  feedbackStrength : Prop

structure CarbonCycleFeedbackEvidence (C : CarbonCycleFeedbackPackage) where
  atmosphericCO2Closed : C.atmosphericCO2
  oceanUptakeClosed : C.oceanUptake
  terrestrialUptakeClosed : C.terrestrialUptake
  temperatureCO2SensitivityClosed : C.temperatureCO2Sensitivity
  feedbackStrengthClosed : C.feedbackStrength

def CarbonCycleFeedbackClosed (C : CarbonCycleFeedbackPackage) : Prop :=
  C.atmosphericCO2 ∧ C.oceanUptake ∧ C.terrestrialUptake ∧ C.temperatureCO2Sensitivity ∧ C.feedbackStrength

theorem carbon_cycle_feedback_closed_from_evidence
    (C : CarbonCycleFeedbackPackage) (E : CarbonCycleFeedbackEvidence C) :
    CarbonCycleFeedbackClosed C := by
  exact And.intro E.atmosphericCO2Closed
    (And.intro E.oceanUptakeClosed
      (And.intro E.terrestrialUptakeClosed
        (And.intro E.temperatureCO2SensitivityClosed E.feedbackStrengthClosed)))

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse