import canonicalLaneMathlib.AdmissibleClass
import BridgeLemmas
import GateLemmas

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

def DerivedCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem derived_category_endgame (A : AdmissibleClass) :
    DerivedCategoryClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse