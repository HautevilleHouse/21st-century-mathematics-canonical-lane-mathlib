import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure Hodge_Package where
  rationalHodgeClasses : Prop
  algebraicCycles : Prop
  topologicalLefschetz : Prop
  cohomologyComparison : Prop

structure Hodge_Evidence (H : Hodge_Package) where
  rationalHodgeClassesClosed : H.rationalHodgeClasses
  algebraicCyclesClosed : H.algebraicCycles
  topologicalLefschetzClosed : H.topologicalLefschetz
  cohomologyComparisonClosed : H.cohomologyComparison

def Hodge_Closed (H : Hodge_Package) : Prop :=
  H.rationalHodgeClasses ∧ H.algebraicCycles ∧ H.topologicalLefschetz ∧ H.cohomologyComparison

theorem hodge_closed_from_evidence (H : Hodge_Package) (E : Hodge_Evidence H) : Hodge_Closed H := by
  exact And.intro E.rationalHodgeClassesClosed (And.intro E.algebraicCyclesClosed (And.intro E.topologicalLefschetzClosed E.cohomologyComparisonClosed))

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse