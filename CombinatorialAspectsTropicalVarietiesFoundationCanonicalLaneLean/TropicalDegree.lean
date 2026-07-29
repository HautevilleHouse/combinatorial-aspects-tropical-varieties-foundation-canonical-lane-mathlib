import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalDegreeData (V : TropicalVariety K) where
  degree : ℕ
  degreeComputedByTopologicalMethods : Prop
  balancedFanCondition : Prop
  multiplicityWeights : V.carrier → ℕ

def tropicalDegreeClosed (D : TropicalDegreeData V) : Prop :=
  D.balancedFanCondition ∧ D.degreeComputedByTopologicalMethods

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse