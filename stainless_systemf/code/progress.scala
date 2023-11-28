def callByValueProgress(t: Term): Unit = {
  require(deriveType(Nil(), t).isDefined)
  t match{
    case Var(_) => ()
    case Abs(_, _) => ()
    case App(t1, t2) => {
      callByValueProgress(t1)
      callByValueProgress(t2) 
    }
    case Fix(f) => callByValueProgress(f)
    case TAbs(t) => ()
    case TApp(t, typ) => callByValueProgress(t)
  }
}.ensuring(
  reduceCallByValue(t).isDefined || t.isValue
)