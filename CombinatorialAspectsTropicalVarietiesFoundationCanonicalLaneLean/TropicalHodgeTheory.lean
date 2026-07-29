import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalHodgePackage where
  hodgeDecomposition : Prop
  hodgeNumbers : Prop
  poincareDuality : Prop
  hodgeTheoryClosed : Prop

structure TropicalHodgeEvidence (H : TropicalHodgePackage) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeNumbersClosed : H.hodgeNumbers
  poincareDualityClosed : H.poincareDuality
  hodgeTheoryClosedClosed : H.hodgeTheoryClosed

def TropicalHodgeClosed (H : TropicalHodgePackage) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeNumbers ∧ H.poincareDuality ∧ H.hodgeTheoryClosed

theorem tropical_hodge_closed_from_evidence (H : TropicalHodgePackage)
    (E : TropicalHodgeEvidence H) : TropicalHodgeClosed H := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.hodgeNumbersClosed
      (And.intro E.poincareDualityClosed E.hodgeTheoryClosedClosed))

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse