import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure CurvatureInvariantsPackage where
  sectionalCurvature : Type u
  ricciInvariant : Type v
  scalarCurvature : Type w
  weylTensor : Type x
  einsteinCondition : Prop
  constantSectionalCurvature : Prop
  ricciParallel : Prop

structure CurvatureInvariantsEvidence (I : CurvatureInvariantsPackage) where
  einsteinConditionClosed : I.einsteinCondition
  constantSectionalCurvatureClosed : I.constantSectionalCurvature
  ricciParallelClosed : I.ricciParallel

def CurvatureInvariantsClosed (I : CurvatureInvariantsPackage) : Prop :=
  I.einsteinCondition ∧
  I.constantSectionalCurvature ∧
  I.ricciParallel

theorem curvature_invariants_closed_from_evidence
    (I : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence I) :
    CurvatureInvariantsClosed I := by
  exact And.intro E.einsteinConditionClosed
    (And.intro E.constantSectionalCurvatureClosed E.ricciParallelClosed)

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse