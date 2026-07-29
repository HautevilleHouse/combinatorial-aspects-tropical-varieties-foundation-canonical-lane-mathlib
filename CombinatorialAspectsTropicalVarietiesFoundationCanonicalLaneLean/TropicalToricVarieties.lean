import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalToricVarietyPackage where
  fan : Type u
  cones : List (List (Nat × Nat))
  integralStructure : Prop
  rayData : List (Nat × Nat)
  coneLattice : Prop
  integralStructureTerm : integralStructure
  coneLatticeTerm : coneLattice

structure TropicalToricVarietyEvidence (P : TropicalToricVarietyPackage) where
  integralStructureClosed : P.integralStructure
  coneLatticeClosed : P.coneLattice

def TropicalToricVarietyClosed (P : TropicalToricVarietyPackage) : Prop :=
  P.integralStructure ∧ P.coneLattice

theorem tropical_toric_variety_closed_from_evidence
    (P : TropicalToricVarietyPackage) (E : TropicalToricVarietyEvidence P) :
    TropicalToricVarietyClosed P := by
  exact And.intro E.integralStructureClosed E.coneLatticeClosed

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse