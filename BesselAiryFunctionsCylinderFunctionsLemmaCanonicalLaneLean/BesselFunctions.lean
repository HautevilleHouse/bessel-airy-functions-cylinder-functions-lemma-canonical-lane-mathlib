import BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure BesselFunctionPackage where
  orderType : Type
  seriesDefinition : Prop
  integralRepresentation : Prop
  recurrenceRelations : Prop
  asymptoticExpansion : Prop
  generatingFunction : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  seriesDefinitionClosed : B.seriesDefinition
  integralRepresentationClosed : B.integralRepresentation
  recurrenceRelationsClosed : B.recurrenceRelations
  asymptoticExpansionClosed : B.asymptoticExpansion
  generatingFunctionClosed : B.generatingFunction

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.seriesDefinition ∧ B.integralRepresentation ∧ B.recurrenceRelations ∧
  B.asymptoticExpansion ∧ B.generatingFunction

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage)
    (E : BesselFunctionEvidence B) : BesselFunctionClosed B := by
  exact And.intro E.seriesDefinitionClosed
    (And.intro E.integralRepresentationClosed
      (And.intro E.recurrenceRelationsClosed
        (And.intro E.asymptoticExpansionClosed E.generatingFunctionClosed)))

end HautevilleHouse
end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
