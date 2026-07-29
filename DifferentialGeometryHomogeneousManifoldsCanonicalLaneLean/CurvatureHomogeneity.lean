import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean.InvariantConnection

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure CurvatureHomogeneityPackage {H : HomogeneousSpaceStructure}
    {C : InvariantConnectionPackage H} where
  ricciCurvatureConstant : Prop
  scalarCurvatureConstant : Prop
  sectionalCurvatureConstant : Prop
  einsteinMetricCondition : Prop
  ricciCurvatureConstantTerm : ricciCurvatureConstant
  scalarCurvatureConstantTerm : scalarCurvatureConstant
  sectionalCurvatureConstantTerm : sectionalCurvatureConstant
  einsteinMetricConditionTerm : einsteinMetricCondition

structure CurvatureHomogeneityEvidence {H : HomogeneousSpaceStructure}
    {C : InvariantConnectionPackage H} (K : CurvatureHomogeneityPackage C) where
  ricciCurvatureConstantClosed : K.ricciCurvatureConstant
  scalarCurvatureConstantClosed : K.scalarCurvatureConstant
  sectionalCurvatureConstantClosed : K.sectionalCurvatureConstant
  einsteinMetricConditionClosed : K.einsteinMetricCondition

def CurvatureHomogeneityClosed {H : HomogeneousSpaceStructure}
    {C : InvariantConnectionPackage H} (K : CurvatureHomogeneityPackage C) : Prop :=
  K.ricciCurvatureConstant ∧ K.scalarCurvatureConstant ∧
  K.sectionalCurvatureConstant ∧ K.einsteinMetricCondition

theorem curvature_homogeneity_closed_from_evidence {H : HomogeneousSpaceStructure}
    {C : InvariantConnectionPackage H} (K : CurvatureHomogeneityPackage C)
    (E : CurvatureHomogeneityEvidence K) : CurvatureHomogeneityClosed K := by
  exact And.intro E.ricciCurvatureConstantClosed (And.intro E.scalarCurvatureConstantClosed
    (And.intro E.sectionalCurvatureConstantClosed E.einsteinMetricConditionClosed))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse