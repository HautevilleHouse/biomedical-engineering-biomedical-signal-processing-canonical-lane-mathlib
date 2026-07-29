import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.FourierAnalysisPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure WaveletPackage where
  scaleFunction : Type
  waveletFunction : Type
  multiresolutionAnalysis : Prop
  compactSupport : Prop

structure WaveletEvidence (W : WaveletPackage) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  compactSupportClosed : W.compactSupport

def WaveletClosed (W : WaveletPackage) : Prop :=
  W.multiresolutionAnalysis ∧ W.compactSupport

theorem wavelet_closed_from_evidence (W : WaveletPackage)
    (E : WaveletEvidence W) : WaveletClosed W := by
  exact And.intro E.multiresolutionAnalysisClosed E.compactSupportClosed

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse