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
  var tieneCredito = true
  
  method puedeLlamar() = tieneCredito
  
  method tieneCredito(_tieneCredito) {
    tieneCredito = _tieneCredito
  }
}

object lincolnHawk {
  var pesoCorporal = 82
  var vehiculo = camion
  const property puedeLlamar = false
  
  method peso() = pesoCorporal + vehiculo.peso()
  
  method pesoCorporal(_pesoCorporal) {
    pesoCorporal = _pesoCorporal
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