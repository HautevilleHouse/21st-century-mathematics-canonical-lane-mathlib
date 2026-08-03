import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure KeplerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure KeplerConjectureObject where
  space : KeplerSpace
  dimensionThree : Prop
  packingDensityOptimal : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  densityBound : Prop
  conclusion : densityBound

structure KeplerEndgameState where
  object : KeplerConjectureObject

def KeplerWitnessClosed (O : KeplerConjectureObject) : Prop :=
  O.densityBound

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse