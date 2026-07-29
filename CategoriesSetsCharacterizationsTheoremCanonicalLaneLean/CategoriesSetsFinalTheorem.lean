import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

def ConstrainedCategoriesSetsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categories_sets_endgame (A : AdmissibleClass) :
    ConstrainedCategoriesSetsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSetsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse
