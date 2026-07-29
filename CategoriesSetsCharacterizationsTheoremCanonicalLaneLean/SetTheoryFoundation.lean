import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure SetTheoryAxiom where
  axiomName : String
  statement : Prop
  consistentWithZFC : Prop
  closureCondition : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk (object := default) (conclusion := True)) True True (Or.inl True)) := by
    simp [bridgeClosed]

structure SetTheoryEvidence where
  axiom : SetTheoryAxiom
  statementClosed : axiom.statement
  consistentWithZFCClosed : axiom.consistentWithZFC

def SetTheoryAxiomClosed (S : SetTheoryAxiom) : Prop :=
  S.statement ∧ S.consistentWithZFC

theorem set_theory_axiom_closed_from_evidence (S : SetTheoryAxiom) (E : SetTheoryEvidence S) :
    SetTheoryAxiomClosed S := by
  exact And.intro E.statementClosed E.consistentWithZFCClosed

default instance : Inhabited AdmittedObject where
  default :=
    { space := PoincareSpace.mk Unit inferInstance
      closedThreeManifold := True
      simplyConnected := True
      sphereModel := Unit
      sphereTopology := inferInstance
      homeomorphicToSphere := True
      conclusion := True.intro
    }

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse