import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean.TropicalSemiring

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalPolynomial (S : TropicalSemiringPackage) where
  monomials : List (S.carrier × List Nat)
  evaluate : (Nat -> S.carrier) -> S.carrier
  linearCombination : Prop
  evaluationConsistent : forall f : (Nat -> S.carrier), evaluate f = plusList (fun m => timesList (fun i => power (f i) (m.snd.get? i)))
  where
    plusList : List S.carrier -> S.carrier
    timesList : List S.carrier -> S.carrier
    power : S.carrier -> Nat -> S.carrier

def TropicalPolynomialClosed {S : TropicalSemiringPackage} (P : TropicalPolynomial S) : Prop :=
  P.linearCombination ∧ P.evaluationConsistent

theorem tropical_polynomial_closed {S : TropicalSemiringPackage} (P : TropicalPolynomial S) (h : TropicalPolynomialClosed P) : TropicalPolynomialClosed P := h

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse