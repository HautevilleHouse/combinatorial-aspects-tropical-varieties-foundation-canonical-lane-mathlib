import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalVariety

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalCycleClass (R : Type) (S : TropicalSemiring R) where
  variety : TropicalVariety R S
  coefficient : R
  degree : Nat
  isEffective : Prop

structure TropicalCycleClassEvidence (R : Type) (S : TropicalSemiring R) (C : TropicalCycleClass R S) where
  coefficient_nonzero : C.coefficient ≠ S.zero
  isEffective_closed : C.isEffective

def TropicalCycleClassClosed (R : Type) (S : TropicalSemiring R) (C : TropicalCycleClass R S) : Prop :=
  C.coefficient ≠ S.zero ∧ C.isEffective

theorem tropical_cycle_class_closed_from_evidence (R : Type) (S : TropicalSemiring R) (C : TropicalCycleClass R S) (E : TropicalCycleClassEvidence R S C) : TropicalCycleClassClosed R S C :=
  And.intro E.coefficient_nonzero E.isEffective_closed

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse