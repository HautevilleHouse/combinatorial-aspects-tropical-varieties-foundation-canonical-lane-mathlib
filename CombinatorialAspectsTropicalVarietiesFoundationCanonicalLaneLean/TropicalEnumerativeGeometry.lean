import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalEnumerativePackage where
  curveCounting : Prop
  gromovWittenInvariants : Prop
  correspondenceTheorem : Prop
  enumerativeGeometryClosed : Prop

structure TropicalEnumerativeEvidence (E : TropicalEnumerativePackage) where
  curveCountingClosed : E.curveCounting
  gromovWittenInvariantsClosed : E.gromovWittenInvariants
  correspondenceTheoremClosed : E.correspondenceTheorem
  enumerativeGeometryClosedClosed : E.enumerativeGeometryClosed

def TropicalEnumerativeClosed (E : TropicalEnumerativePackage) : Prop :=
  E.curveCounting ∧ E.gromovWittenInvariants ∧ E.correspondenceTheorem ∧ E.enumerativeGeometryClosed

theorem tropical_enumerative_closed_from_evidence (E : TropicalEnumerativePackage)
    (Ev : TropicalEnumerativeEvidence E) : TropicalEnumerativeClosed E := by
  exact And.intro Ev.curveCountingClosed
    (And.intro Ev.gromovWittenInvariantsClosed
      (And.intro Ev.correspondenceTheoremClosed Ev.enumerativeGeometryClosedClosed))

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse