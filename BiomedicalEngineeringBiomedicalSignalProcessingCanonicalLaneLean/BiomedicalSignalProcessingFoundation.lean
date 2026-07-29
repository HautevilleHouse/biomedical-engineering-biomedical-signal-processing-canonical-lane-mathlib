import BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.FourierAnalysis
import BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.WaveletTheory
import BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.SamplingTheorem
import BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.FilterDesign

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure BiomedicalSignalProcessingFoundation where
  fourier : FourierPackage
  fourierEvidence : FourierEvidence fourier
  wavelet : WaveletPackage
  waveletEvidence : WaveletEvidence wavelet
  sampling : SamplingPackage
  samplingEvidence : SamplingEvidence sampling
  filter : FilterPackage
  filterEvidence : FilterEvidence filter

def BiomedicalSignalProcessingFoundationClosed (A : BiomedicalSignalProcessingFoundation) : Prop :=
  FourierClosed A.fourier ∧ WaveletClosed A.wavelet ∧ SamplingClosed A.sampling ∧ FilterClosed A.filter

theorem biomedical_signal_processing_foundation_closed_from_evidence (A : BiomedicalSignalProcessingFoundation) : BiomedicalSignalProcessingFoundationClosed A := by
  exact And.intro (fourier_closed_from_evidence A.fourier A.fourierEvidence)
    (And.intro (wavelet_closed_from_evidence A.wavelet A.waveletEvidence)
      (And.intro (sampling_closed_from_evidence A.sampling A.samplingEvidence)
        (filter_closed_from_evidence A.filter A.filterEvidence)))

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse