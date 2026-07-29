import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedFunctor

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure SpectralSequence {A B : Type u} [Ring A] [Ring B] (D_A : DerivedCategoryConstruction A) (D_B : DerivedCategoryConstruction B) where
  pages : ℕ → AbelianCategory
  differentials : ∀ (r : ℕ), pages r ⥤ pages r
  convergence : Prop

def SpectralSequenceClosed {A B : Type u} [Ring A] [Ring B] {D_A : DerivedCategoryConstruction A} {D_B : DerivedCategoryConstruction B} (S : SpectralSequence D_A D_B) : Prop :=
  S.convergence

theorem spectral_sequence_closed_from_evidence {A B : Type u} [Ring A] [Ring B] {D_A : DerivedCategoryConstruction A} {D_B : DerivedCategoryConstruction B} (S : SpectralSequence D_A D_B) (h : S.convergence) :
    SpectralSequenceClosed S := h

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse