import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure PresheafPackage where
  functorAssigned : Prop
  restrictionMaps : Prop
  functoriality : Prop
  identityPreserved : Prop
  compositionPreserved : Prop

structure PresheafEvidence (P : PresheafPackage) where
  functorAssignedClosed : P.functorAssigned
  restrictionMapsClosed : P.restrictionMaps
  functorialityClosed : P.functoriality
  identityPreservedClosed : P.identityPreserved
  compositionPreservedClosed : P.compositionPreserved

def PresheafClosed (P : PresheafPackage) : Prop :=
  P.functorAssigned ∧ P.restrictionMaps ∧ P.functoriality ∧
  P.identityPreserved ∧ P.compositionPreserved

theorem presheaf_closed_from_evidence
    (P : PresheafPackage) (E : PresheafEvidence P) :
    PresheafClosed P := by
  exact And.intro E.functorAssignedClosed
    (And.intro E.restrictionMapsClosed
      (And.intro E.functorialityClosed
        (And.intro E.identityPreservedClosed E.compositionPreservedClosed)))

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse