import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure RiemannHypothesis_Package where
  zeroFreeRegion : Prop
  explicitFormula : Prop
  functionalEquation : Prop
  primeNumberTheorem : Prop

structure RiemannHypothesis_Evidence (R : RiemannHypothesis_Package) where
  zeroFreeRegionClosed : R.zeroFreeRegion
  explicitFormulaClosed : R.explicitFormula
  functionalEquationClosed : R.functionalEquation
  primeNumberTheoremClosed : R.primeNumberTheorem

def RiemannHypothesis_Closed (R : RiemannHypothesis_Package) : Prop :=
  R.zeroFreeRegion ∧ R.explicitFormula ∧ R.functionalEquation ∧ R.primeNumberTheorem

theorem riemann_hypothesis_closed_from_evidence (R : RiemannHypothesis_Package) (E : RiemannHypothesis_Evidence R) : RiemannHypothesis_Closed R := by
  exact And.intro E.zeroFreeRegionClosed (And.intro E.explicitFormulaClosed (And.intro E.functionalEquationClosed E.primeNumberTheoremClosed))

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse