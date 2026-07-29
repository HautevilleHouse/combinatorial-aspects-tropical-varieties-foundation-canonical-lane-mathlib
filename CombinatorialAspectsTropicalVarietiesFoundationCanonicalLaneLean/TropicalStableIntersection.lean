import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalVariety

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalStableIntersection (R : Type) (S : TropicalSemiring R) where
  varieties : List (TropicalVariety R S)
  intersection : TropicalVariety R S
  multiplicity : Nat → Nat  -- multiplicity_i = multiplicity of i-th variety in intersection
  isProper : Prop
  isTransverse : Prop
  stabilization : Prop

structure TropicalStableIntersectionEvidence (R : Type) (S : TropicalSemiring R) (I : TropicalStableIntersection R S) where
  isProper_closed : I.isProper
  isTransverse_closed : I.isTransverse
  stabilization_closed : I.stabilization

def TropicalStableIntersectionClosed (R : Type) (S : TropicalSemiring R) (I : TropicalStableIntersection R S) : Prop :=
  I.isProper ∧ I.isTransverse ∧ I.stabilization

theorem tropical_stable_intersection_closed_from_evidence (R : Type) (S : TropicalSemiring R) (I : TropicalStableIntersection R S) (E : TropicalStableIntersectionEvidence R S I) : TropicalStableIntersectionClosed R S I :=
  And.intro E.isProper_closed (And.intro E.isTransverse_closed E.stabilization_closed)

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse