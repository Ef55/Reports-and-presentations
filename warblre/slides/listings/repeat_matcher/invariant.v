(* For all match satisfying the invariant, natural number min, valid state x, and continuation c *)
forall m min x c, matcher_invariant m -> Valid x ->
    (* for all sufficient amount of fuel *)
    forall fuel, /&<bound>&/ <= fuel ->
        (* then either there is no match *)
        (repeatMatcher m min x c = mismatch) \/
        (* or m produced a new valid state y which *)
        (exists y, Valid y /\
            (* is a progress with respect to x *)
            x <= y /\
            (* was passed to c to complete the match. *)
            repeatMatcher m min x c = c y).