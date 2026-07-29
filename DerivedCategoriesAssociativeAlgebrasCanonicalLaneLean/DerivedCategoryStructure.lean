import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure DerivedCategoryPackage where
  underlyingCategory : Type u
  shiftFunctor : underlyingCategory → underlyingCategory
  distinguishedTriangles : Set (Triple underlyingCategory)
  exactnessAxioms : Prop
  shiftInvolution : ∀ X : underlyingCategory, shiftFunctor (shiftFunctor X) = X
  triangleAxioms : Prop
  exactnessAxiomsTerm : exactnessAxioms
  shiftInvolutionTerm : shiftInvolution
  triangleAxiomsTerm : triangleAxioms

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  exactnessAxiomsClosed : D.exactnessAxioms
  shiftInvolutionClosed : D.shiftInvolution
  triangleAxiomsClosed : D.triangleAxioms

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.exactnessAxioms ∧ D.shiftInvolution ∧ D.triangleAxioms

theorem derived_category_closed_from_evidence (D : DerivedCategoryPackage)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.exactnessAxiomsClosed (And.intro E.shiftInvolutionClosed E.triangleAxiomsClosed)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse