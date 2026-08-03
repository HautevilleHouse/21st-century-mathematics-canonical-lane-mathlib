import TwentyFirstCenturyMathematicsCanonicalLaneLean.LinearProgrammingFramework

namespace HautevilleHouse
namespace TwentyFirstCenturyMathematicsCanonicalLaneLean

structure FlyspeckVerification where
  formalProof : Prop
  verifiedInequalities : LinearProgrammingBound → Prop
  certificateHash : String

def verificationComplete (F : FlyspeckVerification) : Prop :=
  F.formalProof

end TwentyFirstCenturyMathematicsCanonicalLaneLean
end HautevilleHouse