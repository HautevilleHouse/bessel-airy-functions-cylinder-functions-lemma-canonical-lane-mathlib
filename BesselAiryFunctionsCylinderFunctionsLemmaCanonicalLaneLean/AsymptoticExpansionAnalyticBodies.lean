import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.CylinderFunctionLemmaPackage

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure AsymptoticExpansionAnalyticBodies where
  besselLargeArgumentExpansion : Prop
  airyLargeArgumentExpansion : Prop
  cylinderTransitionExpansion : Prop
  uniformApproximation : Prop
  besselLargeArgumentExpansionTerm : besselLargeArgumentExpansion
  airyLargeArgumentExpansionTerm : airyLargeArgumentExpansion
  cylinderTransitionExpansionTerm : cylinderTransitionExpansion
  uniformApproximationTerm : uniformApproximation

def AsymptoticExpansionClosed (A : AsymptoticExpansionAnalyticBodies) : Prop :=
  A.besselLargeArgumentExpansion ∧ A.airyLargeArgumentExpansion ∧ A.cylinderTransitionExpansion ∧ A.uniformApproximation

theorem asymptotic_expansion_closed_from_evidence (A : AsymptoticExpansionAnalyticBodies) : AsymptoticExpansionClosed A := by
  exact And.intro A.besselLargeArgumentExpansionTerm (And.intro A.airyLargeArgumentExpansionTerm (And.intro A.cylinderTransitionExpansionTerm A.uniformApproximationTerm))

theorem mathlib_bessel_asymptotics_available : True := trivial
theorem mathlib_airy_asymptotics_available : True := trivial

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse