import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

structure SymmetricSpacePackage where
  homogeneousPackage : HomogeneousMetricPackage
  involutiveIsometry : Prop
  geodesicSymmetry : Prop
  curvatureParallel : Prop
  isotropyAction : Prop

def SymmetricSpaceClosed (S : SymmetricSpacePackage) : Prop :=
  S.involutiveIsometry ∧ S.geodesicSymmetry ∧ S.curvatureParallel ∧ S.isotropyAction

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse