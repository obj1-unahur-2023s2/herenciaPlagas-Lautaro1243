import elementos.*

class Plaga {
	var poblacion 
	
	method poblacion() = poblacion
	method transmitenEnfermedad() = poblacion > 9
	method efectoDeAtaque(){ poblacion += (poblacion * 0.1) }
	method atacarElementoPorPlaga(unElemento,unaPlaga){
		self.efectoDeAtaque()
		unElemento.recibirAtaque(unaPlaga)
	}
}

class Cucarachas inherits Plaga {
	var property peso = 8
	
	method nivelDeDanio() = poblacion/2
	override method transmitenEnfermedad() = super() and peso > 9
	override method efectoDeAtaque(){ super()  peso = peso + 2 }
}

class Pulgas inherits Plaga {
	method nivelDeDanio() = poblacion * 2
}

class Garrapatas inherits Pulgas {
	override method efectoDeAtaque(){poblacion = poblacion * 1.2 }
}

class Mosquitos inherits Plaga {
	method nivelDeDanio() = poblacion
	override method transmitenEnfermedad() = poblacion % 3 == 0
}