Theorem termination :
    (* For all matcher m satisfying the invariant *)
    forall m, matcher_invariant m ->
    (* and valid state x *)
    forall x, Valid x ->
    (* the matcher cannot run out of fuel. *)
    m x (fun z => Success z) <> Failure OutOfFuel.