(* a | b *)
(* MatchState -> MatcherContinuation -> MatchResult *)
let m: Matcher := fun (x: MatchState)  (k: MatcherContinuation) =>
    if next_char x = 'a' and k (consume_char x) <> mismatch
        then /&k (consume_char x)&/
    else if next_char x = 'b' and k (consume_char x) <> mismatch
        then /&k (consume_char x)&/
    else /&mismatch&/