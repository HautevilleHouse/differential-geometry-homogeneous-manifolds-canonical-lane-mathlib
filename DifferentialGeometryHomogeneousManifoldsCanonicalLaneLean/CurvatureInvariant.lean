import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure CurvatureInvariantPackage (M : HomogeneousSpace G H) where
  riemannCurvatureType : Type u
  ricciCurvatureType : Type v
  scalarCurvatureType : Type w
  sectionalCurvatureType : Type x
  curvatureInvariantProperty : Prop
  invariantComputed : curvatureInvariantProperty

structure CurvatureInvariantEvidence (M : HomogeneousSpace G H)
    (C : CurvatureInvariantPackage M) where
  curvatureInvariantPropertyClosed : C.curvatureInvariantProperty
  invariantComputedClosed : C.invariantComputed

def CurvatureInvariantClosed (M : HomogeneousSpace G H)
    (C : CurvatureInvariantPackage M) : Prop :=
  C.curvatureInvariantProperty ∧ C.invariantComputed

theorem curvature_invariant_closed_from_evidence
    (M : HomogeneousSpace G H) (C : CurvatureInvariantPackage M)
    (E : CurvatureInvariantEvidence M C) : CurvatureInvariantClosed M C :=
  And.intro E.curvatureInvariantPropertyClosed E.invariantComputedClosed

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse
