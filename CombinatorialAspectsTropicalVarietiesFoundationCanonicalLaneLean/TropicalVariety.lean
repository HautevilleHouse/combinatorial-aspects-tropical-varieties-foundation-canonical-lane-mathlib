import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalSemiring
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalHypersurface

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalVariety (R : Type) (S : TropicalSemiring R) where
  ambient : Type
  coordinateRing : Type
  equations : List (TropicalHypersurface R S)
  intersection : Set (TropicalHypersurface R S) → Set (TropicalHypersurface R S) -- intersection of hypersurfaces
  isCompleteIntersection : Prop
  dimension : Nat

structure TropicalVarietyEvidence (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) where
  intersection_closed : ∀ (H : Set (TropicalHypersurface R S)), V.intersection H = ⋂ h ∈ H, h.support
  isCompleteIntersection_closed : V.isCompleteIntersection
  dimension_nonneg : V.dimension ≥ 0

def TropicalVarietyClosed (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) : Prop :=
  (∀ (H : Set (TropicalHypersurface R S)), V.intersection H = ⋂ h ∈ H, h.support) ∧
  V.isCompleteIntersection ∧
  V.dimension ≥ 0

theorem tropical_variety_closed_from_evidence (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) (E : TropicalVarietyEvidence R S V) : TropicalVarietyClosed R S V :=
  And.intro E.intersection_closed (And.intro E.isCompleteIntersection_closed E.dimension_nonneg)

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse