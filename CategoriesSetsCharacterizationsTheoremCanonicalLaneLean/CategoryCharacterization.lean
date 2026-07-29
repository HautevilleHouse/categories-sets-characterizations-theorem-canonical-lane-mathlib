import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsTheoremCanonicalLaneLean

structure CategoryCharacterizationPackage where
  objectsClassified : Prop
  morphismsClassified : Prop
  compositionLawful : Prop
  identityElements : Prop
  associativityHeld : Prop

structure CategoryCharacterizationEvidence (C : CategoryCharacterizationPackage) where
  objectsClassifiedClosed : C.objectsClassified
  morphismsClassifiedClosed : C.morphismsClassified
  compositionLawfulClosed : C.compositionLawful
  identityElementsClosed : C.identityElements
  associativityHeldClosed : C.associativityHeld

def CategoryCharacterizationClosed (C : CategoryCharacterizationPackage) : Prop :=
  C.objectsClassified ∧ C.morphismsClassified ∧ C.compositionLawful ∧
  C.identityElements ∧ C.associativityHeld

theorem category_characterization_closed_from_evidence
    (C : CategoryCharacterizationPackage) (E : CategoryCharacterizationEvidence C) :
    CategoryCharacterizationClosed C := by
  exact And.intro E.objectsClassifiedClosed
    (And.intro E.morphismsClassifiedClosed
      (And.intro E.compositionLawfulClosed
        (And.intro E.identityElementsClosed E.associativityHeldClosed)))

end CategoriesSetsCharacterizationsTheoremCanonicalLaneLean
end HautevilleHouse