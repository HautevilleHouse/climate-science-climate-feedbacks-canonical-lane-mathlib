import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure DansgaardOeschgerEventPackage where
  abruptWarming : Prop
  gradualCooling : Prop
  iceCoreSignature : Prop
  atlanticMeridionalOverturning : abruptWarming ∧ gradualCooling ∧ iceCoreSignature

structure DansgaardOeschgerEventEvidence (D : DansgaardOeschgerEventPackage) where
  abruptWarmingClosed : D.abruptWarming
  gradualCoolingClosed : D.gradualCooling
  iceCoreSignatureClosed : D.iceCoreSignature

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventPackage) : Prop :=
  D.abruptWarming ∧ D.gradualCooling ∧ D.iceCoreSignature

theorem dansgaard_oeschger_event_closed_from_evidence (D : DansgaardOeschgerEventPackage)
    (E : DansgaardOeschgerEventEvidence D) : DansgaardOeschgerEventClosed D := by
  exact And.intro E.abruptWarmingClosed
    (And.intro E.gradualCoolingClosed E.iceCoreSignatureClosed)

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
