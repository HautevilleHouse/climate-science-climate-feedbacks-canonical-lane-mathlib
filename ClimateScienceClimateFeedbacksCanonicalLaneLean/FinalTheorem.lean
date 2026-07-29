import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceClimateFeedbacksCanonicalLaneLean.EnergyBalanceModel
import HautevilleHouse.ClimateScienceClimateFeedbacksCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ClimateScienceClimateFeedbacksCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

def ClimateFeedbackClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem climate_feedback_endgame (A : AdmissibleClass) :
    ClimateFeedbackClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
