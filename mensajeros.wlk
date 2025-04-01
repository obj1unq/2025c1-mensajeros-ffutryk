object paquete {
  var estaPagado = false
  
  method estaPagado() = estaPagado
  
  method marcarComoPagado() {
    estaPagado = true
  }
}

object puenteBrooklyn {
  method puedePasar(mensajero) = mensajero.peso() <= 1000
}

object laMatrix {
  method puedePasar(mensajero) = mensajero.puedeLlamar()
}
