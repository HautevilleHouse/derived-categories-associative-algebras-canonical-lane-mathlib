import canonicalLaneMathlib.AdmissibleClass
import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.DerivedCategoryAlgebra

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure TiltingTheoryPackage {A : Type u} [Ring A] where
  tiltingModule : Module
  derivedEquivalenceWithEndomorphismRing : Prop
  tiltingTheorem : Prop

structure TiltingTheoryEvidence {A : Type u} [Ring A]
    (T : TiltingTheoryPackage A) where
  tiltingModuleClosed : T.tiltingModule ≅ DerivedCategory
  derivedEquivalenceClosed : T.derivedEquivalenceWithEndomorphismRing
  tiltingTheoremClosed : T.tiltingTheorem

def TiltingTheoryClosed {A : Type u} [Ring A]
    (T : TiltingTheoryPackage A) : Prop :=
  T.derivedEquivalenceWithEndomorphismRing ∧ T.tiltingTheorem

theorem tilting_theory_closed_from_evidence {A : Type u} [Ring A]
    (T : TiltingTheoryPackage A) (E : TiltingTheoryEvidence T) :
    TiltingTheoryClosed T := by
  exact And.intro E.derivedEquivalenceClosed E.tiltingTheoremClosed

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse