import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure IsotropyRepresentationPackage (H : HomogeneousMetricPackage) where
  isotropySubgroup : Type w
  isotropyAction : isotropySubgroup → TangentSpace H.manifold → TangentSpace H.manifold
  representationIrreducible : Prop
  holonomyReduction : Prop
  isotropyClosed : Prop

structure IsotropyRepresentationEvidence {H : HomogeneousMetricPackage}
    (I : IsotropyRepresentationPackage H) where
  representationIrreducibleClosed : I.representationIrreducible
  holonomyReductionClosed : I.holonomyReduction
  isotropyClosedClosed : I.isotropyClosed

def IsotropyRepresentationClosed {H : HomogeneousMetricPackage}
    (I : IsotropyRepresentationPackage H) : Prop :=
  I.representationIrreducible ∧ I.holonomyReduction ∧ I.isotropyClosed

theorem isotropy_representation_closed_from_evidence
    {H : HomogeneousMetricPackage} (I : IsotropyRepresentationPackage H)
    (E : IsotropyRepresentationEvidence I) : IsotropyRepresentationClosed I := by
  exact And.intro E.representationIrreducibleClosed
    (And.intro E.holonomyReductionClosed E.isotropyClosedClosed)

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse