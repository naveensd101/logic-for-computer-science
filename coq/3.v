Section Prop_Logic.
Variables A B: Prop.
Theorem EX1: A->( (A->B) -> B ): Prop.
Proof.
  intros H1 H2.
  apply H2.
  exact H1.
Qed.