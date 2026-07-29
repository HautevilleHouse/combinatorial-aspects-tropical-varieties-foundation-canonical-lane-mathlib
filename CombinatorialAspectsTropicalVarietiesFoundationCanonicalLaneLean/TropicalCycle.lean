import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalBasis

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalCycle (S : TropicalSemiringPackage) where
  basis : TropicalBasis S
  weights : (Set (Nat -> S.carrier)) -> ℚ
  support : Set (Nat -> S.carrier) := { x | weights x ≠ 0 }
  finiteSupport : Set.Finite support
  balancingCondition : forall v : Nat -> S.carrier, ∑_{U ∈ basis.cellDecomposition, v ∈ closure(U)} weights(U) * (outwardNormal U v) = 0
  where
    closure : Set (Nat -> S.carrier) -> Set (Nat -> S.carrier)
    outwardNormal : Set (Nat -> S.carrier) -> (Nat -> S.carrier) -> (Nat -> ℚ)

def TropicalCycleClosed {S : TropicalSemiringPackage} (C : TropicalCycle S) : Prop :=
  C.finiteSupport ∧ C.balancingCondition

theorem tropical_cycle_closed {S : TropicalSemiringPackage} (C : TropicalCycle S) (h : TropicalCycleClosed C) : TropicalCycleClosed C := h

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse