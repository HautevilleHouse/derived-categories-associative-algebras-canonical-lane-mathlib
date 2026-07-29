import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryPackage

/-!
# Algebra Homomorphism Derived Functor Package
-/

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure AlgHomDerivedPackage {A : AbEnrichedCategory} {C : ChainComplexPackage A} (D : DerivedCategoryPackage A C) where
  algebra : Type u
  algebraStructure : Algebra algebra
  homSpace : Type v
  derivedHomComplex : Prop
  compositionLaw : Prop
  homotopyInvariant : Prop

structure AlgHomDerivedEvidence {A : AbEnrichedCategory} {C : ChainComplexPackage A} {D : DerivedCategoryPackage A C} (H : AlgHomDerivedPackage A C D) where
  derivedHomComplexClosed : H.derivedHomComplex
  compositionLawClosed : H.compositionLaw
  homotopyInvariantClosed : H.homotopyInvariant

def AlgHomDerivedClosed {A : AbEnrichedCategory} {C : ChainComplexPackage A} {D : DerivedCategoryPackage A C} (H : AlgHomDerivedPackage A C D) : Prop :=
  H.derivedHomComplex ∧ H.compositionLaw ∧ H.homotopyInvariant

theorem alg_hom_derived_closed_from_evidence {A : AbEnrichedCategory} {C : ChainComplexPackage A} {D : DerivedCategoryPackage A C} (H : AlgHomDerivedPackage A C D) (Ev : AlgHomDerivedEvidence H) :
    AlgHomDerivedClosed H := by
  exact And.intro Ev.derivedHomComplexClosed (And.intro Ev.compositionLawClosed Ev.homotopyInvariantClosed)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse