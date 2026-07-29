import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure BundleConnectionPackage where
  baseManifold : Type u
  totalSpace : Type v
  structureGroup : Type w
  connectionForm : Prop
  curvatureForm : Prop
  holonomyGroup : Prop
  reductionToHolonomy : Prop

def BundleConnectionClosed (B : BundleConnectionPackage) : Prop :=
  B.connectionForm ∧ B.curvatureForm ∧ B.holonomyGroup ∧ B.reductionToHolonomy

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse