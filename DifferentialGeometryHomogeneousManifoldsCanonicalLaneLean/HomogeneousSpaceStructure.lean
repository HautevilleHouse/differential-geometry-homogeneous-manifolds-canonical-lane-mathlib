import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousSpaceStructure where
  G : Type u
  H : Type v
  manifold : Type w
  groupAction : G → manifold → manifold
  transitive : Prop
  stabilizerSubgroup : Prop
  isotropyAction : Prop
  smoothStructure : Prop
  transitiveTerm : transitive
  stabilizerSubgroupTerm : stabilizerSubgroup
  isotropyActionTerm : isotropyAction
  smoothStructureTerm : smoothStructure

structure HomogeneousSpaceEvidence (H : HomogeneousSpaceStructure) where
  transitiveClosed : H.transitive
  stabilizerSubgroupClosed : H.stabilizerSubgroup
  isotropyActionClosed : H.isotropyAction
  smoothStructureClosed : H.smoothStructure

def HomogeneousSpaceClosed (H : HomogeneousSpaceStructure) : Prop :=
  H.transitive ∧ H.stabilizerSubgroup ∧ H.isotropyAction ∧ H.smoothStructure

theorem homogeneous_space_closed_from_evidence (H : HomogeneousSpaceStructure)
    (E : HomogeneousSpaceEvidence H) : HomogeneousSpaceClosed H := by
  exact And.intro E.transitiveClosed (And.intro E.stabilizerSubgroupClosed
    (And.intro E.isotropyActionClosed E.smoothStructureClosed))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse