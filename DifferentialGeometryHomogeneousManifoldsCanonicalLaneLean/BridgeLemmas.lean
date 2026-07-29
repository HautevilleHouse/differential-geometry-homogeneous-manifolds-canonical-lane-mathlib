import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HomogeneousManifoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometryHomogeneousManifoldsCanonicalLaneLean
end HautevilleHouse