import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure TriangulatedCategory where
  Obj : Type u
  Shift : ℤ ⥤ DerivedCategory
  DistinguishedTriangles : Set (Triangle Obj)
  octahedronAxiom : Prop

def TriangulatedCategoryWitnessClosed (O : AdmittedObject) : Prop :=
  O.triangulatedAxioms

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse