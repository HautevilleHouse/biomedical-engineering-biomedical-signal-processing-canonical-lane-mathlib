import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure FourierTransformPackage (A : AdmissibleClass) where
  timeDomainSignal : A.object.signalType → ℝ → ℂ
  frequencyDomainTransform : ℝ → ℂ
  inversionFormula : Prop
  plancherelTheorem : Prop
  convolutionTheorem : Prop

structure FourierTransformEvidence (A : AdmissibleClass) (F : FourierTransformPackage A) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem
  convolutionTheoremClosed : F.convolutionTheorem

def FourierTransformClosed (A : AdmissibleClass) (F : FourierTransformPackage A) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem ∧ F.convolutionTheorem

theorem fourier_transform_closed_from_evidence (A : AdmissibleClass) (F : FourierTransformPackage A) (E : FourierTransformEvidence A F) :
    FourierTransformClosed A F :=
  And.intro E.inversionFormulaClosed (And.intro E.plancherelTheoremClosed E.convolutionTheoremClosed)

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse