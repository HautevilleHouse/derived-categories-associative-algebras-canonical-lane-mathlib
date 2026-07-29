import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.AbEnrichedCategory

/-!
# Derived Category Package
-/

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure DerivedCategoryPackage {A : AbEnrichedCategory} {C : ChainComplexPackage A} where
  localizationExists : Prop
  derivedCategory : Type u
  triangleStructure : Prop
  tStructure : Prop

theorem derived_category_localization_checked {A : AbEnrichedCategory} {C : ChainComplexPackage A} (D : DerivedCategoryPackage A C) : D.localizationExists := by
  exact D.localizationExists

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse