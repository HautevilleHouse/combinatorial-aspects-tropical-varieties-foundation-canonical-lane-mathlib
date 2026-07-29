import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean

structure TropicalModuliPackage where
  parameterSpace : Type
  moduliStack : Prop
  deformationFamily : Prop
  moduliSpaceDefined : Prop

structure TropicalModuliEvidence (M : TropicalModuliPackage) where
  parameterSpaceClosed : M.parameterSpace
  moduliStackClosed : M.moduliStack
  deformationFamilyClosed : M.deformationFamily
  moduliSpaceDefinedClosed : M.moduliSpaceDefined

def TropicalModuliClosed (M : TropicalModuliPackage) : Prop :=
  M.parameterSpace ∧ M.moduliStack ∧ M.deformationFamily ∧ M.moduliSpaceDefined

theorem tropical_moduli_closed_from_evidence (M : TropicalModuliPackage)
    (E : TropicalModuliEvidence M) : TropicalModuliClosed M := by
  exact And.intro E.parameterSpaceClosed
    (And.intro E.moduliStackClosed
      (And.intro E.deformationFamilyClosed E.moduliSpaceDefinedClosed))

end CombinatorialAspectsTropicalVarietiesFoundationCanonicalLaneLean
end HautevilleHouse