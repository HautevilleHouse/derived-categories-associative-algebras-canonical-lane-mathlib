import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DerivedWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse