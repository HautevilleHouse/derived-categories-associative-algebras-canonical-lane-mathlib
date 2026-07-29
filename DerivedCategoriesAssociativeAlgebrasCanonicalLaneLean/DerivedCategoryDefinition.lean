import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure AssociativeAlgebra (k : Type u) [CommRing k] where
  carrier : Type v
  [addCommGroup : AddCommGroup carrier]
  [module : Module k carrier]
  mul : carrier → carrier → carrier
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  left_distrib : ∀ a b c : carrier, mul a (b + c) = mul a b + mul a c
  right_distrib : ∀ a b c : carrier, mul (a + b) c = mul a c + mul b c
  smul_mul : ∀ (r : k) (a b : carrier), mul (r • a) b = r • mul a b
  mul_smul : ∀ (r : k) (a b : carrier), mul a (r • b) = r • mul a b

structure ChainComplex (A : AssociativeAlgebra ℤ) where
  objects : ℤ → A.carrier
  differentials : ℤ → A.carrier
  differential_squared : ∀ n : ℤ, differentials (n+1) * differentials n = 0

structure DerivedCategory (A : AssociativeAlgebra ℤ) where
  chainComplexes : ChainComplex A → Prop
  quasiIsomorphisms : {C D : ChainComplex A} → (ChainComplex A → ChainComplex A) → Prop
  localized : Prop

structure DerivedCategoryPackage (A : AssociativeAlgebra ℤ) where
  derivedCategory : DerivedCategory A
  triangulatedStructure : Prop
  shiftFunctor : Prop
  distinguishedTriangles : Prop

structure DerivedCategoryEvidence (A : AssociativeAlgebra ℤ) (P : DerivedCategoryPackage A) where
  localizedClosed : P.derivedCategory.localized
  triangulatedStructureClosed : P.triangulatedStructure
  shiftFunctorClosed : P.shiftFunctor
  distinguishedTrianglesClosed : P.distinguishedTriangles

def DerivedCategoryClosed {A : AssociativeAlgebra ℤ} (P : DerivedCategoryPackage A) : Prop :=
  P.derivedCategory.localized ∧ P.triangulatedStructure ∧ P.shiftFunctor ∧ P.distinguishedTriangles

theorem derived_category_closed_from_evidence
    {A : AssociativeAlgebra ℤ} (P : DerivedCategoryPackage A) (E : DerivedCategoryEvidence P) :
    DerivedCategoryClosed P := by
  exact And.intro E.localizedClosed (And.intro E.triangulatedStructureClosed (And.intro E.shiftFunctorClosed E.distinguishedTrianglesClosed))

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse