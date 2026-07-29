import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CategorySetsEquivalence where
  sourceCategory : SetsAdmittedObject
  targetCategory : SetsAdmittedObject
  equivalenceExists : Prop
  equivalenceDataAvailable : equivalenceExists

theorem equivalence_closed (E : CategorySetsEquivalence) :
    E.equivalenceExists := E.equivalenceDataAvailable

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse
