import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalBridgelandStability (V : TropicalVariety K) where
  stabilityFunction : V.carrier → ℝ
  wallCrossingStructure : Prop
  bdtDegenerations : Prop
  hearts : Set (Subcategory (Coh(V)))

def tropicalBridgelandClosed (B : TropicalBridgelandStability V) : Prop :=
  B.wallCrossingStructure ∧ B.bdtDegenerations

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse