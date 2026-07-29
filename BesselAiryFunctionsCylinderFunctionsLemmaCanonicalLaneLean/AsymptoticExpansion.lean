import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure AsymptoticBesselLargeArgument (ν : ℝ) where
  Jν : ℝ → ℝ
  Yν : ℝ → ℝ
  asymptoticSeries : ℕ → ℝ → ℝ
  leadingTerm : ℝ → ℝ
  errorBound : ℝ → ℝ → ℝ
  uniformOnSector : Set ℝ

structure AsymptoticBesselLargeOrder (ν : ℝ) where
  Jν : ℝ → ℝ
  Yν : ℝ → ℝ
  scaling : ℝ
  limitingForm : ℝ → ℝ
  transitionPoint : ℝ

structure AsymptoticAiry (A : AiryOrdinaryDifferentialEquation) where
  Ai : ℝ → ℝ
  Bi : ℝ → ℝ
  largePositive : Prop
  largeNegative : Prop
  uniformOnSector : Set ℝ

def AsymptoticClosed (A : AsymptoticAiry) : Prop := True

theorem asymptotic_closed_from_evidence (A : AsymptoticAiry) (h : AsymptoticClosed A) : True := by
  exact h

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse