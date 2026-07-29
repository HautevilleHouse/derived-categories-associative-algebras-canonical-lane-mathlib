import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure DerivedCategoryConstruction (A : Type u) [Ring A] where
  chainComplexCategory : Type v
  homotopyCategory : Type v
  derivedCategory : TriangulatedCategory
  localizationFunctor : chainComplexCategory ⥤ derivedCategory.Obj
  quasiIsomorphismInverted : Prop
  derivedCategoryClosed : derivedCategory.octahedronAxiom

structure DerivedCategoryEvidence {A : Type u} [Ring A] (D : DerivedCategoryConstruction A) where
  quasiIsomorphismInvertedClosed : D.quasiIsomorphismInverted
  derivedCategoryClosedClosed : D.derivedCategoryClosed

def DerivedCategoryClosed {A : Type u} [Ring A] (D : DerivedCategoryConstruction A) : Prop :=
  D.quasiIsomorphismInverted ∧ D.derivedCategoryClosed

theorem derived_category_closed_from_evidence {A : Type u} [Ring A] (D : DerivedCategoryConstruction A) (E : DerivedCategoryEvidence D) :
    DerivedCategoryClosed D := by
  exact And.intro E.quasiIsomorphismInvertedClosed E.derivedCategoryClosedClosed

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse