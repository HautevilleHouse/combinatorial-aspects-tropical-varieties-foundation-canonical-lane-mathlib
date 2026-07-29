import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalModuliPackage where
  genus : ℕ
  markedPoints : ℕ
  combinatorialType : List (List (ℕ × ℕ))
  moduliSpace : Type u
  dimensionFormula : Prop
  combinatoriallyComplete : Prop
  dimensionFormulaTerm : dimensionFormula
  combinatoriallyCompleteTerm : combinatoriallyComplete

def TropicalModuliClosed (P : TropicalModuliPackage) : Prop :=
  P.dimensionFormula ∧ P.combinatoriallyComplete

theorem tropical_moduli_closed_from_evidence
    (P : TropicalModuliPackage) (E : P.dimensionFormulaTerm ∧ P.combinatoriallyCompleteTerm) :
    TropicalModuliClosed P := by
  exact And.intro E.1 E.2

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse