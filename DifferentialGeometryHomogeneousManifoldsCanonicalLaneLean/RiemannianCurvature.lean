import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure RiemannianCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  homogeneousStructure : Prop
  metricHomogeneous : Prop
  riemannTensorLawful : Prop
  ricciTensorContractedFromRiemann : Prop
  scalarCurvatureTraceOfRicci : Prop

structure RiemannianCurvatureEvidence (G : RiemannianCurvaturePackage) where
  homogeneousStructureClosed : G.homogeneousStructure
  metricHomogeneousClosed : G.metricHomogeneous
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciTensorContractedFromRiemannClosed : G.ricciTensorContractedFromRiemann
  scalarCurvatureTraceOfRicciClosed : G.scalarCurvatureTraceOfRicci

def RiemannianCurvatureClosed (G : RiemannianCurvaturePackage) : Prop :=
  G.homogeneousStructure ∧
  G.metricHomogeneous ∧
  G.riemannTensorLawful ∧
  G.ricciTensorContractedFromRiemann ∧
  G.scalarCurvatureTraceOfRicci

theorem riemannian_curvature_closed_from_evidence
    (G : RiemannianCurvaturePackage) (E : RiemannianCurvatureEvidence G) :
    RiemannianCurvatureClosed G := by
  exact And.intro E.homogeneousStructureClosed
    (And.intro E.metricHomogeneousClosed
      (And.intro E.riemannTensorLawfulClosed
        (And.intro E.ricciTensorContractedFromRiemannClosed
          E.scalarCurvatureTraceOfRicciClosed)))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse