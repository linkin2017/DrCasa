import personas.*

class EnfermedadInfecciosa {
var celulasAmenazadas 

constructor(_celulasAmenazadas){
	celulasAmenazadas=_celulasAmenazadas
}

//setter
method celulaAmenazadas(){
	if (celulasAmenazadas <= 0)
	return 0
	else
	return celulasAmenazadas
}

method causarEfecto(persona){ //aumentarTemperatura
	persona.aumentarTemperatura(celulasAmenazadas/1000)  // (celulasAmenazadas)/1000 = grados que se pasan a persona
}

method atenuarEnfermedad(cantidad){
	celulasAmenazadas = celulasAmenazadas - cantidad
}

method reproducirse(){
	return celulasAmenazadas*2
}

method atenuar(dosis){
	celulasAmenazadas-=dosis
}

}




class EnfermedadAutoinmune {
	var celulasAmenazadas 
	

	constructor(_celulasAmenazadas){
	celulasAmenazadas=_celulasAmenazadas
}

method celulaAmenazadas(){
	return celulasAmenazadas
}
	
	
	method causarEfecto(persona){ //destruirCantidadCelulasAmenazadas
	 persona.destruirCantidadCelulasAmenazadas(celulasAmenazadas)
	}
	
method atenuarEnfermedad(cantidad){
	celulasAmenazadas = celulasAmenazadas - cantidad
}

method atenuar(dosis){
	celulasAmenazadas-=dosis
}
	
}

//La Muerte disminuye toda la temperatura de la persona y no se atenúa con ningún medicamento
object laMuerte{
var celulasAmenazadas=0
	method celulaAmenazadas(){
	return celulasAmenazadas
}
	
	method causarEfecto(persona){
		persona.bajarTemperatura()
	}
}