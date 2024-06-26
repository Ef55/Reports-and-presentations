
(*>> Assert: xe <= ye. ... <<*)
assert! (xe <= ye) ; ...

(*>> Let ch be the character Input[index]. <<*)
let! ch =<< List.nth_get input index in ...
(* or *)
let! ch =<< input[index] in ...

(*>> Set cap[parenIndex + 1] to r. ... <<*)
let! cap: list _ =<< List.nth_update cap (parenIndex + 1) r in ...
(* or *)
set cap[parenIndex + 1] := r in ...