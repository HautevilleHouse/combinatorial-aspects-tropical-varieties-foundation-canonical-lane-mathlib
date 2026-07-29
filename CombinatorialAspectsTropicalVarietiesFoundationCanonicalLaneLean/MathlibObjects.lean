import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TropicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TropicalAdmittedObject where
  space : TropicalSpace
  tropicalVarietyCondition : Prop
  endpointProp : Prop
  conclusion : endpointProp

def TropicalWitnessClosed (O : TropicalAdmittedObject) : Prop :=
  O.endpointProp

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse