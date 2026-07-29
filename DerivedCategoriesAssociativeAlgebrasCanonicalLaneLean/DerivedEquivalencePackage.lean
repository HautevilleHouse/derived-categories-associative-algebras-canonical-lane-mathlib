import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryPackage

/-!
# Derived Equivalence Package
-/

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure DerivedEquivalencePackage {A B : AbEnrichedCategory} {C : ChainComplexPackage A} {D : ChainComplexPackage B}
    (DA : DerivedCategoryPackage A C) (DB : DerivedCategoryPackage B D) where
  functorExists : Prop
  fullyFaithful : Prop
  essentiallySurjective : Prop
  inducesEquivalence : Prop

structure DerivedEquivalenceEvidence {A B : AbEnrichedCategory} {C : ChainComplexPackage A} {D : ChainComplexPackage B}
    {DA : DerivedCategoryPackage A C} {DB : DerivedCategoryPackage B D} (E : DerivedEquivalencePackage DA DB) where
  functorExistsClosed : E.functorExists
  fullyFaithfulClosed : E.fullyFaithful
  essentiallySurjectiveClosed : E.essentiallySurjective
  inducesEquivalenceClosed : E.inducesEquivalence

def DerivedEquivalenceClosed {A B : AbEnrichedCategory} {C : ChainComplexPackage A} {D : ChainComplexPackage B}
    {DA : DerivedCategoryPackage A C} {DB : DerivedCategoryPackage B D} (E : DerivedEquivalencePackage DA DB) : Prop :=
  E.functorExists ∧ E.fullyFaithful ∧ E.essentiallySurjective ∧ E.inducesEquivalence

theorem derived_equivalence_closed_from_evidence {A B : AbEnrichedCategory} {C : ChainComplexPackage A} {D : ChainComplexPackage B}
    {DA : DerivedCategoryPackage A C} {DB : DerivedCategoryPackage B D} (E : DerivedEquivalencePackage DA DB) (Ev : DerivedEquivalenceEvidence E) :
    DerivedEquivalenceClosed E := by
  exact And.intro Ev.functorExistsClosed (And.intro Ev.fullyFaithfulClosed (And.intro Ev.essentiallySurjectiveClosed Ev.inducesEquivalenceClosed))

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse