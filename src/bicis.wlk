class Bici{
	
	var property rodado
	var property largoEnCm
	var property marca
	var codigoIdentificacion = null
	var accesorios = []
	
	method accesorios(){
		return accesorios
	}
	
	method codigoIdentificacion(){
		return codigoIdentificacion
	}
	
	method setCodigoIdentificacion(numero){
		codigoIdentificacion = numero
	}
	
	method altura(){
		return self.rodado() * 2.5 + 15
	}

	method velocidadDeCrucero(){
		if(self.largoEnCm() > 120){
			return self.rodado() + 6
		}else{
			return  self.rodado() + 2
		}
	}

	method carga(){
		return accesorios.sum({c => c.carga()})
	}
	
	method peso(){
		return self.rodado() / 2 + accesorios.sum({c => c.peso()})
	}

	method tieneLuz(){
		return accesorios.any({c => c.esLuminoso()})
	}
	
	method agregarAccesorio(accesorio){
		accesorios.add(accesorio)
	}
	
	method cantidadDeAccesoriosLivianos(){
		return accesorios.count({c => c.esLiviano()})
	}

}