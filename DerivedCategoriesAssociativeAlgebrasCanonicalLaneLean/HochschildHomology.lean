import canonicalLaneMathlib.AdmissibleClass
import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryAlgebra

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure HochschildHomologyPackage {A : Type u} [Ring A] where
  algebra : A
  barConstruction : ChainComplex ℕ
  hochschildComplex : ChainComplex ℕ
  homologyDefinition : Prop

structure HochschildHomologyEvidence {A : Type u} [Ring A]
    (H : HochschildHomologyPackage A) where
  barConstructionClosed : H.barConstruction ≅ DerivedCategory
  hochschildComplexClosed : H.hochschildComplex ≅ DerivedCategory
  homologyDefinitionClosed : H.homologyDefinition

def HochschildHomologyClosed {A : Type u} [Ring A]
    (H : HochschildHomologyPackage A) : Prop :=
  H.homologyDefinition

theorem hochschild_homology_closed_from_evidence {A : Type u} [Ring A]
    (H : HochschildHomologyPackage A) (E : HochschildHomologyEvidence H) :
    HochschildHomologyClosed H := by
  exact E.homologyDefinitionClosed

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse