import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalProcessingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse