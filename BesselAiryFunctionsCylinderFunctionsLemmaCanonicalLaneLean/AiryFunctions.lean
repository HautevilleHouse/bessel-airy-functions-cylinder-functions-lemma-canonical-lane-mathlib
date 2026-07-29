import BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.BesselFunctions

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure AiryFunctionPackage where
  airyAiDefined : Prop
  airyBiDefined : Prop
  differentialEquation : Prop
  asymptoticExpansion : Prop
  integralRepresentation : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  airyAiDefinedClosed : A.airyAiDefined
  airyBiDefinedClosed : A.airyBiDefined
  differentialEquationClosed : A.differentialEquation
  asymptoticExpansionClosed : A.asymptoticExpansion
  integralRepresentationClosed : A.integralRepresentation

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.airyAiDefined ∧ A.airyBiDefined ∧ A.differentialEquation ∧
  A.asymptoticExpansion ∧ A.integralRepresentation

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage)
    (E : AiryFunctionEvidence A) : AiryFunctionClosed A := by
  exact And.intro E.airyAiDefinedClosed
    (And.intro E.airyBiDefinedClosed
      (And.intro E.differentialEquationClosed
        (And.intro E.asymptoticExpansionClosed E.integralRepresentationClosed)))

end HautevilleHouse
end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
