import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalIntersectionPackage where
  intersectionMultiplicity : Prop
  stableIntersection : Prop
  excessIntersection : Prop
  intersectionTheoryClosed : Prop

structure TropicalIntersectionEvidence (I : TropicalIntersectionPackage) where
  intersectionMultiplicityClosed : I.intersectionMultiplicity
  stableIntersectionClosed : I.stableIntersection
  excessIntersectionClosed : I.excessIntersection
  intersectionTheoryClosedClosed : I.intersectionTheoryClosed

def TropicalIntersectionClosed (I : TropicalIntersectionPackage) : Prop :=
  I.intersectionMultiplicity ∧ I.stableIntersection ∧ I.excessIntersection ∧ I.intersectionTheoryClosed

theorem tropical_intersection_closed_from_evidence (I : TropicalIntersectionPackage)
    (E : TropicalIntersectionEvidence I) : TropicalIntersectionClosed I := by
  exact And.intro E.intersectionMultiplicityClosed
    (And.intro E.stableIntersectionClosed
      (And.intro E.excessIntersectionClosed E.intersectionTheoryClosedClosed))

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse