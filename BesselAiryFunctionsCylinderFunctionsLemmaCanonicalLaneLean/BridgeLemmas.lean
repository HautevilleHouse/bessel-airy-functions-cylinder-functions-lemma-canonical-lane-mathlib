import BesselAiryCylinderFunctionsLemmaCanonicalLaneLean.BesselAiryCylinderCore

namespace HautevilleHouse
namespace BesselAiryCylinderFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BesselAiryCylinderWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BesselAiryCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse