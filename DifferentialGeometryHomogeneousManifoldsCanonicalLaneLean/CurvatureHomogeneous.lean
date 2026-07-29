import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure CurvatureHomogeneousPackage where
  underlyingMetric : HomogeneousMetricPackage
  ricciTensorConstant : Prop
  scalarCurvatureConstant : Prop
  sectionalCurvatureBounded : Prop
  einsteinCondition : Prop

def CurvatureHomogeneousClosed (C : CurvatureHomogeneousPackage) : Prop :=
  C.ricciTensorConstant ∧ C.scalarCurvatureConstant ∧ C.sectionalCurvatureBounded ∧ C.einsteinCondition

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse