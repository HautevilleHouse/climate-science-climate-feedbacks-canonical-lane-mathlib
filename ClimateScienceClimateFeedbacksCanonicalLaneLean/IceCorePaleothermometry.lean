import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure IceCorePaleothermometryPackage where
  deltaDMeasured : Prop
  delta18OMeasured : Prop
  temperatureReconstruction : Prop
  accumulationRate : Prop

structure IceCorePaleothermometryEvidence (P : IceCorePaleothermometryPackage) where
  deltaDMeasuredClosed : P.deltaDMeasured
  delta18OMeasuredClosed : P.delta18OMeasured
  temperatureReconstructionClosed : P.temperatureReconstruction
  accumulationRateClosed : P.accumulationRate

def IceCorePaleothermometryClosed (P : IceCorePaleothermometryPackage) : Prop :=
  P.deltaDMeasured ∧ P.delta18OMeasured ∧ P.temperatureReconstruction ∧ P.accumulationRate

theorem ice_core_paleothermometry_closed_from_evidence
    (P : IceCorePaleothermometryPackage) (E : IceCorePaleothermometryEvidence P) :
    IceCorePaleothermometryClosed P := by
  exact And.intro E.deltaDMeasuredClosed
    (And.intro E.delta18OMeasuredClosed
      (And.intro E.temperatureReconstructionClosed E.accumulationRateClosed))

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse