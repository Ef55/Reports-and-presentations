def negShiftValidity(t:Term,d:BigInt,c:BigInt): 
Boolean = {
  require(d < 0)
  t match {
    case Var(k) => (k < c) || (k+d >= c)
    case Abs(_, body) => 
        negativeShiftValidity(body, d, c+1)
    case App(t1, t2) => 
        negativeShiftValidity(t1, d, c) && 
        negativeShiftValidity(t2, d, c)
  }
}