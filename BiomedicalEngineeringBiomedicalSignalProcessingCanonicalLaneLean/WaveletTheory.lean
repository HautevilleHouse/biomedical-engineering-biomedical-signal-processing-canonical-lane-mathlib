import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure WaveletPackage where
  scalingFunction : Type u
  waveletFunction : Type v
  multiresolutionAnalysisGenerated : Prop
  orthonormalBasis : Prop
  decompositionReconstruction : Prop

structure WaveletEvidence (W : WaveletPackage) where
  multiresolutionAnalysisGeneratedClosed : W.multiresolutionAnalysisGenerated
  orthonormalBasisClosed : W.orthonormalBasis
  decompositionReconstructionClosed : W.decompositionReconstruction

def WaveletClosed (W : WaveletPackage) : Prop :=
  W.multiresolutionAnalysisGenerated ∧ W.orthonormalBasis ∧ W.decompositionReconstruction

theorem wavelet_closed_from_evidence (W : WaveletPackage)
    (E : WaveletEvidence W) : WaveletClosed W := by
  exact And.intro E.multiresolutionAnalysisGeneratedClosed
    (And.intro E.orthonormalBasisClosed E.decompositionReconstructionClosed)

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse
