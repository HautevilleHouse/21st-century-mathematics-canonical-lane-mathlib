import canonicalLaneMathlib.AdmissibleClass
import 21stCenturyMathematicsCanonicalLaneLean.MathlibObjects

/-!
# Sphere Packing Constraints Package
-/

namespace HautevilleHouse
namespace 21stCenturyMathematicsCanonicalLaneLean

structure SpherePackingConstraintsPackage where
  voronoiCells : Prop
  linearProgrammingBounds : Prop
  localDensityBounds : Prop
  decompositionMethod : Prop

structure SpherePackingConstraintsEvidence (C : SpherePackingConstraintsPackage) where
  voronoiCellsClosed : C.voronoiCells
  linearProgrammingBoundsClosed : C.linearProgrammingBounds
  localDensityBoundsClosed : C.localDensityBounds
  decompositionMethodClosed : C.decompositionMethod

def SpherePackingConstraintsClosed (C : SpherePackingConstraintsPackage) : Prop :=
  C.voronoiCells ∧ C.linearProgrammingBounds ∧ C.localDensityBounds ∧ C.decompositionMethod

theorem sphere_packing_constraints_closed_from_evidence (C : SpherePackingConstraintsPackage)
    (E : SpherePackingConstraintsEvidence C) : SpherePackingConstraintsClosed C := by
  exact And.intro E.voronoiCellsClosed
    (And.intro E.linearProgrammingBoundsClosed
      (And.intro E.localDensityBoundsClosed E.decompositionMethodClosed))

end 21stCenturyMathematicsCanonicalLaneLean
end HautevilleHouse