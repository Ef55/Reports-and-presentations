Fixpoint RepeatMatcher (m: Matcher) (min: nat) (x: MatchState)
(c: MatcherContinuation) (fuel: nat) :=
  match fuel with
  | 0 => /_Failure OutOfFuel_/
  | S fuel' =>
    if ??? then /=c x=/
    else if ??? /=then mismatch=/
    else 
      let y := ???
      (* y is valid *)
      (* x <= y holds *)
      if min = 0 and endIndex(y) = endIndex(x)
      then /=mismatch=/
      else
        (* if min = 0, then we must have EndIndex x < EndIndex y *)
        let min2 := if min = 0 then 0 else min - 1 in
        (* Not OutOfFuel if min + remainingChars(x) + 1 <= fuel *)
        /=RepeatMatcher m min2 y c fuel'=/.