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

object neo {
  const property peso = 0
  var credito = 10
  //  En vez de tener credito: Numero, podría tener tieneCredito: Booleano. Lo puse como número por si en un "futuro" se incluye un metodo llamar() o similar que consuma crédito.
  
  method puedeLlamar() = credito > 0
  
  method puedeEntregar(
    paquete,
    destino
  ) = paquete.estaPagado() && destino.puedePasar(self)
}