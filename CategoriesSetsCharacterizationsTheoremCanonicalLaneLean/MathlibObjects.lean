import CategoriesSetsCharacterizationsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  object : Type
  conclusion : True

default instance : Inhabited AdmittedObject where
  default :=
    { object := Unit
      conclusion := True.intro
    }

def CategoriesWitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse