import BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Bessel-Airy Relations Package
-/

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure BesselAiryRelationPackage where
  besselFunction : Type
  airyFunction : Type
  cylinderFunction : Type
  identity : Prop
  scalingRelation : Prop
  connectionFormula : Prop

structure BesselAiryRelationEvidence (P : BesselAiryRelationPackage) where
  identityClosed : P.identity
  scalingRelationClosed : P.scalingRelation
  connectionFormulaClosed : P.connectionFormula

def BesselAiryRelationClosed (P : BesselAiryRelationPackage) : Prop :=
  P.identity ∧ P.scalingRelation ∧ P.connectionFormula

theorem bessel_airy_relation_closed_from_evidence (P : BesselAiryRelationPackage)
    (E : BesselAiryRelationEvidence P) : BesselAiryRelationClosed P := by
  exact And.intro E.identityClosed (And.intro E.scalingRelationClosed E.connectionFormulaClosed)

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse