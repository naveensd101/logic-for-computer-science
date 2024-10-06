Section Prop_Logic.
Variables p q r: Prop.
Hypothesis H1: q->r :Prop.
Theorem EX1: (p \/ q) -> (p\/r) :Prop.
Proof.
  intros H2.
  destruct H2 as [H3|H4].
  left.
    exact H3.
  pose (H5 := H1 H4).
  right.
    exact H5.
Qed.