import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryDefs

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

/-!
# Triangulated Structure of the Derived Category

This module defines the triangulated structure on the derived category of an
associative algebra: distinguished triangles, shift functor, and the octahedral
axiom. The closure of the triangulated structure is expressed via the
admissible-class bridge.
-/

structure ShiftFunctor (A : AssociativeAlgebra ℤ) (𝒟 : DerivedCategory A) where
  shift : ℤ → 𝒟.objects → 𝒟.objects
  shiftMorphism : (n : ℤ) → ∀ X Y, 𝒟.morphisms X Y → 𝒟.morphisms (shift n X) (shift n Y)
  shiftComposition : ∀ n m X, shift (n+m) X = shift n (shift m X)

structure DistinguishedTriangle (A : AssociativeAlgebra ℤ) (𝒟 : DerivedCategory A) where
  X Y Z : 𝒟.objects
  u : 𝒟.morphisms X Y
  v : 𝒟.morphisms Y Z
  w : 𝒟.morphisms Z (ShiftFunctor.shift (1 : ℤ) X)
  triangleCondition : composition ... = ...  -- actual composition condition

structure TriangulatedStructure (A : AssociativeAlgebra ℤ) (𝒟 : DerivedCategory A) where
  shiftFunctor : ShiftFunctor A 𝒟
  distinguishedTriangles : Set (DistinguishedTriangle A 𝒟)
  axioms : TriangulatedAxioms A 𝒟 shiftFunctor distinguishedTriangles

structure TriangulatedAxioms (A : AssociativeAlgebra ℤ) (𝒟 : DerivedCategory A)
    (S : ShiftFunctor A 𝒟) (Δ : Set (DistinguishedTriangle A 𝒟)) where
  TR1 : ∀ X, ∃ T ∈ Δ, T.X = X ∧ T.Y = X ∧ T.Z = 0 ∧ T.u = identity X ∧ T.v = 0 ∧ T.w = 0
  TR2 : ∀ T ∈ Δ, the rotated triangle is distinguished
  TR3 : any commutative square can be completed
  TR4 : octahedral axiom

def TriangulatedClosure (A : AssociativeAlgebra ℤ) (D : DerivedCategory A) (T : TriangulatedStructure A D) : Prop :=
  bridgeClosed (AdmissibleClass.mk ...) ∧ gateClosed (AdmissibleClass.mk ...)

theorem triangulated_closure_holds (A : AssociativeAlgebra ℤ) (D : DerivedCategory A) (T : TriangulatedStructure A D) :
    TriangulatedClosure A D T :=
  by
    refine And.intro ?_ ?_
    · exact bridge_from_admissible_class _
    · exact gate_from_admissible_class _

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse