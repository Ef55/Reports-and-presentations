Theorem compiledSubPattern_matcher_invariant:
    (* For all matcher m compiled from regex r *)
    forall m r, compileSubPattern r = Success m ->
        (* the matcher invariant holds. *)
        matcher_invariant m.