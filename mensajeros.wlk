object paquete {
  var estaPagado = false
  
  method estaPagado() = estaPagado
  
  method puedeSerEntregado(
    mensajero,
    destino
  ) = estaPagado && destino.puedePasar(mensajero)
  
  method marcarComoPagado() {
    estaPagado = true
  }

  method marcarComoImpago() {
    estaPagado = false
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
}

object neo {
  const property peso = 0
  var credito = 10
  //  En vez de tener credito: Numero, podría tener tieneCredito: Booleano. Lo puse como número por si en un "futuro" se incluye un metodo llamar() o similar que consuma crédito.
  
  method puedeLlamar() = credito > 0
}

object lincolnHawk {
  var peso = 82
  var vehiculo = camion
  const property puedeLlamar = false
  
  method peso() = peso + vehiculo.peso()
  
  method peso(_peso) {
    peso = _peso
  }
  
  method vehiculo(_vehiculo) {
    vehiculo = _vehiculo
  }
}

object bicicleta {
  const property peso = 10
}

object camion {
  const peso = 500
  var cantidadDeAcoples = 0
  const pesoPorAcople = 500
  
  method peso() = peso + (cantidadDeAcoples * pesoPorAcople)
  
  method acoplar() {
    cantidadDeAcoples += 1
  }
}