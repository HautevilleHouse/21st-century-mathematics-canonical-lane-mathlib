import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

structure ComplexProjectiveManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  projectiveEmbedding : ProjectiveEmbedding carrier
  smoothProjective : Prop

default instance : Inhabited ComplexProjectiveManifold := ⟨{
  carrier := ℂⁿ,
  topology := inferInstance,
  complexStructure := inferInstance,
  projectiveEmbedding := default,
  smoothProjective := True
}⟩

structure HodgeAdmittedObject where
  manifold : ComplexProjectiveManifold
  dimension : Nat
  kahlerMetric : KahlerMetric manifold
  hodgeDecomposition : HodgeDecomposition manifold
  conclusion : HodgeConjectureStatement manifold

structure HodgeEndgameState where
  object : HodgeAdmittedObject

def HodgeWitnessClosed (O : HodgeAdmittedObject) : Prop :=
  O.conclusion

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse