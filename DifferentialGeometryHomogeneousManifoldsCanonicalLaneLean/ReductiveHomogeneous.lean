import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure ReductiveHomogeneousPackage where
  homogeneousSpace : HomogeneousManifoldSpace
  lieAlgebraDecomposition : LieAlgebraDecompositionPackage
  reductiveCondition : Prop
  isotropyRepresentation : Prop
  invariantMetricExists : Prop
  adjointActionDecomposes : Prop

structure ReductiveHomogeneousEvidence
    {M : HomogeneousManifoldSpace} {D : LieAlgebraDecompositionPackage}
    (R : ReductiveHomogeneousPackage M D) where
  reductiveConditionClosed : R.reductiveCondition
  isotropyRepresentationClosed : R.isotropyRepresentation
  invariantMetricExistsClosed : R.invariantMetricExists
  adjointActionDecomposesClosed : R.adjointActionDecomposes

def ReductiveHomogeneousClosed
    {M : HomogeneousManifoldSpace} {D : LieAlgebraDecompositionPackage}
    (R : ReductiveHomogeneousPackage M D) : Prop :=
  R.reductiveCondition ∧ R.isotropyRepresentation ∧
  R.invariantMetricExists ∧ R.adjointActionDecomposes

theorem reductive_homogeneous_closed_from_evidence
    {M : HomogeneousManifoldSpace} {D : LieAlgebraDecompositionPackage}
    (R : ReductiveHomogeneousPackage M D) (E : ReductiveHomogeneousEvidence R) :
    ReductiveHomogeneousClosed R := by
  exact And.intro E.reductiveConditionClosed
    (And.intro E.isotropyRepresentationClosed
      (And.intro E.invariantMetricExistsClosed E.adjointActionDecomposesClosed))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse