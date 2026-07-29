import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  climateSystem : Prop
  feedbackLoop : Prop
  equilibriumState : Type
  equilibriumTopology : TopologicalSpace equilibriumState
  milankovitchCycleMatched : Prop
  conclusion : milankovitchCycleMatched

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.milankovitchCycleMatched

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse