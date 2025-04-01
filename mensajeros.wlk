object paquete {
  var estaPagado = false
  
  method estaPagado() = estaPagado
  
  method marcarComoPagado() {
    estaPagado = true
  }
}