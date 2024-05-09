    (* then either there is no match *)
    (m x /&(fun z => Success z)&/ = mismatch) \/
    (* or m produced a new valid state y which *)
    (exists y, valid y /\
        (* is a progress with respect to x *)
        x <= y /\
        (* was passed to c to complete the match. *)
        m x /&(fun z => Success z)&/ = /&(fun z => Success z) y&/).