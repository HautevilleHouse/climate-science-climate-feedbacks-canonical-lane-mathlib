import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateFeedbacksCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : ℝ
  albedo : ℝ
  outgoingLongwaveRadiation : ℝ
  equilibriumTemperature : ℝ
  climateSensitivity : ℝ
  feedbackParameter : ℝ
  radiativeForcing : ℝ
  temperatureAnomaly : ℝ
  energyBalanceEquation : Prop
  equilibriumTemperatureComputed : Prop
  climateSensitivityComputed : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  energyBalanceEquationClosed : E.energyBalanceEquation
  equilibriumTemperatureComputedClosed : E.equilibriumTemperatureComputed
  climateSensitivityComputedClosed : E.climateSensitivityComputed

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.energyBalanceEquation ∧ E.equilibriumTemperatureComputed ∧ E.climateSensitivityComputed

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.energyBalanceEquationClosed
    (And.intro Ev.equilibriumTemperatureComputedClosed Ev.climateSensitivityComputedClosed)

end ClimateScienceClimateFeedbacksCanonicalLaneLean
end HautevilleHouse
