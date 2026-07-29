import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CategoriesPackage where
  category : Type u
  objects : Type v
  morphisms : Type w
  composition : Prop
  identities : Prop
  associativity : Prop

structure CategoriesEvidence (C : CategoriesPackage) where
  compositionClosed : C.composition
  identitiesClosed : C.identities
  associativityClosed : C.associativity

def CategoriesClosed (C : CategoriesPackage) : Prop :=
  C.composition ∧ C.identities ∧ C.associativity

theorem categories_closed_from_evidence (C : CategoriesPackage) (E : CategoriesEvidence C) :
    CategoriesClosed C := by
  exact And.intro E.compositionClosed (And.intro E.identitiesClosed E.associativityClosed)

end CategoriesSetsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse
