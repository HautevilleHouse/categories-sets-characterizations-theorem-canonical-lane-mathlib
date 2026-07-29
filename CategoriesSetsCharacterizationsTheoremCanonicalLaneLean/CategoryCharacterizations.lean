import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.YonedaEmbedding

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CategoryCharacterizationsPackage (Y : YonedaEmbeddingPackage) where
  fullyFaithfulCharacterization : Prop
  essentiallySurjectiveCharacterization : Prop
  equivalenceCharacterization : Prop
  functorCategoriesExist : Prop

structure CategoryCharacterizationsEvidence (Y : YonedaEmbeddingPackage) (P : CategoryCharacterizationsPackage Y) where
  fullyFaithfulCharacterizationClosed : P.fullyFaithfulCharacterization
  essentiallySurjectiveCharacterizationClosed : P.essentiallySurjectiveCharacterization
  equivalenceCharacterizationClosed : P.equivalenceCharacterization
  functorCategoriesExistClosed : P.functorCategoriesExist

def CategoryCharacterizationsClosed (Y : YonedaEmbeddingPackage) (P : CategoryCharacterizationsPackage Y) : Prop :=
  P.fullyFaithfulCharacterization ∧ P.essentiallySurjectiveCharacterization ∧
  P.equivalenceCharacterization ∧ P.functorCategoriesExist

theorem category_characterizations_closed_from_evidence (Y : YonedaEmbeddingPackage) (P : CategoryCharacterizationsPackage Y) (E : CategoryCharacterizationsEvidence Y P) :
    CategoryCharacterizationsClosed Y P := by
  exact And.intro E.fullyFaithfulCharacterizationClosed
    (And.intro E.essentiallySurjectiveCharacterizationClosed
      (And.intro E.equivalenceCharacterizationClosed E.functorCategoriesExistClosed))

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse