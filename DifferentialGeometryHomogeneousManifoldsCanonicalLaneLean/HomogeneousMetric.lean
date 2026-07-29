import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  lieGroup : Type v
  groupAction : lieGroup → manifold → manifold
  invariantMetric : Prop
  metricSmooth : Prop
  ricciCurvatureConstant : Prop

structure HomogeneousMetricEvidence (H : HomogeneousMetricPackage) where
  invariantMetricClosed : H.invariantMetric
  metricSmoothClosed : H.metricSmooth
  ricciCurvatureConstantClosed : H.ricciCurvatureConstant

def HomogeneousMetricClosed (H : HomogeneousMetricPackage) : Prop :=
  H.invariantMetric ∧ H.metricSmooth ∧ H.ricciCurvatureConstant

theorem homogeneous_metric_closed_from_evidence (H : HomogeneousMetricPackage)
    (E : HomogeneousMetricEvidence H) : HomogeneousMetricClosed H := by
  exact And.intro E.invariantMetricClosed
    (And.intro E.metricSmoothClosed E.ricciCurvatureConstantClosed)

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse