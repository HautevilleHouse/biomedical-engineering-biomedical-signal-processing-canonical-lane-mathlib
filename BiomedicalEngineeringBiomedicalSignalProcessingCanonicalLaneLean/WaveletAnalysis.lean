import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure WaveletPackage (A : AdmissibleClass) where
  motherWavelet : ℝ → ℂ
  scalingFunction : ℝ → ℂ
  multiresolutionAnalysis : Prop
  waveletBasis : Prop
  detailCoefficients : Prop

structure WaveletEvidence (A : AdmissibleClass) (W : WaveletPackage A) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  waveletBasisClosed : W.waveletBasis
  detailCoefficientsClosed : W.detailCoefficients

def WaveletClosed (A : AdmissibleClass) (W : WaveletPackage A) : Prop :=
  W.multiresolutionAnalysis ∧ W.waveletBasis ∧ W.detailCoefficients

theorem wavelet_closed_from_evidence (A : AdmissibleClass) (W : WaveletPackage A) (E : WaveletEvidence A W) :
    WaveletClosed A W :=
  And.intro E.multiresolutionAnalysisClosed (And.intro E.waveletBasisClosed E.detailCoefficientsClosed)

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse