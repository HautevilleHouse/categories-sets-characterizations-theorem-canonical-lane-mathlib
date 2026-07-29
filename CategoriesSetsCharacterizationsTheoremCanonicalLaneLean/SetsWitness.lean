import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

def SetsWitnessClosed (O : SetsAdmittedObject) : Prop :=
  O.fullyFaithfulEmbedding ∧ O.essentiallySurjective

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse
