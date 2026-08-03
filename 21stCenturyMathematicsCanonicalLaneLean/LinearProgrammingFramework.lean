import TwentyFirstCenturyMathematicsCanonicalLaneLean.SpherePackingFramework

namespace HautevilleHouse
namespace TwentyFirstCenturyMathematicsCanonicalLaneLean

structure LinearProgrammingBound where
  inequalities : List (ℝ → ℝ)
  bound : ℝ
  feasible : Prop

def boundSatisfied (L : LinearProgrammingBound) (density : ℝ) : Prop :=
  density ≤ L.bound

end TwentyFirstCenturyMathematicsCanonicalLaneLean
end HautevilleHouse