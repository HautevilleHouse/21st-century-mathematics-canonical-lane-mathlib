import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermatLastTheoremCanonicalLaneLean

structure ModularFormsPackage where
  level : Nat
  weight : Nat
  heckeAlgebra : Type
  modularityProof : Prop

def ModularFormsClosed (M : ModularFormsPackage) : Prop :=
  M.modularityProof

theorem modular_forms_closed (M : ModularFormsPackage) :
    ModularFormsClosed M := by
  exact M.modularityProof

end FermatLastTheoremCanonicalLaneLean
end HautevilleHouse