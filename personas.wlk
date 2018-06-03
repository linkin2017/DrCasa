import enfermedades.*
import medicos.*

class Persona {
var temperatura
var celulas
var enfermedades=[]

constructor(_celulas,_temperatura){
	celulas=_celulas
	temperatura=_temperatura
}

//getter
method celulas(){
	return celulas
}

method temperatura(){
	return temperatura
}

method listaEnfermedades(){
	return enfermedades
}



//setter
method estasSaludable(){
	return true
}


method contraerEnfermedad(_enfermedad){
	enfermedades.add(_enfermedad)
}

method viviUnDia(){
	enfermedades.forEach({enfermedad=>enfermedad.causarEfecto(self)}) //enfermedad.causarEfecto(logan)
}

method aumentarTemperatura(grados){
	temperatura = temperatura + grados
}


method destruirCantidadCelulasAmenazadas(_celulasAmenazadas){
	celulas = celulas - _celulasAmenazadas
}

method curarse(dosis){
	enfermedades.forEach({enfermedad=>if (!enfermedad.equals (laMuerte))
		enfermedad.atenuar(dosis)
		self.curado(enfermedad)
	})
	
}


method curado(enfermedad){
	if (enfermedad.celulaAmenazadas()<=0 and !enfermedad.equals(laMuerte))
	enfermedades.remove(enfermedad) 
	
}

method bajarTemperatura(){
	temperatura = 0
}



}