import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryDefinition

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure MoritaEquivalence {A B : AssociativeAlgebra ℤ} where
  bimodule : Type u
  leftAction : A.carrier → bimodule → bimodule
  rightAction : bimodule → B.carrier → bimodule
  derivedEquivalence : DerivedCategory A ≌ DerivedCategory B

structure TiltingModule {A : AssociativeAlgebra ℤ} where
  module : Type u
  action : A.carrier → module → module
  projective : Prop
  generator : Prop
  derivedAdequate : Prop

theorem tilting_module_derived_equivalence {A : AssociativeAlgebra ℤ} (T : TiltingModule A) :
    ∃ (B : AssociativeAlgebra ℤ), Nonempty (DerivedCategory A ≌ DerivedCategory B) := by
  sorry

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse