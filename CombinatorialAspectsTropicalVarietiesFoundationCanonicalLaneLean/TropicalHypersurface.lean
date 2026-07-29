import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalVarietiesFoundation

/-!
# Tropical Hypersurface Package

This module defines tropical hypersurfaces as the corner locus of tropical polynomials.
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalHypersurface (R : Type) [AddMonoid R] [Mul R] where
  polynomial : TropicalPolynomialSemiring R
  cornerLocus : Set (R × R)
  isCornerLocus : ∀ (pt : R × R), pt ∈ cornerLocus ↔ False

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse