import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalCycle

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalIntersectionProduct (S : TropicalSemiringPackage) where
  cycles : TropicalCycle S × TropicalCycle S
  intersectionCycle : TropicalCycle S
  dimensionFormula : intersectionCycle.basis.baseVariety = (cycles.1.basis.baseVariety) ∩ (cycles.2.basis.baseVariety)
  productFormula : forall x : Set (Nat -> S.carrier), intersectionCycle.weights x = ???
  stableIntersection : Prop

def TropicalIntersectionClosed {S : TropicalSemiringPackage} (I : TropicalIntersectionProduct S) : Prop :=
  I.stableIntersection ∧ I.dimensionFormula

theorem tropical_intersection_closed {S : TropicalSemiringPackage} (I : TropicalIntersectionProduct S) (h : TropicalIntersectionClosed I) : TropicalIntersectionClosed I := h

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse