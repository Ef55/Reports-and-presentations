Definition matcher_invariant (m: Matcher) (/&dir: Direction&/) :=
    (* For all valid state x and continuation c *)
    forall x c, Valid x -> 
        (* then either there is no match *)
        (m x c = mismatch) \/
        (* or m produced a new valid state y which *)
        (exists y, Valid y /\
            (* is a progress with respect to x *)
            x $\leqslant{}_{\color{\codehgcolorR}\texttt{dir}}$ y /\
            (* was passed to c to complete the match. *)
            m x c = c y).