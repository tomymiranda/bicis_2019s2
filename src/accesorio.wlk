class Farolito {
	
	method peso(){return 0.5}
	method carga(){return 0}
	method esLuminoso(){return true}
	method esLiviano(){return true}	
}

class Canasto{
	
	var property volumen
	method peso(){return self.volumen() / 10 }
	method carga(){return self.volumen() * 2}
	method esLuminoso(){return false}
	method esLiviano(){return self.peso() < 1}
}

class MorralDeBici{
	var property largo
	var property ojoDeGato
	method peso(){return 1.2}
	method carga(){return self.largo() / 3}
	method esLuminoso(){return self.ojoDeGato()}
	method esLiviano(){return false}
}

/*  Al agregar mas accesorios  deben contener los metodos necesarios para 
 * poder cumplir el contrato del programa. Sin esos metodos no se cumpliria el contrato
 * y el programa fallaria. 
  */
 
