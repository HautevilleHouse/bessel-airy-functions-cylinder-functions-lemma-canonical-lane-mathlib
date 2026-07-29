import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean

def sourceRepository : String := "bessel-airy-cylinder-functions-lemma-canonical-lane"
def sourceDescription : String := "Bessel Airy Functions Cylinder Functions Lemma"
def sourceTheoremBoundary : String := "classical boundary remains external"
def baselineCertificateLane : String := "admissible_closure"

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary,
    manifoldConstrainedStatement := "Bessel Airy Cylinder Functions Lemma constrained via admissible class closure",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalization certificate" }

end BesselAiryFunctionsCylinderFunctionsLemmaCanonicalLaneLean
end HautevilleHouse