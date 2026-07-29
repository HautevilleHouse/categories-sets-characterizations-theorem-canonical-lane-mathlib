import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.SetTheoryFoundation

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CategoryAxioms where
  objectsFormClass : Prop
  morphismsFormClass : Prop
  identityMorphism : Prop
  compositionDefined : Prop
  associativityHolds : Prop
  identityLaws : Prop
  closureCondition : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk (object := default) (conclusion := True)) True True (Or.inl True)) := by
    simp [bridgeClosed]

structure CategoryAxiomsEvidence (C : CategoryAxioms) where
  objectsFormClassClosed : C.objectsFormClass
  morphismsFormClassClosed : C.morphismsFormClass
  identityMorphismClosed : C.identityMorphism
  compositionDefinedClosed : C.compositionDefined
  associativityHoldsClosed : C.associativityHolds
  identityLawsClosed : C.identityLaws

def CategoryAxiomsClosed (C : CategoryAxioms) : Prop :=
  C.objectsFormClass ∧ C.morphismsFormClass ∧ C.identityMorphism ∧
  C.compositionDefined ∧ C.associativityHolds ∧ C.identityLaws

theorem category_axioms_closed_from_evidence (C : CategoryAxioms) (E : CategoryAxiomsEvidence C) :
    CategoryAxiomsClosed C := by
  repeat' apply And.intro
  · exact E.objectsFormClassClosed
  · exact E.morphismsFormClassClosed
  · exact E.identityMorphismClosed
  · exact E.compositionDefinedClosed
  · exact E.associativityHoldsClosed
  · exact E.identityLawsClosed

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse