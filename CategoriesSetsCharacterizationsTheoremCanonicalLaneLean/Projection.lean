import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

def categoriesSetsProjection : Projection (AdmissibleClass) := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem categories_sets_projection_idempotent (x : AdmissibleClass) :
    categoriesSetsProjection.toFun (categoriesSetsProjection.toFun x) = categoriesSetsProjection.toFun x := by
  exact categoriesSetsProjection.idempotent x

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse
