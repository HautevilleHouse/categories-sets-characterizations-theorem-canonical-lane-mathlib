import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoryCarrier where
  objects : Type
  morphisms : Type
  composition : Type
  identityMap : Type
  associativity : Prop
  identityLaw : Prop

definition CategoryStructure (C : CategoryCarrier) : Prop :=
  C.associativity ∧ C.identityLaw

structure SetObject where
  carrier : Type
  elements : Type
  setStructure : Prop

structure AdmittedObject where
  category : CategoryCarrier
  setObject : SetObject
  categoryStructure : CategoryStructure category
  setStructure : setObject.setStructure
  bridgeCondition : Prop
  conclusion : bridgeCondition

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.bridgeCondition

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse