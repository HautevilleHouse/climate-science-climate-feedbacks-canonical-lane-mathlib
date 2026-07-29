import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  energyBalanceModel : Prop
  feedbackAnalysis : Prop
  paleoProxyConsistency : Prop
  conclusion : energyBalanceModel ∧ feedbackAnalysis ∧ paleoProxyConsistency

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.conclusion

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse