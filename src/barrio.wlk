import elementos.*

class Barrio {
	const barrio = []
	
	method agregar(elem){ barrio.add(elem) }
	method quitar(elem){ barrio.remove(elem) }
	method esCopado() = barrio.count({elemento => elemento.esBuena()}) > barrio.count({elemento => not elemento.esBuena()})
}