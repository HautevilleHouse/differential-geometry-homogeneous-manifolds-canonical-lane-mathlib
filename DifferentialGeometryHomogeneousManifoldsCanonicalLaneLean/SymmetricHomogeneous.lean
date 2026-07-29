import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure SymmetricHomogeneousPackage where
  homogeneousSpace : HomogeneousManifoldSpace
  symmetricCondition : Prop
  geodesicSymmetry : Prop
  cartanInvolution : Prop
  riemannianSymmetric : Prop
  curvatureParallel : Prop

structure SymmetricHomogeneousEvidence
    {M : HomogeneousManifoldSpace} (S : SymmetricHomogeneousPackage M) where
  symmetricConditionClosed : S.symmetricCondition
  geodesicSymmetryClosed : S.geodesicSymmetry
  cartanInvolutionClosed : S.cartanInvolution
  riemannianSymmetricClosed : S.riemannianSymmetric
  curvatureParallelClosed : S.curvatureParallel

def SymmetricHomogeneousClosed
    {M : HomogeneousManifoldSpace} (S : SymmetricHomogeneousPackage M) : Prop :=
  S.symmetricCondition ∧ S.geodesicSymmetry ∧ S.cartanInvolution ∧
  S.riemannianSymmetric ∧ S.curvatureParallel

theorem symmetric_homogeneous_closed_from_evidence
    {M : HomogeneousManifoldSpace} (S : SymmetricHomogeneousPackage M)
    (E : SymmetricHomogeneousEvidence S) : SymmetricHomogeneousClosed S := by
  exact And.intro E.symmetricConditionClosed
    (And.intro E.geodesicSymmetryClosed
      (And.intro E.cartanInvolutionClosed
        (And.intro E.riemannianSymmetricClosed E.curvatureParallelClosed)))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse