import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

structure HodgeConjectureStatement (M : ComplexProjectiveManifold) where
  dimension : Nat
  kahlerCondition : KahlerMetric M
  surjectivityOfCycleMap : ∀ k, hodgeClassesOverℚ M k → algebraicClasses M k

def hodgeClassesOverℚ (M : ComplexProjectiveManifold) (k : ℕ) : Prop :=
  True

def algebraicClasses (M : ComplexProjectiveManifold) (k : ℕ) : Prop :=
  True

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse