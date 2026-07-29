import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryDefinition

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure CohomologyFunctor (A : AssociativeAlgebra ℤ) where
  cohomology : ℤ → (ChainComplex A) → A.carrier
  exactness : ∀ (C : ChainComplex A) (n : ℤ), cohomology (n+1) C * differentials n C = 0

structure ClassicalBoundaryRemainder {A : AssociativeAlgebra ℤ} (D : DerivedCategoryPackage A) where
  unboundedComplexes : Prop
  noncanonicalResolutions : Prop
  classicalBoundaryClaimed : Prop
  carriedRemainder : Prop

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse