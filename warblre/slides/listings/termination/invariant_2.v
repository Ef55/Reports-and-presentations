    (* then either there is no match *)
    (/&Failure OutOfFuel&/ = mismatch) \/
    (* or m produced a new valid state y which *)
    (exists y, Valid y /\
        (* is a progress with respect to x *)
        x <= y /\
        (* was passed to c to complete the match. *)
        /&Failure OutOfFuel&/ = /&Success y&/).