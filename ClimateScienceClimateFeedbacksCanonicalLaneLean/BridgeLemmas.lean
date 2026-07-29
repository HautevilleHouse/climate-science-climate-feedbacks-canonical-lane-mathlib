import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceClimateFeedbacksCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
