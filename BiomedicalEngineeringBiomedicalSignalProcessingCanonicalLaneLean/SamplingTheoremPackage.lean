import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.WaveletTheoryPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure SamplingPackage where
  samplingRate : ℝ
  bandlimitedSignal : Prop
  reconstructionFilter : Type
  aliasingFree : Prop

structure SamplingEvidence (S : SamplingPackage) where
  bandlimitedSignalClosed : S.bandlimitedSignal
  aliasingFreeClosed : S.aliasingFree

def SamplingClosed (S : SamplingPackage) : Prop :=
  S.bandlimitedSignal ∧ S.aliasingFree

theorem sampling_closed_from_evidence (S : SamplingPackage)
    (E : SamplingEvidence S) : SamplingClosed S := by
  exact And.intro E.bandlimitedSignalClosed E.aliasingFreeClosed

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse