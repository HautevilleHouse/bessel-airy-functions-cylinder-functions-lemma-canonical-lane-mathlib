namespace HautevilleHouse
namespace BesselAiryCylinderFunctionsLemmaCanonicalLaneLean

structure BesselAiryCylinderPackage where
  besselJRecurrence : Prop
  airyAiDifferentialEquation : Prop
  cylinderFunctionRelation : Prop
  wronskianIdentity : Prop

structure BesselAiryCylinderEvidence (P : BesselAiryCylinderPackage) where
  besselJRecurrenceClosed : P.besselJRecurrence
  airyAiDifferentialEquationClosed : P.airyAiDifferentialEquation
  cylinderFunctionRelationClosed : P.cylinderFunctionRelation
  wronskianIdentityClosed : P.wronskianIdentity

def BesselAiryCylinderClosed (P : BesselAiryCylinderPackage) : Prop :=
  P.besselJRecurrence ∧ P.airyAiDifferentialEquation ∧ P.cylinderFunctionRelation ∧ P.wronskianIdentity

theorem bessel_airy_cylinder_closed_from_evidence
    (P : BesselAiryCylinderPackage) (E : BesselAiryCylinderEvidence P) :
    BesselAiryCylinderClosed P :=
  by
    exact And.intro E.besselJRecurrenceClosed
      (And.intro E.airyAiDifferentialEquationClosed
        (And.intro E.cylinderFunctionRelationClosed E.wronskianIdentityClosed))

structure BesselAiryCylinderAdmittedObject where
  package : BesselAiryCylinderPackage
  evidence : BesselAiryCylinderEvidence package
  conclusion : BesselAiryCylinderClosed package

def BesselAiryCylinderWitnessClosed (O : BesselAiryCylinderAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : BesselAiryCylinderAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BesselAiryCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse