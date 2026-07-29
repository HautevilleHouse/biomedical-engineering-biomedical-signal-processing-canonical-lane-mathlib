import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure SignalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure Transform where
  domain : Type
  codomain : Type
  linear : (domain → codomain) → (domain → codomain)

structure SignalProcessingObject where
  signalSpace : SignalSpace
  finiteEnergy : Prop
  bandlimited : Prop
  causal : Prop
  conclusion : finiteEnergy ∧ bandlimited ∧ causal

def SignalProcessingWitnessClosed (O : SignalProcessingObject) : Prop :=
  O.finiteEnergy ∧ O.bandlimited ∧ O.causal

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse