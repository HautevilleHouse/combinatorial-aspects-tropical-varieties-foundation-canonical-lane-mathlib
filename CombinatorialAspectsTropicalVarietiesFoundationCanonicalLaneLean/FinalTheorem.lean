import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalVarietyStructure

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

def ConstrainedTropicalVarietyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tropical_variety_endgame (A : AdmissibleClass) :
    ConstrainedTropicalVarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse