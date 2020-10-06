import bicis.*
import accesorio.*
class Deposito {

	var bicisEnElDeposito = []

	method bicisEnElDeposito() {
		return bicisEnElDeposito
	}

	method agregarBici(bici) {
		bicisEnElDeposito.add(bici)
		bicisEnElDeposito.get(self.bicisEnElDeposito().size()-1).setCodigoIdentificacion(self.bicisEnElDeposito().size())
	}
	
	method coleccionDeBicisRapidas() {
		return bicisEnElDeposito.filter({ c => c.velocidadDeCrucero() > 25 })
	}

	method coleccionDeMarcasSinRepetir() {
		return bicisEnElDeposito.map({ c => c.marca() }).asSet()
	}

	method esNocturno() {
		return bicisEnElDeposito.all({ c => c.tieneLuz() })
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
		return bicisEnElDeposito.filter({ c => c.codigoIdentificacion() != bici.codigoIdentificacion() })
		.filter({ c => c.codigoIdentificacion() != bici.codigoIdentificacion() })
		.filter({ j => (j.largoEnCm() - bici.largoEnCm()).abs() <= 10 })
	}
 
 	method hayBicisCompanierasEntreEllas(){
 		return bicisEnElDeposito.any({c => self.bicisCompanieras(c)})
 	}
}

