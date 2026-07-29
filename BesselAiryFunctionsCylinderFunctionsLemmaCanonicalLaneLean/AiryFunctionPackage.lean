import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.BesselFunctionPackage

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure AiryFunctionPackage where
  airyDifferentialEquation : Prop
  airySeriesRepresentation : Prop
  airyAsymptoticExpansions : Prop
  airyConnectionToBessel : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  airyDifferentialEquationClosed : A.airyDifferentialEquation
  airySeriesRepresentationClosed : A.airySeriesRepresentation
  airyAsymptoticExpansionsClosed : A.airyAsymptoticExpansions
  airyConnectionToBesselClosed : A.airyConnectionToBessel

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.airyDifferentialEquation ∧ A.airySeriesRepresentation ∧ A.airyAsymptoticExpansions ∧ A.airyConnectionToBessel

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage) (E : AiryFunctionEvidence A) : AiryFunctionClosed A := by
  exact And.intro E.airyDifferentialEquationClosed (And.intro E.airySeriesRepresentationClosed (And.intro E.airyAsymptoticExpansionsClosed E.airyConnectionToBesselClosed))

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse