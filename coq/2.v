Section Proppositional_Logic.
Variables p q r :Prop.
Hypothesis H1: p :Prop.
Hypothesis H2: p->q :Prop.
Hypothesis H3: p->(q->r) :Prop.

Theorem EX1: r :Prop.
Proof.
  pose (H4 := H2 H1).
  pose (H5 := H3 H1 H4).
  exact H5.
Qed.

Theorem EX2: r: Prop.
Proof.
  apply H3.
  exact H1.
  apply H2.
  exact H1.
Qed.