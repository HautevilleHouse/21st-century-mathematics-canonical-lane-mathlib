import FermatLastTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

def FermatWitnessClosed (O : FermatAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FermatWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse