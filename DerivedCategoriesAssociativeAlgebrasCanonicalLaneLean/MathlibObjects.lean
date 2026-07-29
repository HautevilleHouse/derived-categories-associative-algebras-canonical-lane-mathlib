import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DerivedSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DerivedAdmittedObject where
  space : DerivedSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure DerivedEndgameState where
  object : DerivedAdmittedObject

def DerivedWitnessClosed (O : DerivedAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse