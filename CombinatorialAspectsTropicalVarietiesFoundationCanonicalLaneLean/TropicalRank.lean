import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalRankFunction (V : TropicalVariety K) where
  rankMap : V.carrier → ℕ
  upperSemicontinuous : ∀ x, ∃ U ∈ nhds x, ∀ y ∈ U, rankMap y ≤ rankMap x
  constantOnIrreducibleComponents : ∀ C ∈ irreducibleComponents V, ∀ x y ∈ C, rankMap x = rankMap y

def tropicalRankClosed (R : TropicalRankFunction V) : Prop :=
  R.upperSemicontinuous ∧ R.constantOnIrreducibleComponents

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse