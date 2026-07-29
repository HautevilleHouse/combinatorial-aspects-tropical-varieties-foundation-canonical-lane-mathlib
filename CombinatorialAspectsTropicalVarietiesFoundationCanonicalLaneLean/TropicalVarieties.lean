import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalPolynomials

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalVariety (S : TropicalSemiringPackage) where
  definingPolynomials : List (TropicalPolynomial S)
  pointSet : Set (Nat -> S.carrier)
  commonZeroSet : pointSet = { x : Nat -> S.carrier | forall p in definingPolynomials, p.evaluate x = 0 }
  reducedness : Prop
  irreducibility : Prop

def TropicalVarietyClosed {S : TropicalSemiringPackage} (V : TropicalVariety S) : Prop :=
  V.reducedness ∧ V.irreducibility

theorem tropical_variety_closed {S : TropicalSemiringPackage} (V : TropicalVariety S) (h : TropicalVarietyClosed V) : TropicalVarietyClosed V := h

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse