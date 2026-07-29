import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure IceAlbedoFeedbackPackage where
  seaIceExtent : Prop
  surfaceAlbedo : Prop
  shortwaveAbsorption : Prop
  temperatureSensitivity : Prop
  feedbackAmplification : Prop

structure IceAlbedoFeedbackEvidence (I : IceAlbedoFeedbackPackage) where
  seaIceExtentClosed : I.seaIceExtent
  surfaceAlbedoClosed : I.surfaceAlbedo
  shortwaveAbsorptionClosed : I.shortwaveAbsorption
  temperatureSensitivityClosed : I.temperatureSensitivity
  feedbackAmplificationClosed : I.feedbackAmplification

def IceAlbedoFeedbackClosed (I : IceAlbedoFeedbackPackage) : Prop :=
  I.seaIceExtent ∧ I.surfaceAlbedo ∧ I.shortwaveAbsorption ∧ I.temperatureSensitivity ∧ I.feedbackAmplification

theorem ice_albedo_feedback_closed_from_evidence
    (I : IceAlbedoFeedbackPackage) (E : IceAlbedoFeedbackEvidence I) :
    IceAlbedoFeedbackClosed I := by
  exact And.intro E.seaIceExtentClosed
    (And.intro E.surfaceAlbedoClosed
      (And.intro E.shortwaveAbsorptionClosed
        (And.intro E.temperatureSensitivityClosed E.feedbackAmplificationClosed)))

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse