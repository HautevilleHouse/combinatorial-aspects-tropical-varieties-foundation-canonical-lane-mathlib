import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalVariety

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalModifiedDualComplex (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) where
  vertices : Set (TropicalHypersurface R S)
  edges : Set (TropicalHypersurface R S × TropicalHypersurface R S)
  incidence : ∀ (v : TropicalHypersurface R S) (e : TropicalHypersurface R S × TropicalHypersurface R S), v ∈ vertices → (v ∈ {e.1, e.2}) → Prop
  modification : (TropicalHypersurface R S) -- added vertex for modified dual complex
  modificationIncluded : modification ∈ vertices

structure TropicalModifiedDualComplexEvidence (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) (D : TropicalModifiedDualComplex R S V) where
  vertex_incidence_closed : ∀ v e, D.incidence v e → (v ∈ D.vertices ∧ (v = e.1 ∨ v = e.2))
  modification_included_closed : D.modificationIncluded

def TropicalModifiedDualComplexClosed (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) (D : TropicalModifiedDualComplex R S V) : Prop :=
  (∀ v e, D.incidence v e → (v ∈ D.vertices ∧ (v = e.1 ∨ v = e.2))) ∧ D.modificationIncluded

theorem tropical_modified_dual_complex_closed_from_evidence (R : Type) (S : TropicalSemiring R) (V : TropicalVariety R S) (D : TropicalModifiedDualComplex R S V) (E : TropicalModifiedDualComplexEvidence R S V D) : TropicalModifiedDualComplexClosed R S V D :=
  And.intro E.vertex_incidence_closed E.modification_included_closed

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse