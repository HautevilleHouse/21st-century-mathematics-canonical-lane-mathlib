import TwentyFirstCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwentyFirstCenturyMathematicsCanonicalLaneLean

structure KeplerAdmittedObject where
  spherePacking : Type
  density : ℝ
  optimalDensity : Prop
  conclusion : optimalDensity

def KeplerWitnessClosed (O : KeplerAdmittedObject) : Prop :=
  O.optimalDensity

end TwentyFirstCenturyMathematicsCanonicalLaneLean
end HautevilleHouse