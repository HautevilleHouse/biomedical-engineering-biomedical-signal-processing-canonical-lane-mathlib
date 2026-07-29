import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure Signal where
  carrier : Type
  samplingRate : ℝ
  topology : TopologicalSpace carrier

structure DiscreteSignal (T : Type) where
  values : T → ℝ
  finiteness : Finset T

structure FourierKernel where
  frequencyDomain : Type
  timeDomain : Type
  kernel : frequencyDomain × timeDomain → ℂ

structure BiomedicalAdmittedObject where
  signal : Signal
  bandlimited : Prop
  samplingCondition : Prop
  reconstructionProperty : Prop
  conclusion : bandlimited ∧ samplingCondition → reconstructionProperty

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse