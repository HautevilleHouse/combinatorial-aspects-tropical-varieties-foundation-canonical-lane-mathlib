import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalHypersurface

/-!
# Tropical Variety Structure Package

This module defines tropical varieties as intersections of tropical hypersurfaces.
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalVariety (R : Type) [AddMonoid R] [Mul R] where
  hypersurfaces : List (TropicalHypersurface R)
  intersectionLocus : Set (R × R)
  isIntersection : intersectionLocus = ⋂ H ∈ hypersurfaces, H.cornerLocus

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse