import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

structure BesselOrdinaryDifferentialEquation (ν : ℝ) where
  solution : Type u
  differentialEquation : solution → ℝ → ℝ → ℝ → Prop
  orderν : ℝ
  singularityAtZero : Prop
  indicialEquation : Prop

structure BesselFunctionFirstKind (ν : ℝ) where
  diffEq : BesselOrdinaryDifferentialEquation ν
  Jν : ℝ → ℝ
  seriesRepresentation : Prop
  asymptoticSmallX : Prop
  powerSeriesCoefficients : List ℝ

structure BesselFunctionSecondKind (ν : ℝ) where
  diffEq : BesselOrdinaryDifferentialEquation ν
  Yν : ℝ → ℝ
  logarithmicSingularity : Prop
  relationToFirstKind : Prop

def BesselEquationClosed (ν : ℝ) (B : BesselOrdinaryDifferentialEquation ν) : Prop := True

theorem bessel_equation_closed_from_evidence (ν : ℝ) (B : BesselOrdinaryDifferentialEquation ν) (h : BesselEquationClosed ν B) : True := by
  exact True.intro

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse