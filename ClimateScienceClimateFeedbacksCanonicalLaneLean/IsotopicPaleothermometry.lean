import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  isotopeRatio : Prop
  fractionationFactor : Prop
  temperatureProxy : isotopeRatio ∧ fractionationFactor

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  isotopeRatioClosed : I.isotopeRatio
  fractionationFactorClosed : I.fractionationFactor

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.isotopeRatio ∧ I.fractionationFactor

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometryPackage)
    (E : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I := by
  exact And.intro E.isotopeRatioClosed E.fractionationFactorClosed

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
