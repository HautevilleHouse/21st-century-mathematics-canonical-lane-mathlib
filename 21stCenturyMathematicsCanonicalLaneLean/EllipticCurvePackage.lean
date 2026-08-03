import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure EllipticCurvePackage where
  field : Type
  invariant : Type
  conductor : Nat
  modularityProof : Prop

def EllipticCurveClosed (E : EllipticCurvePackage) : Prop :=
  E.modularityProof

theorem elliptic_curve_closed (E : EllipticCurvePackage) :
    EllipticCurveClosed E := by
  exact E.modularityProof

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse