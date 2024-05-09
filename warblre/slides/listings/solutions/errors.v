
(*>> Assert: xe <= ye. ... <<*)
if (xe <= ye)
then ...
else Failure AssertionFailed

(*>> Let ch be the character Input[index]. ... <<*)
bind (List.nth_get input index) (fun ch => ...)

(*>> Set cap[parenIndex + 1] to r. ... <<*)
bind (List.nth_update cap (parenIndex + 1) r) (fun cap => ..)