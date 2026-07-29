import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure SetsPackage where
  sets : Type u
  functions : Type v
  identityFunction : Prop
  compositionOfFunctions : Prop
  associativityOfComposition : Prop

structure SetsEvidence (S : SetsPackage) where
  identityFunctionClosed : S.identityFunction
  compositionOfFunctionsClosed : S.compositionOfFunctions
  associativityOfCompositionClosed : S.associativityOfComposition

def SetsClosed (S : SetsPackage) : Prop :=
  S.identityFunction ∧ S.compositionOfFunctions ∧ S.associativityOfComposition

theorem sets_closed_from_evidence (S : SetsPackage) (E : SetsEvidence S) :
    SetsClosed S := by
  exact And.intro E.identityFunctionClosed (And.intro E.compositionOfFunctionsClosed E.associativityOfCompositionClosed)

end CategoriesSetsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse
