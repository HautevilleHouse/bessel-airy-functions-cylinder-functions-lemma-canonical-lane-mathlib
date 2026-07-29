import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure BesselFunctionPackage where
  besselDifferentialEquation : Prop
  besselSeriesRepresentation : Prop
  besselRecurrenceRelations : Prop
  besselHankelTransform : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  besselDifferentialEquationClosed : B.besselDifferentialEquation
  besselSeriesRepresentationClosed : B.besselSeriesRepresentation
  besselRecurrenceRelationsClosed : B.besselRecurrenceRelations
  besselHankelTransformClosed : B.besselHankelTransform

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.besselDifferentialEquation ∧ B.besselSeriesRepresentation ∧ B.besselRecurrenceRelations ∧ B.besselHankelTransform

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage) (E : BesselFunctionEvidence B) : BesselFunctionClosed B := by
  exact And.intro E.besselDifferentialEquationClosed (And.intro E.besselSeriesRepresentationClosed (And.intro E.besselRecurrenceRelationsClosed E.besselHankelTransformClosed))

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse