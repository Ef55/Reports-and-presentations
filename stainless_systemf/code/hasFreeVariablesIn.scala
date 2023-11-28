def hasFreeVariablesIn(c: BigInt, d: BigInt) = {
  require(c >= 0)
  require(d >= 0)
  this match {
    case VariableType(v) => 
        (c <= v) && (v < c+d)
    case BasicType(_) => false
    case ArrowType(t1, t2) => 
        t1.hasFreeVariablesIn(c, d) || 
        t2.hasFreeVariablesIn(c, d)
    case UniversalType(body) => 
        body.hasFreeVariablesIn(c+1, d)
  }
}