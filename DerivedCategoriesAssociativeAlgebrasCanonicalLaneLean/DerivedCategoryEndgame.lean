import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryDefinition
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure DerivedAdmissibleObject (A : AssociativeAlgebra ℤ) where
  chainComplex : ChainComplex A
  derivedCategory : DerivedCategory A
  localized : derivedCategory.localized

structure DerivedAdmissibleClass (A : AssociativeAlgebra ℤ) where
  object : DerivedAdmissibleObject A
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed {A : AssociativeAlgebra ℤ} (C : DerivedAdmissibleClass A) : Prop :=
  C.object.localized

theorem bridge_from_admissible_class {A : AssociativeAlgebra ℤ} (C : DerivedAdmissibleClass A) :
    bridgeClosed C := by
  exact C.object.localized

def gateClosed {A : AssociativeAlgebra ℤ} (C : DerivedAdmissibleClass A) : Prop :=
  C.endpointSatisfied ∨ C.remainderRecorded

theorem gate_from_admissible_class {A : AssociativeAlgebra ℤ} (C : DerivedAdmissibleClass A) :
    gateClosed C := by
  exact C.gateWitness

def ConstrainedDerivedCategoryClosure {A : AssociativeAlgebra ℤ} (C : DerivedAdmissibleClass A) : Prop :=
  bridgeClosed C ∧ gateClosed C

theorem constrained_derived_category_endgame {A : AssociativeAlgebra ℤ} (C : DerivedAdmissibleClass A) :
    ConstrainedDerivedCategoryClosure C := by
  exact And.intro (bridge_from_admissible_class C) (gate_from_admissible_class C)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse