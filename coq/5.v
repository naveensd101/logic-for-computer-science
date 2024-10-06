Section Prop_Logic.
Variables a: Prop.
Theorem EX1: ~(a /\ ~a) :Prop.
Proof.
  autounfold. 
  intros H1.
  destruct H1 as [H2 H3].
  pose (H4 := H3 H2).
  exact H4.
Qed.