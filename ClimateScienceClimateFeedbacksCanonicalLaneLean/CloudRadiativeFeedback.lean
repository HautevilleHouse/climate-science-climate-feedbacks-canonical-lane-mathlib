import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure CloudRadiativeFeedbackPackage where
  cloudFractionChange : Prop
  shortwaveCloudEffect : Prop
  longwaveCloudEffect : Prop
  netCloudRadiativeForcing : Prop
  feedbackParameter : Prop

structure CloudRadiativeFeedbackEvidence (C : CloudRadiativeFeedbackPackage) where
  cloudFractionChangeClosed : C.cloudFractionChange
  shortwaveCloudEffectClosed : C.shortwaveCloudEffect
  longwaveCloudEffectClosed : C.longwaveCloudEffect
  netCloudRadiativeForcingClosed : C.netCloudRadiativeForcing
  feedbackParameterClosed : C.feedbackParameter

def CloudRadiativeFeedbackClosed (C : CloudRadiativeFeedbackPackage) : Prop :=
  C.cloudFractionChange ∧ C.shortwaveCloudEffect ∧ C.longwaveCloudEffect ∧ C.netCloudRadiativeForcing ∧ C.feedbackParameter

theorem cloud_radiative_feedback_closed_from_evidence
    (C : CloudRadiativeFeedbackPackage) (E : CloudRadiativeFeedbackEvidence C) :
    CloudRadiativeFeedbackClosed C := by
  exact And.intro E.cloudFractionChangeClosed
    (And.intro E.shortwaveCloudEffectClosed
      (And.intro E.longwaveCloudEffectClosed
        (And.intro E.netCloudRadiativeForcingClosed E.feedbackParameterClosed)))

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse