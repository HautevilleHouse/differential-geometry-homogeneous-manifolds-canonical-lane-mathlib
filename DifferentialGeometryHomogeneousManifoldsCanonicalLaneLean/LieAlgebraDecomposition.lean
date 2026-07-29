import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure LieAlgebraDecompositionPackage where
  lieAlgebra : Type
  bracket : lieAlgebra → lieAlgebra → lieAlgebra
  reductiveDecomposition : Prop
  semisimplePart : Prop
  abelianPart : Prop
  killingFormNondegenerate : Prop
  decompositionCompatibility : Prop

structure LieAlgebraDecompositionEvidence (D : LieAlgebraDecompositionPackage) where
  reductiveDecompositionClosed : D.reductiveDecomposition
  semisimplePartClosed : D.semisimplePart
  abelianPartClosed : D.abelianPart
  killingFormNondegenerateClosed : D.killingFormNondegenerate
  decompositionCompatibilityClosed : D.decompositionCompatibility

def LieAlgebraDecompositionClosed (D : LieAlgebraDecompositionPackage) : Prop :=
  D.reductiveDecomposition ∧ D.semisimplePart ∧ D.abelianPart ∧
  D.killingFormNondegenerate ∧ D.decompositionCompatibility

theorem lie_algebra_decomposition_closed_from_evidence
    (D : LieAlgebraDecompositionPackage) (E : LieAlgebraDecompositionEvidence D) :
    LieAlgebraDecompositionClosed D := by
  exact And.intro E.reductiveDecompositionClosed
    (And.intro E.semisimplePartClosed
      (And.intro E.abelianPartClosed
        (And.intro E.killingFormNondegenerateClosed E.decompositionCompatibilityClosed)))

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse