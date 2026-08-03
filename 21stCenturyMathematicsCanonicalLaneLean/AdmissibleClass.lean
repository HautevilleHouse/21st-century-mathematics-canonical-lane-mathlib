import canonicalLaneMathlib.AdmissibleClass
import HodgeAdmittedObject

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : HodgeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HodgeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse