import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure ReductiveDecompositionPackage (H : HomogeneousMetricPackage) where
  lieAlgebraDecomposition : Prop
  reductiveComplement : Prop
  adjointActionClosed : Prop
  curvatureTensorBianchi : Prop

structure ReductiveDecompositionEvidence {H : HomogeneousMetricPackage}
    (R : ReductiveDecompositionPackage H) where
  lieAlgebraDecompositionClosed : R.lieAlgebraDecomposition
  reductiveComplementClosed : R.reductiveComplement
  adjointActionClosedClosed : R.adjointActionClosed
  curvatureTensorBianchiClosed : R.curvatureTensorBianchi

def ReductiveDecompositionClosed {H : HomogeneousMetricPackage}
    (R : ReductiveDecompositionPackage H) : Prop :=
  R.lieAlgebraDecomposition ∧ R.reductiveComplement ∧
  R.adjointActionClosed ∧ R.curvatureTensorBianchi

theorem reductive_decomposition_closed_from_evidence
    {H : HomogeneousMetricPackage} (R : ReductiveDecompositionPackage H)
    (E : ReductiveDecompositionEvidence R) : ReductiveDecompositionClosed R := by
  exact And.intro E.lieAlgebraDecompositionClosed
    (And.intro E.reductiveComplementClosed
      (And.intro E.adjointActionClosedClosed E.curvatureTensorBianchiClosed))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse