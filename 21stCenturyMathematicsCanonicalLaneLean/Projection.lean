import canonicalLaneMathlib.AdmissibleClass
import 21stCenturyMathematicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def keplerProjection : Projection KeplerEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem kepler_projection_idempotent (x : KeplerEndgameState) :
    keplerProjection.toFun (keplerProjection.toFun x) = keplerProjection.toFun x := by
  exact keplerProjection.idempotent x

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse