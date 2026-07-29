import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure InvariantConnectionPackage (M : HomogeneousSpace G H) where
  connectionType : Type u
  parallelTransport : Type v
  curvatureForm : Type w
  torsionForm : Type x
  invariantProperty : Prop
  connectionExists : invariantProperty

structure InvariantConnectionEvidence (M : HomogeneousSpace G H)
    (C : InvariantConnectionPackage M) where
  invariantPropertyClosed : C.invariantProperty
  connectionExistsClosed : C.connectionExists

def InvariantConnectionClosed (M : HomogeneousSpace G H)
    (C : InvariantConnectionPackage M) : Prop :=
  C.invariantProperty ∧ C.connectionExists

theorem invariant_connection_closed_from_evidence
    (M : HomogeneousSpace G H) (C : InvariantConnectionPackage M)
    (E : InvariantConnectionEvidence M C) : InvariantConnectionClosed M C :=
  And.intro E.invariantPropertyClosed E.connectionExistsClosed

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse
