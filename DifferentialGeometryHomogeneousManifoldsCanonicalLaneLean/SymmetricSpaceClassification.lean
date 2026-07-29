import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure SymmetricSpaceClassificationPackage {H : HomogeneousMetricPackage}
    {R : ReductiveDecompositionPackage H}
    {C : HomogeneousCurvaturePackage R} where
  locallySymmetric : Prop
  curvatureParallel : Prop
  cartanClassification : Prop
  irreducibleDecomposition : Prop

structure SymmetricSpaceClassificationEvidence {H : HomogeneousMetricPackage}
    {R : ReductiveDecompositionPackage H} {C : HomogeneousCurvaturePackage R}
    (S : SymmetricSpaceClassificationPackage C) where
  locallySymmetricClosed : S.locallySymmetric
  curvatureParallelClosed : S.curvatureParallel
  cartanClassificationClosed : S.cartanClassification
  irreducibleDecompositionClosed : S.irreducibleDecomposition

def SymmetricSpaceClassificationClosed {H : HomogeneousMetricPackage}
    {R : ReductiveDecompositionPackage H} {C : HomogeneousCurvaturePackage R}
    (S : SymmetricSpaceClassificationPackage C) : Prop :=
  S.locallySymmetric ∧ S.curvatureParallel ∧
  S.cartanClassification ∧ S.irreducibleDecomposition

theorem symmetric_space_classification_closed_from_evidence
    {H : HomogeneousMetricPackage} {R : ReductiveDecompositionPackage H}
    {C : HomogeneousCurvaturePackage R} (S : SymmetricSpaceClassificationPackage C)
    (E : SymmetricSpaceClassificationEvidence S) :
    SymmetricSpaceClassificationClosed S := by
  exact And.intro E.locallySymmetricClosed
    (And.intro E.curvatureParallelClosed
      (And.intro E.cartanClassificationClosed E.irreducibleDecompositionClosed))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse