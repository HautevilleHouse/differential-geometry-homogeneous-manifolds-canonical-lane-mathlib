import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure HomogeneousSpace (G : Type u) (H : Type v) where
  group : Group G
  subgroup : Subgroup G H
  manifold : Type w
  topology : TopologicalSpace manifold
  smoothStructure : SmoothManifold topology
  transitiveAction : GroupAction G manifold
  isotropyIsomorphic : AddGroup.Isomorphism (Stabilizer transitiveAction point) H

structure HomogeneousAdmittedObject where
  space : HomogeneousSpace G H
  compact : Prop
  homogeneous : Prop
  conclusion : compact ∧ homogeneous

structure HomogeneousEndgameState where
  object : HomogeneousAdmittedObject

def HomogeneousWitnessClosed (O : HomogeneousAdmittedObject) : Prop :=
  O.compact ∧ O.homogeneous

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse
