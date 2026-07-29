import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BesselAiryAdmittedObject where
  besselEquation : BesselOrdinaryDifferentialEquation ℝ
  airyEquation : AiryOrdinaryDifferentialEquation
  cylinderRelations : RecurrenceRelation ℝ
  wronskian : WronskianBessel ℝ
  asymptotic : AsymptoticBesselLargeArgument ℝ
  conclusion : Prop

structure AdmissibleClass where
  object : BesselAiryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BesselAiryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse