import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse