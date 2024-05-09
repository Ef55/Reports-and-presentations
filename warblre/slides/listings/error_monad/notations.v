Notation "'let!' r '=<<' y 'in' z" := (bind y (fun r => z)).

Notation "'assert!' b ';' z" := (if (negb b) then assertion_failed else z).

Notation "'destruct!' r '<-' y 'in' z" := (match y with
| r => z
| _ => assertion_failed
end).