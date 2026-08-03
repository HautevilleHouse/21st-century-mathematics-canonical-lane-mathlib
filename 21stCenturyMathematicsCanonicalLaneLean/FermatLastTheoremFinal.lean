import FermatLastTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

def ConstrainedFermatClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem fermat_last_theorem_endgame (A : AdmissibleClass) :
    ConstrainedFermatClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse