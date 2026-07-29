import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousConnectionPackage where
  lieGroup : Type u
  homogeneousSpace : Type v
  isotropyRepresentation : Type w
  invariantConnection : Type x
  curvatureTransformation : Type y
  reductiveDecomposition : Prop
  connectionInvariant : Prop
  curvatureInvariant : Prop

structure HomogeneousConnectionEvidence (C : HomogeneousConnectionPackage) where
  reductiveDecompositionClosed : C.reductiveDecomposition
  connectionInvariantClosed : C.connectionInvariant
  curvatureInvariantClosed : C.curvatureInvariant

def HomogeneousConnectionClosed (C : HomogeneousConnectionPackage) : Prop :=
  C.reductiveDecomposition ∧
  C.connectionInvariant ∧
  C.curvatureInvariant

theorem homogeneous_connection_closed_from_evidence
    (C : HomogeneousConnectionPackage) (E : HomogeneousConnectionEvidence C) :
    HomogeneousConnectionClosed C := by
  exact And.intro E.reductiveDecompositionClosed
    (And.intro E.connectionInvariantClosed E.curvatureInvariantClosed)

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse