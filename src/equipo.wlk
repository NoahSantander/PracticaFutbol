import VAR.*
import Jugadas.*

class Partido {
	const jugadas = []
	var local
	var visitante
	
	method tarjetas(equipo) = jugadas.count({ jugada => jugada.jugadorAmonestado() == equipo })
	method goles(equipo) = jugadas.count({ jugada => vVAR.esGol(jugada) })
	
	method cantidadJugadas(comienzo) = jugadas.count({ jugada => jugada.minuto().between(comienzo, comienzo + 45)})
	method segundoMejorQuePrimero() = self.cantidadJugadas(0) < self.cantidadJugadas(45)
}
