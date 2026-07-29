import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

def ConstrainedSetsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sets_endgame (A : AdmissibleClass) :
    ConstrainedSetsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse
