import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : Prop
  albedoFunction : Prop
  infraredCooling : Prop
  heatTransport : Prop
  modelEquations : solarInsolation ∧ albedoFunction ∧ infraredCooling ∧ heatTransport

structure EnergyBalanceModelEvidence (M : EnergyBalanceModelPackage) where
  solarInsolationClosed : M.solarInsolation
  albedoFunctionClosed : M.albedoFunction
  infraredCoolingClosed : M.infraredCooling
  heatTransportClosed : M.heatTransport

def EnergyBalanceModelClosed (M : EnergyBalanceModelPackage) : Prop :=
  M.solarInsolation ∧ M.albedoFunction ∧ M.infraredCooling ∧ M.heatTransport

theorem energy_balance_model_closed_from_evidence (M : EnergyBalanceModelPackage)
    (E : EnergyBalanceModelEvidence M) : EnergyBalanceModelClosed M := by
  exact And.intro E.solarInsolationClosed
    (And.intro E.albedoFunctionClosed
      (And.intro E.infraredCoolingClosed E.heatTransportClosed))

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
