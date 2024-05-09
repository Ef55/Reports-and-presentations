(* c *)
(* MatchState -> MatchResult *)
let k: MatcherContinuation := fun (x: MatchState) =>
    if next_char x = 'c' then Some (consume_char x)
    else mismatch