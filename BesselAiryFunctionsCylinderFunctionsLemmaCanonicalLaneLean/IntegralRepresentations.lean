import BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.CylinderFunctions

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure IntegralRepresentationPackage where
  besselIntegrals : Prop
  airyIntegrals : Prop
  cylinderIntegrals : Prop
  contourIntegrals : Prop
  mellinTransform : Prop

structure IntegralRepresentationEvidence (I : IntegralRepresentationPackage) where
  besselIntegralsClosed : I.besselIntegrals
  airyIntegralsClosed : I.airyIntegrals
  cylinderIntegralsClosed : I.cylinderIntegrals
  contourIntegralsClosed : I.contourIntegrals
  mellinTransformClosed : I.mellinTransform

def IntegralRepresentationClosed (I : IntegralRepresentationPackage) : Prop :=
  I.besselIntegrals ∧ I.airyIntegrals ∧ I.cylinderIntegrals ∧
  I.contourIntegrals ∧ I.mellinTransform

theorem integral_representation_closed_from_evidence (I : IntegralRepresentationPackage)
    (E : IntegralRepresentationEvidence I) : IntegralRepresentationClosed I := by
  exact And.intro E.besselIntegralsClosed
    (And.intro E.airyIntegralsClosed
      (And.intro E.cylinderIntegralsClosed
        (And.intro E.contourIntegralsClosed E.mellinTransformClosed)))

end HautevilleHouse
end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
