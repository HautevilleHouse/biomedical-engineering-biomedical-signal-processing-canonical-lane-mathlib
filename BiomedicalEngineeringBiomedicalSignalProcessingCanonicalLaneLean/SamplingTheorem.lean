import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure SamplingTheoremPackage where
  bandlimitedSignal : Type u
  samplingRate : Type v
  nyquistCriterion : Prop
  reconstructionFormula : Prop
  aliasingErrorBound : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  nyquistCriterionClosed : S.nyquistCriterion
  reconstructionFormulaClosed : S.reconstructionFormula
  aliasingErrorBoundClosed : S.aliasingErrorBound

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.nyquistCriterion ∧ S.reconstructionFormula ∧ S.aliasingErrorBound

theorem sampling_theorem_closed_from_evidence (S : SamplingTheoremPackage) (E : SamplingTheoremEvidence S) :
    SamplingTheoremClosed S := by
  exact And.intro E.nyquistCriterionClosed (And.intro E.reconstructionFormulaClosed E.aliasingErrorBoundClosed)

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse