Fixpoint RepeatMatcher (m: Matcher) (min: nat) (x: MatchState)
(c: MatcherContinuation) (fuel: nat) :=
  match fuel with
  | 0 => /&Failure OutOfFuel&/
  | S fuel' =>
    if ??? then /=c x=/
    else if ??? then /=mismatch=/
    else 
      let y := ???
      (* y is valid *)
      (* x <= y holds *)
      if min = 0 and endIndex(y) = endIndex(x)
      then /=mismatch=/
      else
        let min2 := if min = 0 then 0 else min - 1 in
        /&RepeatMatcher m min2 y c fuel'.&/