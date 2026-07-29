import canonicalLaneMathlib.AdmissibleClass
import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryAlgebra

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure MoritaEquivalencePackage {A B : Type u} [Ring A] [Ring B] where
  bimodule : A ⊗ B → Module
  derivedEquivalence : Prop
  hochschildHomologyInvariant : Prop

structure MoritaEquivalenceEvidence {A B : Type u} [Ring A] [Ring B]
    (M : MoritaEquivalencePackage A B) where
  bimoduleClosed : M.bimodule ≅ DerivedCategory
  derivedEquivalenceClosed : M.derivedEquivalence
  hochschildHomologyInvariantClosed : M.hochschildHomologyInvariant

def MoritaEquivalenceClosed {A B : Type u} [Ring A] [Ring B]
    (M : MoritaEquivalencePackage A B) : Prop :=
  M.derivedEquivalence ∧ M.hochschildHomologyInvariant

theorem morita_equivalence_closed_from_evidence {A B : Type u} [Ring A] [Ring B]
    (M : MoritaEquivalencePackage A B) (E : MoritaEquivalenceEvidence M) :
    MoritaEquivalenceClosed M := by
  exact And.intro E.derivedEquivalenceClosed E.hochschildHomologyInvariantClosed

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse