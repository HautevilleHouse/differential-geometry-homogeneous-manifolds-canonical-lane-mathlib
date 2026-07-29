import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  transitiveGroupAction : Prop
  invariantMetric : Prop
  isotropyRepresentation : Prop
  reductionOfStructureGroup : Prop

def HomogeneousMetricClosed (H : HomogeneousMetricPackage) : Prop :=
  H.smoothStructure ∧ H.transitiveGroupAction ∧ H.invariantMetric ∧
  H.isotropyRepresentation ∧ H.reductionOfStructureGroup

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse