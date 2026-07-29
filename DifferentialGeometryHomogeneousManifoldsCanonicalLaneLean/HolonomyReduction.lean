import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HolonomyReductionPackage where
  holonomyGroup : Type u
  reducedHolonomy : Type v
  deRhamDecomposition : Type w
  locallyReducible : Prop
  holonomyReductive : Prop
  decompositionTrivial : Prop

structure HolonomyReductionEvidence (H : HolonomyReductionPackage) where
  locallyReducibleClosed : H.locallyReducible
  holonomyReductiveClosed : H.holonomyReductive
  decompositionTrivialClosed : H.decompositionTrivial

def HolonomyReductionClosed (H : HolonomyReductionPackage) : Prop :=
  H.locallyReducible ∧
  H.holonomyReductive ∧
  H.decompositionTrivial

theorem holonomy_reduction_closed_from_evidence
    (H : HolonomyReductionPackage) (E : HolonomyReductionEvidence H) :
    HolonomyReductionClosed H := by
  exact And.intro E.locallyReducibleClosed
    (And.intro E.holonomyReductiveClosed E.decompositionTrivialClosed)

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse