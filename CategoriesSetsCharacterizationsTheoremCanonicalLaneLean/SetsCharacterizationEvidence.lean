import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure SetsCharacterizationEvidence (A : AdmissibleClass) where
  concreteCategoryLoaded : Prop
  fullyFaithfulEmbeddingClosed : A.object.fullyFaithfulEmbedding
  essentiallySurjectiveClosed : A.object.essentiallySurjective
  bridgeClosedFromEvidence : bridgeClosed A
  gateClosedFromEvidence : gateClosed A

theorem sets_characterization_closed_from_evidence (A : AdmissibleClass)
    (E : SetsCharacterizationEvidence A) : ConstrainedSetsClosure A := by
  exact And.intro E.bridgeClosedFromEvidence E.gateClosedFromEvidence

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse
