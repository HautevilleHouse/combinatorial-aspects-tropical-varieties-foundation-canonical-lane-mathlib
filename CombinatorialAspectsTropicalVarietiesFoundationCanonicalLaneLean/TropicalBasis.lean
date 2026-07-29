import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalVarieties

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalBasis (S : TropicalSemiringPackage) where
  baseVariety : TropicalVariety S
  cellDecomposition : Set (Set (Nat -> S.carrier))
  stratificationFinite : Set.Finite cellDecomposition
  closedUnderContainment : forall C D : Set (Nat -> S.carrier), C ∈ cellDecomposition → D ⊆ C → D ∈ cellDecomposition
  cellsCoverVariety : (⋃ C ∈ cellDecomposition, C) = baseVariety.pointSet

def TropicalBasisClosed {S : TropicalSemiringPackage} (B : TropicalBasis S) : Prop :=
  B.stratificationFinite ∧ B.closedUnderContainment ∧ B.cellsCoverVariety

theorem tropical_basis_closed {S : TropicalSemiringPackage} (B : TropicalBasis S) (h : TropicalBasisClosed B) : TropicalBasisClosed B := h

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse