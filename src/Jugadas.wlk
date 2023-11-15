class Jugada {
	const minuto
	method minuto() = minuto
	
	method esDeTarjeta(){return null}
	method jugadorAmonestado(){return null}
}

class Gol inherits Jugada {
	const equipo
	const ultimoEnTocar
	const circunstancias

	method equipo() = equipo
	method circunstancias() = circunstancias
	
	override method esDeTarjeta() = circunstancias.contains("festejo quitandose la camiseta")
	override method jugadorAmonestado() = if(self.esDeTarjeta()) equipo else null
}

class Falta inherits Jugada {
	const infractor
	const victima
	const intensidad
	
	override method esDeTarjeta() = intensidad > 75
	override method jugadorAmonestado() = if(self.esDeTarjeta()) infractor else null
}

class Pelea inherits Jugada {
	const jugadoresEnPelea = []
	
	method noSonDelMismoEquipo() = jugadoresEnPelea.asSet().size() > 1
	
	override method esDeTarjeta() = jugadoresEnPelea.size() > 5 && self.noSonDelMismoEquipo()
	override method jugadorAmonestado() = if(self.esDeTarjeta()) jugadoresEnPelea else null
}

class Insulto inherits Jugada {
	const jugadorMalHablado
	const insultoInapropiado

	
	override method esDeTarjeta() = insultoInapropiado
	override method jugadorAmonestado() = if(self.esDeTarjeta()) jugadorMalHablado else null
}
