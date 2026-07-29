import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalBasis (K : Type) [Field K] (V : TropicalVariety K) where
  generators : Set (Polynomial (K[Trop]))
  generatesVanishingIdeal : vanishingIdeal V = Ideal.generated generators
  finite : Finset generators

def tropicalBasisClosed (B : TropicalBasis K V) : Prop :=
  B.finite

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse