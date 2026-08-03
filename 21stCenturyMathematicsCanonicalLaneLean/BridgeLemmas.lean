import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HodgeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse