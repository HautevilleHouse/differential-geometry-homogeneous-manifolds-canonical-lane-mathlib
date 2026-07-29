import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousCurvaturePackage {H : HomogeneousMetricPackage}
    {R : ReductiveDecompositionPackage H} where
  riemannCurvatureExpression : Prop
  ricciCurvatureConstantFormula : Prop
  scalarCurvatureConstant : Prop
  sectionalCurvatureConstant : Prop

structure HomogeneousCurvatureEvidence {H : HomogeneousMetricPackage}
    {R : ReductiveDecompositionPackage H}
    (C : HomogeneousCurvaturePackage R) where
  riemannCurvatureExpressionClosed : C.riemannCurvatureExpression
  ricciCurvatureConstantFormulaClosed : C.ricciCurvatureConstantFormula
  scalarCurvatureConstantClosed : C.scalarCurvatureConstant
  sectionalCurvatureConstantClosed : C.sectionalCurvatureConstant

def HomogeneousCurvatureClosed {H : HomogeneousMetricPackage}
    {R : ReductiveDecompositionPackage H}
    (C : HomogeneousCurvaturePackage R) : Prop :=
  C.riemannCurvatureExpression ∧ C.ricciCurvatureConstantFormula ∧
  C.scalarCurvatureConstant ∧ C.sectionalCurvatureConstant

theorem homogeneous_curvature_closed_from_evidence
    {H : HomogeneousMetricPackage} {R : ReductiveDecompositionPackage H}
    (C : HomogeneousCurvaturePackage R) (E : HomogeneousCurvatureEvidence C) :
    HomogeneousCurvatureClosed C := by
  exact And.intro E.riemannCurvatureExpressionClosed
    (And.intro E.ricciCurvatureConstantFormulaClosed
      (And.intro E.scalarCurvatureConstantClosed E.sectionalCurvatureConstantClosed))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse