import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure DerivedCategoryPackage where
  triangulatedCategory : Type u
  shiftFunctor : TriangulatedCategory → TriangulatedCategory
  distinguishedTriangles : Prop
  octahedralAxiom : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  shiftFunctorAutoequivalence : D.shiftFunctor ≅ DerivedCategory
  distinguishedTrianglesClosed : D.distinguishedTriangles
  octahedralAxiomClosed : D.octahedralAxiom

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.distinguishedTriangles ∧ D.octahedralAxiom

theorem derived_category_closed_from_evidence (D : DerivedCategoryPackage)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.distinguishedTrianglesClosed E.octahedralAxiomClosed

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse