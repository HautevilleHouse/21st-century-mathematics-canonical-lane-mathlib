import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure FermatAdmittedObject where
  ellipticCurve : Type
  modularForm : Type
  galoisRepresentation : Type
  modularityTheoremAssumption : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : FermatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FermatWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse