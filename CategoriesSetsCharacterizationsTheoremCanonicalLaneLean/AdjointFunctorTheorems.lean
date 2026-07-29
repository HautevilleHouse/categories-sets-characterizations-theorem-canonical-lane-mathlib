import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.CanonicalSetsObjects

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitCounitIdentities : Prop
  freydAdjunction : Prop
  solutionSetCondition : Prop

structure AdjointFunctorEvidence (P : AdjointFunctorPackage) where
  leftAdjointExistsClosed : P.leftAdjointExists
  rightAdjointExistsClosed : P.rightAdjointExists
  unitCounitIdentitiesClosed : P.unitCounitIdentities
  freydAdjunctionClosed : P.freydAdjunction
  solutionSetConditionClosed : P.solutionSetCondition

def AdjointFunctorClosed (P : AdjointFunctorPackage) : Prop :=
  P.leftAdjointExists ∧ P.rightAdjointExists ∧
  P.unitCounitIdentities ∧ P.freydAdjunction ∧ P.solutionSetCondition

theorem adjoint_functor_closed_from_evidence (P : AdjointFunctorPackage) (E : AdjointFunctorEvidence P) :
    AdjointFunctorClosed P := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed
      (And.intro E.unitCounitIdentitiesClosed
        (And.intro E.freydAdjunctionClosed E.solutionSetConditionClosed)))

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse