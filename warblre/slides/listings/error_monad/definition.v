Inductive Result (S F: Type) :=
| Success (s: S)
| Failure (f: F).

Definition bind {R S F: Type} (r: Result R F) (f: R -> Result S F) :=
match r with
| Success s => f s 
| Failure f => Failure f
end.