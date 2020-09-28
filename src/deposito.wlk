class Deposito {

	var bicisEnElDeposito = []

	method bicisEnElDeposito() {
		return bicisEnElDeposito
	}

	method agregarBici(bici) {
		bicisEnElDeposito.add(bici)
	}

	method coleccionDeBicisRapidas() {
		return bicisEnElDeposito.filter({ c => c.velocidadDeCrucero() > 25 })
	}

	method coleccionDeMarcasSinRepetir() {
		return bicisEnElDeposito.map({ c => c.marca() }).asSet()
	}

	method esNocturno() {
		return bicisEnElDeposito.all({ c => c.esLuminoso() })
	}

	method tieneBiciParaLlevarCargaDe_(cargaALlevar) {
		return bicisEnElDeposito.any({ c => c.carga() > cargaALlevar })
	}

	method marcaDeBiciMasRapida() {
		return bicisEnElDeposito.max({ c => c.velocidadDeCrucero() }).marca()
	}

	method cargaTotalDeBicisLargas() {
		return bicisEnElDeposito.filter({ c => c.largoEnCm() > 170 }).sum({ i => i.carga() })
	}

	// hice los 3 filter porque no estoy seguro si en un bloque se pueden poner 2 condiciones 
	method bicisCompanieras(bici) {
		return bicisEnElDeposito.filter({ c => c.codigoIdentificacion() != bici.codigoIdentificacion() }).filter({ c => c.codigoIdentificacion() != bici.codigoIdentificacion() }).filter({ j => (j.largoEnCm() - bici.largoEnCm()).abs() <= 10 })
	}

/*
 * method bicisCompanieras(bici){
 * 	self.bicisDistintasA_(bici).bicisDeIgualMarca(bici).bicisQueNoSuperanElLargoEn10Cm(bici)
 * }

 * method bicisDistintasA_(bici){
 * 	return bicisEnElDeposito.filter({c => c.codigoIdentificacion() != bici.codigoIdentificacion()})
 * }

 * method bicisDeIgualMarca(bici){
 * 	return  bicisEnElDeposito.filter({i => i.marca() == bici.marca() })
 * }

 * method bicisQueNoSuperanElLargoEn10Cm(bici){
 * 	return bicisEnElDeposito.filter({j => (j.largoEnCm() - bici.largoEnCm()).abs() <= 10 })
 * }
 */
}

