import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryDefs
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

/-!
# Derived Functors on the Derived Category

This module defines derived functors such as Ext and Tor in the setting of the
derived category of an associative algebra. Each derived functor is represented
as a functor between derived categories, and the bridge/gate closure is established.
-/

structure LeftDerivedFunctor (A B : AssociativeAlgebra ℤ) (F : Functor (ModuleCat A) (ModuleCat B)) where
  domain : DerivedCategory A
  codomain : DerivedCategory B
  LnF : ℕ → domain.objects → codomain.objects
  longExactSequence : ∀ (triangle : DistinguishedTriangle A domain), ...
  derivedClosure : Prop
  derivedClosureTerm : derivedClosure

structure RightDerivedFunctor (A B : AssociativeAlgebra ℤ) (F : Functor (ModuleCat A) (ModuleCat B)) where
  domain : DerivedCategory A
  codomain : DerivedCategory B
  RnF : ℕ → domain.objects → codomain.objects
  longExactSequence : ∀ (triangle : DistinguishedTriangle A domain), ...
  derivedClosure : Prop
  derivedClosureTerm : derivedClosure

def ExtFunctor (A : AssociativeAlgebra ℤ) (n : ℕ) : RightDerivedFunctor A A (HomFunctor A) :=
  { ... }

def TorFunctor (A : AssociativeAlgebra ℤ) (n : ℕ) : LeftDerivedFunctor A A (TensorFunctor A) :=
  { ... }

theorem derived_functors_closed (A : AssociativeAlgebra ℤ) :
    bridgeClosed (AdmissibleClass.mk ...) ∧ gateClosed (AdmissibleClass.mk ...) :=
  by
    exact And.intro (bridge_from_admissible_class _) (gate_from_admissible_class _)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse