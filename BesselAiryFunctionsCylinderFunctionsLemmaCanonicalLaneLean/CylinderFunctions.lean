import BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.AiryFunctions

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure CylinderFunctionPackage where
  parabolicCylinderFunctionDefined : Prop
  hermitePolynomialRelation : Prop
  recurrenceRelation : Prop
  asymptoticExpansion : Prop

structure CylinderFunctionEvidence (C : CylinderFunctionPackage) where
  parabolicCylinderFunctionDefinedClosed : C.parabolicCylinderFunctionDefined
  hermitePolynomialRelationClosed : C.hermitePolynomialRelation
  recurrenceRelationClosed : C.recurrenceRelation
  asymptoticExpansionClosed : C.asymptoticExpansion

def CylinderFunctionClosed (C : CylinderFunctionPackage) : Prop :=
  C.parabolicCylinderFunctionDefined ∧ C.hermitePolynomialRelation ∧
  C.recurrenceRelation ∧ C.asymptoticExpansion

theorem cylinder_function_closed_from_evidence (C : CylinderFunctionPackage)
    (E : CylinderFunctionEvidence C) : CylinderFunctionClosed C := by
  exact And.intro E.parabolicCylinderFunctionDefinedClosed
    (And.intro E.hermitePolynomialRelationClosed
      (And.intro E.recurrenceRelationClosed E.asymptoticExpansionClosed))

end HautevilleHouse
end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
