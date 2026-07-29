import HautevilleHouse.BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean.BiomedicalSignalProcessingObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean

structure FourierTransformPackage where
  frequencyDomain : Type
  transformExists : Prop
  invertible : Prop
  convolutionIdentity : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  transformExistsClosed : F.transformExists
  invertibleClosed : F.invertible
  convolutionIdentityClosed : F.convolutionIdentity

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.transformExists ∧ F.invertible ∧ F.convolutionIdentity

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.transformExistsClosed
    (And.intro E.invertibleClosed E.convolutionIdentityClosed)

end BiomedicalEngineeringBiomedicalSignalProcessingCanonicalLaneLean
end HautevilleHouse