import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure FourierAnalysisPackage where
  signalSpace : Type u
  frequencyDomain : Type v
  transformDefined : Prop
  inversionFormula : Prop
  convolutionTheorem : Prop

structure FourierAnalysisEvidence (F : FourierAnalysisPackage) where
  transformDefinedClosed : F.transformDefined
  inversionFormulaClosed : F.inversionFormula
  convolutionTheoremClosed : F.convolutionTheorem

def FourierAnalysisClosed (F : FourierAnalysisPackage) : Prop :=
  F.transformDefined ∧ F.inversionFormula ∧ F.convolutionTheorem

theorem fourier_analysis_closed_from_evidence (F : FourierAnalysisPackage) (E : FourierAnalysisEvidence F) :
    FourierAnalysisClosed F := by
  exact And.intro E.transformDefinedClosed (And.intro E.inversionFormulaClosed E.convolutionTheoremClosed)

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse