import TwentyFirstCenturyMathematicsCanonicalLaneLean.GateLemmas
import TwentyFirstCenturyMathematicsCanonicalLaneLean.FlyspeckVerificationFramework

namespace HautevilleHouse
namespace TwentyFirstCenturyMathematicsCanonicalLaneLean

def ConstrainedKeplerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_kepler_endgame (A : AdmissibleClass) :
    ConstrainedKeplerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwentyFirstCenturyMathematicsCanonicalLaneLean
end HautevilleHouse