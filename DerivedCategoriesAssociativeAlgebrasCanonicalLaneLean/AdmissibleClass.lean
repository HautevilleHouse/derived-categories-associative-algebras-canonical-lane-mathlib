import DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : DerivedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DerivedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DerivedCategoriesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse