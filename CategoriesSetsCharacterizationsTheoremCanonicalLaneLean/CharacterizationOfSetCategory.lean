import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.CategoryOfSets

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CharacterizationOfSetCategory where
  categoryOfSets : CategoryOfSets
  objectsAreSetsAndFunctions : Prop
  universalityOfProducts : Prop
  universalityOfEqualizers : Prop
  characterizationComplete : Prop
  closureCondition : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk (object := default) (conclusion := True)) True True (Or.inl True)) := by
    simp [bridgeClosed]

structure CharacterizationOfSetCategoryEvidence (C : CharacterizationOfSetCategory) where
  objectsAreSetsAndFunctionsClosed : C.objectsAreSetsAndFunctions
  universalityOfProductsClosed : C.universalityOfProducts
  universalityOfEqualizersClosed : C.universalityOfEqualizers
  characterizationCompleteClosed : C.characterizationComplete

def CharacterizationOfSetCategoryClosed (C : CharacterizationOfSetCategory) : Prop :=
  C.objectsAreSetsAndFunctions ∧ C.universalityOfProducts ∧
  C.universalityOfEqualizers ∧ C.characterizationComplete

theorem characterization_of_set_category_closed_from_evidence (C : CharacterizationOfSetCategory) (E : CharacterizationOfSetCategoryEvidence C) :
    CharacterizationOfSetCategoryClosed C := by
  repeat' apply And.intro
  · exact E.objectsAreSetsAndFunctionsClosed
  · exact E.universalityOfProductsClosed
  · exact E.universalityOfEqualizersClosed
  · exact E.characterizationCompleteClosed

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse