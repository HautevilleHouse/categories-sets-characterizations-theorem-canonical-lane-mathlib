import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure SetCategoryPackage where
  setObjects : Type
  setMorphisms : Type
  functionComposition : Prop
  identityFunctions : Prop
  categoryAxioms : Prop

structure SetCategoryEvidence (S : SetCategoryPackage) where
  setObjectsClosed : S.setObjects
  setMorphismsClosed : S.setMorphisms
  functionCompositionClosed : S.functionComposition
  identityFunctionsClosed : S.identityFunctions
  categoryAxiomsClosed : S.categoryAxioms

def SetCategoryClosed (S : SetCategoryPackage) : Prop :=
  S.setObjects ∧ S.setMorphisms ∧ S.functionComposition ∧
  S.identityFunctions ∧ S.categoryAxioms

theorem set_category_closed_from_evidence
    (S : SetCategoryPackage) (E : SetCategoryEvidence S) :
    SetCategoryClosed S := by
  exact And.intro E.setObjectsClosed
    (And.intro E.setMorphismsClosed
      (And.intro E.functionCompositionClosed
        (And.intro E.identityFunctionsClosed E.categoryAxiomsClosed)))

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse