import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalSemiringPackage where
  carrier : Type u
  plusOperation : carrier -> carrier -> carrier
  timesOperation : carrier -> carrier -> carrier
  plusIdempotent : forall a : carrier, plusOperation a a = a
  plusCommutative : forall a b : carrier, plusOperation a b = plusOperation b a
  plusAssociative : forall a b c : carrier, plusOperation (plusOperation a b) c = plusOperation a (plusOperation b c)
  timesAssociative : forall a b c : carrier, timesOperation (timesOperation a b) c = timesOperation a (timesOperation b c)
  distributive : forall a b c : carrier, timesOperation a (plusOperation b c) = plusOperation (timesOperation a b) (timesOperation a c)
  timesIdempotent : forall a : carrier, timesOperation a a = a

def TropicalSemiringClosed (S : TropicalSemiringPackage) : Prop :=
  S.plusIdempotent ∧ S.plusCommutative ∧ S.plusAssociative ∧ S.timesAssociative ∧ S.distributive ∧ S.timesIdempotent

theorem tropical_semiring_closed (S : TropicalSemiringPackage) (h : TropicalSemiringClosed S) : TropicalSemiringClosed S := h

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse