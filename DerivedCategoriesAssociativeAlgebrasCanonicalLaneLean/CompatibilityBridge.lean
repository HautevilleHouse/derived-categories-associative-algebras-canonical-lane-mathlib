import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DerivedCategoryClosed (deriveDerivedCategory A)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- bridge is closed via the derived category evidence
  exact derived_category_closed_from_evidence (deriveDerivedCategory A) (evidenceFromAdmissible A)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse