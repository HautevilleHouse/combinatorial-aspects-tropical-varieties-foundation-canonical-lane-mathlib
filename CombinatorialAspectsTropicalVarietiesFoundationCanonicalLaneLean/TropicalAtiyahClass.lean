import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalCycleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalAtiyahClass (R : Type) (S : TropicalSemiring R) where
  tangentBundle : TropicalCycleClass R S  -- represents the tropical tangent bundle
  chernClasses : List (TropicalCycleClass R S)  -- list of Chern classes
  atiyahSequence : Prop
  exactness : Prop

structure TropicalAtiyahClassEvidence (R : Type) (S : TropicalSemiring R) (A : TropicalAtiyahClass R S) where
  atiyahSequence_closed : A.atiyahSequence
  exactness_closed : A.exactness

def TropicalAtiyahClassClosed (R : Type) (S : TropicalSemiring R) (A : TropicalAtiyahClass R S) : Prop :=
  A.atiyahSequence ∧ A.exactness

theorem tropical_atiyah_class_closed_from_evidence (R : Type) (S : TropicalSemiring R) (A : TropicalAtiyahClass R S) (E : TropicalAtiyahClassEvidence R S A) : TropicalAtiyahClassClosed R S A :=
  And.intro E.atiyahSequence_closed E.exactness_closed

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse