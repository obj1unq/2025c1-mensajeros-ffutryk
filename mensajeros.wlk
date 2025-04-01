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

object chuckNorris {
  const property peso = 900
  const property puedeLlamar = true
  
  method puedeEntregar(
    paquete,
    destino
  ) = paquete.estaPagado() && destino.puedePasar(self)
}
