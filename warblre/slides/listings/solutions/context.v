Fixpoint compileSubPattern (r: Regex) /&(ctx: list RegexContext)&/ :=
    match r with
    | Disjunction r1 r2 =>
        let! m1 =<< compileSubPattern r1 /&(Disjunction_left r2 :: ctx)&/ in
        ...
    end.