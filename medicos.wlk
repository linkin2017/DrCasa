import personas.*

//class Medico {
//
//
//
//}
class Subordinado inherits Persona {

	var cantidad

	constructor(_celulas, _temperatura, cantidadDeMedicamento) = super(_celulas, _temperatura) {
		cantidad = cantidadDeMedicamento
	}
	

	method atender(persona) {
		persona.curarse(cantidad * 15)
	}
	


}

class MedicoJefe inherits Persona {

    var subordinado
	
	
	constructor(_celulas, _temperatura,medicoGuardia) = super(_celulas, _temperatura) {
		subordinado = medicoGuardia
	}
	
	method cambiarDeSubordinado(nuevosubordinado){
		subordinado = nuevosubordinado
	}

	method atender(persona) {
		
		subordinado.atender(persona)	 
	}

}

