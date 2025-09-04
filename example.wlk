/** DESTINOS */
object brooklynBridge {
	method puedeLlegar(mensajero) {
		return mensajero.pesoTotal() <= 1000
	}
}

object matrix {
  method puedeLlegar(mensajero) {
	return mensajero.puedeLlamar()
  }
}

/* PERSONAS */
object jeanGrey {
  var property peso = 65
  var property puedeLlamar = true
	method pesoTotal() {
		return peso
	}
}

object neo {
  var property peso = 0
  var property puedeLlamar = tieneCredito
  var tieneCredito = true

  	method pesoTotal() {
		return peso
	}

  	method sinCredito() {
	tieneCredito = false
  }
	method compraCredito() { tieneCredito = true}
	method tieneCredito() = tieneCredito

}

object saraConnor {
	var property peso = 70
	var property puedeLlamar = false
	var vehiculo = moto

	method setVehiculo(_vehiculo) {
		vehiculo = _vehiculo
	}
	method vehiculo() = vehiculo

		method pesoTotal() {
		return peso + self.vehiculo().pesoTotal()
	}
}

// VEHICULOS
object moto {
	var property peso = 100
	  	method pesoTotal() {
		return peso
	}
}

object camion {
	var property peso = 500
	var acoplados = 0
	  	method pesoTotal() {
		return peso + 500 * acoplados
	}
	method agregarAcoplados(_cantidad) {
		acoplados += _cantidad
	}
}

// PAQUETE GEORGE LUCAS
object paquete {
	var estaPago = false
	method estaPago() = estaPago
	method pagar() {
		estaPago = true
	}
	method puedeLlevar(mensajero, destino) {
		return destino.puedeLlegar(mensajero)
	}
	method puedeSerEntregado(mensajero, destino) {
		return estaPago && self.puedeLlevar(mensajero,destino) 
	}
}

