Fixpoint RepeatMatcher (m: Matcher) (min: nat) (x: MatchState)
    (c: MatcherContinuation) /&(fuel: nat)&/ :=
  match fuel with
  | /&0&/ => /&Failure OutOfFuel&/
  | /&S fuel'&/ =>
    let d := fun (y: MatchState) =>
      ...
      RepeatMatcher m min2 y c /&fuel'&/
    in
    if min != 0 then m x d
    else
    let z := m x d in
    if z is not mismatch then z
    else c x.