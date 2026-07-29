import BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Asymptotic Expansions Package
-/

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure AsymptoticExpansionPackage where
  besselExpansion : Prop
  airyExpansion : Prop
  cylinderExpansion : Prop
  uniformEstimate : Prop
  stokesPhenomenon : Prop

structure AsymptoticExpansionEvidence (P : AsymptoticExpansionPackage) where
  besselExpansionClosed : P.besselExpansion
  airyExpansionClosed : P.airyExpansion
  cylinderExpansionClosed : P.cylinderExpansion
  uniformEstimateClosed : P.uniformEstimate
  stokesPhenomenonClosed : P.stokesPhenomenon

def AsymptoticExpansionClosed (P : AsymptoticExpansionPackage) : Prop :=
  P.besselExpansion ∧ P.airyExpansion ∧ P.cylinderExpansion ∧
  P.uniformEstimate ∧ P.stokesPhenomenon

theorem asymptotic_expansion_closed_from_evidence (P : AsymptoticExpansionPackage)
    (E : AsymptoticExpansionEvidence P) : AsymptoticExpansionClosed P := by
  exact And.intro E.besselExpansionClosed
    (And.intro E.airyExpansionClosed
      (And.intro E.cylinderExpansionClosed
        (And.intro E.uniformEstimateClosed E.stokesPhenomenonClosed)))

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse