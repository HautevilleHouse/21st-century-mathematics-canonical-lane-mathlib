import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure BSD_Package where
  rankFormula : Prop
  analyticContinuation : Prop
  functionalEquation : Prop
  TamagawaNumbers : Prop

structure BSD_Evidence (B : BSD_Package) where
  rankFormulaClosed : B.rankFormula
  analyticContinuationClosed : B.analyticContinuation
  functionalEquationClosed : B.functionalEquation
  TamagawaNumbersClosed : B.TamagawaNumbers

def BSD_Closed (B : BSD_Package) : Prop :=
  B.rankFormula ∧ B.analyticContinuation ∧ B.functionalEquation ∧ B.TamagawaNumbers

theorem bsd_closed_from_evidence (B : BSD_Package) (E : BSD_Evidence B) : BSD_Closed B := by
  exact And.intro E.rankFormulaClosed (And.intro E.analyticContinuationClosed (And.intro E.functionalEquationClosed E.TamagawaNumbersClosed))

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse