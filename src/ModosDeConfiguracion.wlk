object justiciaCiega {
	const circunstanciasInvalidas = ["la pelota no pasó completamente la línea", "jugador adelantado", 
	"fue con la mano"]
	
	method esValida(circunstancia) = !circunstanciasInvalidas.contains(circunstancia)
	
	method analizarGol(jugada) = self.esValida(jugada.circunstancias())
}

object fifa {
	const campeonesDelMundo = ["Argentina", "Brasil", "Alemania", "Italia",
		"Uruguay", "España", "Francia", "Inglaterra"]
	
	method esCampeonDelMundo(equipo) = campeonesDelMundo.contains(equipo)
	
	method analizarGol(jugada) = self.esCampeonDelMundo(jugada.equipo())
}

object masGoles {
	method analizarGol(jugada) = true
}