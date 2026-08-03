import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure PvsNP_Package where
  polynomialTimeVerification : Prop
  circuitLowerBound : Prop
  completenessOfVerification : Prop
  nondeterministicPolynomial : Prop

structure PvsNP_Evidence (P : PvsNP_Package) where
  polynomialTimeVerificationClosed : P.polynomialTimeVerification
  circuitLowerBoundClosed : P.circuitLowerBound
  completenessOfVerificationClosed : P.completenessOfVerification
  nondeterministicPolynomialClosed : P.nondeterministicPolynomial

def PvsNP_Closed (P : PvsNP_Package) : Prop :=
  P.polynomialTimeVerification ∧ P.circuitLowerBound ∧ P.completenessOfVerification ∧ P.nondeterministicPolynomial

theorem pvsnp_closed_from_evidence (P : PvsNP_Package) (E : PvsNP_Evidence P) : PvsNP_Closed P := by
  exact And.intro E.polynomialTimeVerificationClosed (And.intro E.circuitLowerBoundClosed (And.intro E.completenessOfVerificationClosed E.nondeterministicPolynomialClosed))

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse