import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalCycleClassPackage where
  cycleRepresentation : Prop
  fundamentalClass : Prop
  intersectionProduct : Prop
  cycleClassDefined : Prop

structure TropicalCycleClassEvidence (C : TropicalCycleClassPackage) where
  cycleRepresentationClosed : C.cycleRepresentation
  fundamentalClassClosed : C.fundamentalClass
  intersectionProductClosed : C.intersectionProduct
  cycleClassDefinedClosed : C.cycleClassDefined

def TropicalCycleClassClosed (C : TropicalCycleClassPackage) : Prop :=
  C.cycleRepresentation ∧ C.fundamentalClass ∧ C.intersectionProduct ∧ C.cycleClassDefined

theorem tropical_cycle_class_closed_from_evidence (C : TropicalCycleClassPackage)
    (E : TropicalCycleClassEvidence C) : TropicalCycleClassClosed C := by
  exact And.intro E.cycleRepresentationClosed
    (And.intro E.fundamentalClassClosed
      (And.intro E.intersectionProductClosed E.cycleClassDefinedClosed))

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse