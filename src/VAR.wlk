import Jugadas.*
import ModosDeConfiguracion.*

object vVAR {
	var configuracionActual = fifa
	
	method cambiarConfiguracion(configuracion) {
		configuracionActual = configuracion
	}
	
	method esGol(jugadaDeGol) = if(jugadaDeGol.circunstancias() != "") 
	configuracionActual.analizarGol(jugadaDeGol) else true
	
	method esTarjeta(jugadaDeTarjeta) = jugadaDeTarjeta.esDeTarjeta()
	
}
