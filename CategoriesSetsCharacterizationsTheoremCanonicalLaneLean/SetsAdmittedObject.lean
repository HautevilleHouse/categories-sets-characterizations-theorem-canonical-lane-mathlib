import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.ConcreteCategory.Basic

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

open CategoryTheory

-- A small category that is concrete over Sets
structure SetsAdmittedObject where
  C : Type u
  [inst : Category.{v} C]
  [instConcrete : ConcreteCategory C]
  fullyFaithfulEmbedding : Prop
  essentiallySurjective : Prop
  conclusion : fullyFaithfulEmbedding ∧ essentiallySurjective

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse
