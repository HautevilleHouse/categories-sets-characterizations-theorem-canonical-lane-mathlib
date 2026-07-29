import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure YonedaEmbeddingPackage where
  embeddingDefined : Prop
  fullyFaithful : Prop
  naturalityCondition : Prop
  representableFunctors : Prop
  correspondenceHeld : Prop

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  embeddingDefinedClosed : Y.embeddingDefined
  fullyFaithfulClosed : Y.fullyFaithful
  naturalityConditionClosed : Y.naturalityCondition
  representableFunctorsClosed : Y.representableFunctors
  correspondenceHeldClosed : Y.correspondenceHeld

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.embeddingDefined ∧ Y.fullyFaithful ∧ Y.naturalityCondition ∧
  Y.representableFunctors ∧ Y.correspondenceHeld

theorem yoneda_embedding_closed_from_evidence
    (Y : YonedaEmbeddingPackage) (E : YonedaEmbeddingEvidence Y) :
    YonedaEmbeddingClosed Y := by
  exact And.intro E.embeddingDefinedClosed
    (And.intro E.fullyFaithfulClosed
      (And.intro E.naturalityConditionClosed
        (And.intro E.representableFunctorsClosed E.correspondenceHeldClosed)))

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse