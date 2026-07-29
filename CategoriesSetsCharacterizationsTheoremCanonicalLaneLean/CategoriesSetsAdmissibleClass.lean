import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoriesSetsCharacterizationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesSetsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse
