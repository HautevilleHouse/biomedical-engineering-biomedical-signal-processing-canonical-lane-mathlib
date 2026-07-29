import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse