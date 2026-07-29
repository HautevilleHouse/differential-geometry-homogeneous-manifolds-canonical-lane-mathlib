import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Type
  lieGroup : Type
  lieGroupAction : lieGroup → carrier → carrier
  transitiveAction : Prop
  isotropySubgroup : Prop
  homogeneousStructure : Prop

structure HomogeneousManifoldEvidence (M : HomogeneousManifoldSpace) where
  transitiveActionClosed : M.transitiveAction
  isotropySubgroupClosed : M.isotropySubgroup
  homogeneousStructureClosed : M.homogeneousStructure

def HomogeneousManifoldClosed (M : HomogeneousManifoldSpace) : Prop :=
  M.transitiveAction ∧ M.isotropySubgroup ∧ M.homogeneousStructure

theorem homogeneous_manifold_closed_from_evidence
    (M : HomogeneousManifoldSpace) (E : HomogeneousManifoldEvidence M) : HomogeneousManifoldClosed M := by
  exact And.intro E.transitiveActionClosed (And.intro E.isotropySubgroupClosed E.homogeneousStructureClosed)

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse