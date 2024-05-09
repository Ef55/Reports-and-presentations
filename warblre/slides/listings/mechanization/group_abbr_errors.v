(**  Atom :: ( GroupSpecifier_opt Disjunction ) *)
| Group id r =>
(* 1. Let m be CompileSubpattern of Disjunction with arguments rer. *)
let m := /&compileSubPattern r (Group_inner id :: ctx) rer&/ in
(* 2. Let parenIndex be CountLeftCapturingParensBefore(Atom). *)
let parenIndex := countLeftCapturingParensBefore self ctx in
(* 3. Return a new Matcher with parameters (x, c) that captures, m, and parenIndex and performs the following steps when called: *)
(fun (x: MatchState) (c: MatcherContinuation) =>
  (* a. Assert: x is a MatchState. *)
  (* b. Assert: c is a MatcherContinuation. *)
  (* c. Let d be a new MatcherContinuation with parameters (y) that captures x, c, and parenIndex and performs the following steps when called: *)
  let d: MatcherContinuation := fun (y: MatchState) =>
    (* i. Assert: y is a MatchState. *)
    ...
    (* vi. Assert: xe <= ye. *)
    /&<no such feature>&/
    (* vii. Let r be the CaptureRange (xe, ye). *)
    let r := CaptureRange.make xe ye in
    (* viii. Set cap[parenIndex + 1] to r. *)
    let cap: list _ := /&List.nth_update cap (parenIndex + 1) r&/ in
    (* ix. Let z be the MatchState (Input, ye, cap). *)
    let z := match_state input ye cap in
    (* x. Return c(z). *)
    c z
  in
  (* d. Return m(x, d). *)
  m x d): Matcher