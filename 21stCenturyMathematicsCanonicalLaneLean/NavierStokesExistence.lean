import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure NavierStokes_Package where
  globalRegularity : Prop
  uniquenessOfWeakSolution : Prop
  energyInequality : Prop
  pressureRegularity : Prop

structure NavierStokes_Evidence (N : NavierStokes_Package) where
  globalRegularityClosed : N.globalRegularity
  uniquenessOfWeakSolutionClosed : N.uniquenessOfWeakSolution
  energyInequalityClosed : N.energyInequality
  pressureRegularityClosed : N.pressureRegularity

def NavierStokes_Closed (N : NavierStokes_Package) : Prop :=
  N.globalRegularity ∧ N.uniquenessOfWeakSolution ∧ N.energyInequality ∧ N.pressureRegularity

theorem navier_stokes_closed_from_evidence (N : NavierStokes_Package) (E : NavierStokes_Evidence N) : NavierStokes_Closed N := by
  exact And.intro E.globalRegularityClosed (And.intro E.uniquenessOfWeakSolutionClosed (And.intro E.energyInequalityClosed E.pressureRegularityClosed))

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse