def typeof(t: Term): Option[Type] = {
    deriveType(`$\emptyset$`, t).map(`$\sigma$` => `$\sigma$`.typ)
}