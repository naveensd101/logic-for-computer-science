Section Predicate_Logic.
Variables D: Set.
Variables P Q: D -> Prop.
Hypothesis H: (forall x: D, P x /\ Q x).

Theorem F1: (forall x: D, P x) /\ (forall x: D, Q x).
Proof.
  split.
  intros t.
  pose(H1:= H t).
  destruct H1 as [H2 H3].
  exact H2.
  