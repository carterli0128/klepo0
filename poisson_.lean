import mathlib.data.set.basic
import mathlib.measure_theory.measure
import mathlib.measure_theory.probability_space

namespace probability

structure SampleSpace (Ω : Type) where
  toType : Ω

structure EventSpace (Ω : Type) where
  toSet : set Ω

structure ProbabilitySpace (Ω : Type) (F : EventSpace Ω) where
  toFun : F.toSet → ℝ
  empty_prob : toFun ∅ = 0
  full_prob : toFun (set.univ : set Ω) = 1
  countable_additive : ∀ (A B : set Ω), (∀ i, i ∈ A → i ∉ B) → toFun (A ∪ B) = toFun A + toFun B

end probability
