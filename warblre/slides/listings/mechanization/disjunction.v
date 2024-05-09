| Disjunction r1 r2 =>
  let! m1 =<< compileSubPattern r1 (Disjunction_left r2 :: ctx) rer direction in
  let! m2 =<< compileSubPattern r2 (Disjunction_right r1 :: ctx) rer direction in
  (fun (x: MatchState) (c: MatcherContinuation) =>
    let! r =<< m1 x c in
    if r is not failure then
      r
    else
    m2 x c): Matcher