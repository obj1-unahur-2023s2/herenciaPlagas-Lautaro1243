import plagas.*

class Hogar {
	var mugre
	const confort
	
	method mugre() = mugre
	method confort() = confort
	method esBuena() = mugre <= confort/2
	method recibirAtaque(plaga){ mugre += plaga.nivelDeDanio() }
}

class Huerta {
	var capacidadProduccion
	
	method capacidadProduccion() = capacidadProduccion
	method esBuena() = capacidadProduccion > nivelProduccion.nivel()
	method recibirAtaque(plaga){ if(plaga.transmitenEnfermedad()) { capacidadProduccion -= (plaga.nivelDeDanio() * 0.1  + 10)} else{ capacidadProduccion -= (plaga.nivelDeDanio() * 0.1 ) } }
}

class Mascota {
	var nivelSalud
	
	method nivelSalud() = nivelSalud
	method esBuena() = nivelSalud > 250
	method recibirAtaque(plaga){ if(plaga.transmitenEnfermedad()) { nivelSalud -= plaga.nivelDeDanio() } }
}

object nivelProduccion {
	var property nivel = 100
}