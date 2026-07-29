import canonicalLaneMathlib.AdmissibleClass
import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryAlgebra

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure ProjectiveResolutionPackage {A : Type u} [AddMonoid A] where
  module : Type v
  projectiveObjects : Prop
  resolutionExists : Prop
  chainComplex : ChainComplex ℕ

structure ProjectiveResolutionEvidence {A : Type u} [AddMonoid A]
    (P : ProjectiveResolutionPackage A) where
  projectiveObjectsClosed : P.projectiveObjects
  resolutionExistsClosed : P.resolutionExists

def ProjectiveResolutionClosed {A : Type u} [AddMonoid A]
    (P : ProjectiveResolutionPackage A) : Prop :=
  P.projectiveObjects ∧ P.resolutionExists

theorem projective_resolution_closed_from_evidence {A : Type u} [AddMonoid A]
    (P : ProjectiveResolutionPackage A) (E : ProjectiveResolutionEvidence P) :
    ProjectiveResolutionClosed P := by
  exact And.intro E.projectiveObjectsClosed E.resolutionExistsClosed

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse