import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.AiryFunctionPackage

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure CylinderFunctionLemmaPackage where
  cylinderFunctionDefined : Prop
  besselAiryRelationProved : Prop
  wronskianIdentity : Prop
  asymptoticMatching : Prop

structure CylinderFunctionLemmaEvidence (C : CylinderFunctionLemmaPackage) where
  cylinderFunctionDefinedClosed : C.cylinderFunctionDefined
  besselAiryRelationProvedClosed : C.besselAiryRelationProved
  wronskianIdentityClosed : C.wronskianIdentity
  asymptoticMatchingClosed : C.asymptoticMatching

def CylinderFunctionLemmaClosed (C : CylinderFunctionLemmaPackage) : Prop :=
  C.cylinderFunctionDefined ∧ C.besselAiryRelationProved ∧ C.wronskianIdentity ∧ C.asymptoticMatching

theorem cylinder_function_lemma_closed_from_evidence (C : CylinderFunctionLemmaPackage) (E : CylinderFunctionLemmaEvidence C) : CylinderFunctionLemmaClosed C := by
  exact And.intro E.cylinderFunctionDefinedClosed (And.intro E.besselAiryRelationProvedClosed (And.intro E.wronskianIdentityClosed E.asymptoticMatchingClosed))

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse