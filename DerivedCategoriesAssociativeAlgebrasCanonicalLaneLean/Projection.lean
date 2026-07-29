import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def derivedProjection : Projection DerivedEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem derived_projection_idempotent (x : DerivedEndgameState) :
    derivedProjection.toFun (derivedProjection.toFun x) = derivedProjection.toFun x := by
  exact derivedProjection.idempotent x

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse