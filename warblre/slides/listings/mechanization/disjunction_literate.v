| Disjunction r1 r2 =>
  (*>> 1. Let m1 be CompileSubpattern of Alternative with arguments rer and direction. <<*)
  let! m1 =<< compileSubPattern r1 (Disjunction_left r2 :: ctx) rer direction in
  (*>> 2. Let m2 be CompileSubpattern of Disjunction with arguments rer and direction. <<*)
  let! m2 =<< compileSubPattern r2 (Disjunction_right r1 :: ctx) rer direction in
  (*>> 3. Return a new Matcher with parameters (x, c) that captures m1 and m2 and performs the following steps when called: <<*)
  (fun (x: MatchState) (c: MatcherContinuation) =>
    (*>> a. Assert: x is a MatchState. <<*)
    (*>> b. Assert: c is a MatcherContinuation. <<*)
    (*>> c. Let r be m1(x, c). <<*)
    let! r =<< m1 x c in
    (*>> d. If r is not failure, return r. <<*)
    if r is not failure then
      r
    else
    (*>> e. Return m2(x, c). <<*)
    m2 x c): Matcher