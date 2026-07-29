import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryDefinition

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure LeftDerivedFunctor {A B : AssociativeAlgebra ℤ} (F : (ChainComplex A) → (ChainComplex B)) where
  rightResolution : (ChainComplex A) → (ChainComplex A)
  derivedImage : (ChainComplex A) → (ChainComplex B)
  quasiIsoPreserved : ∀ C : ChainComplex A, F (rightResolution C) ≅ F C

structure RightDerivedFunctor {A B : AssociativeAlgebra ℤ} (F : (ChainComplex A) → (ChainComplex B)) where
  leftResolution : (ChainComplex A) → (ChainComplex A)
  derivedImage : (ChainComplex A) → (ChainComplex B)
  quasiIsoPreserved : ∀ C : ChainComplex A, F (leftResolution C) ≅ F C

structure DerivedHomFunctor {A : AssociativeAlgebra ℤ} where
  hom : (ChainComplex A) → (ChainComplex A) → (ChainComplex A)
  derived : Prop

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse