import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.CategoryAxioms

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CategoryOfSets where
  categoryAxioms : CategoryAxioms
  objectsAreSets : Prop
  morphismsAreFunctions : Prop
  identityIsIdentityFunction : Prop
  compositionIsFunctionComposition : Prop
  terminalObject : Prop
  initialObject : Prop
  closureCondition : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk (object := default) (conclusion := True)) True True (Or.inl True)) := by
    simp [bridgeClosed]

structure CategoryOfSetsEvidence (C : CategoryOfSets) where
  objectsAreSetsClosed : C.objectsAreSets
  morphismsAreFunctionsClosed : C.morphismsAreFunctions
  identityIsIdentityFunctionClosed : C.identityIsIdentityFunction
  compositionIsFunctionCompositionClosed : C.compositionIsFunctionComposition
  terminalObjectClosed : C.terminalObject
  initialObjectClosed : C.initialObject

def CategoryOfSetsClosed (C : CategoryOfSets) : Prop :=
  C.objectsAreSets ∧ C.morphismsAreFunctions ∧ C.identityIsIdentityFunction ∧
  C.compositionIsFunctionComposition ∧ C.terminalObject ∧ C.initialObject

theorem category_of_sets_closed_from_evidence (C : CategoryOfSets) (E : CategoryOfSetsEvidence C) :
    CategoryOfSetsClosed C := by
  repeat' apply And.intro
  · exact E.objectsAreSetsClosed
  · exact E.morphismsAreFunctionsClosed
  · exact E.identityIsIdentityFunctionClosed
  · exact E.compositionIsFunctionCompositionClosed
  · exact E.terminalObjectClosed
  · exact E.initialObjectClosed

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse