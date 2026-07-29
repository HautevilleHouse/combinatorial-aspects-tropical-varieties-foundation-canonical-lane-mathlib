import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalAmoebaPackage where
  polynomial : Type u
  amoeba : Set (ℝ × ℝ)
  tropicalizationMap : Type v
  imageCovered : Prop
  spineDefined : Prop
  imageCoveredTerm : imageCovered
  spineDefinedTerm : spineDefined

def TropicalAmoebaClosed (P : TropicalAmoebaPackage) : Prop :=
  P.imageCovered ∧ P.spineDefined

theorem tropical_amoeba_closed_from_evidence
    (P : TropicalAmoebaPackage) (E : P.imageCoveredTerm ∧ P.spineDefinedTerm) :
    TropicalAmoebaClosed P := by
  exact And.intro E.1 E.2

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse