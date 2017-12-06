class Eljuego
	def initialize
		@jugador1 = " "
		@jugador2 = " "
		@posjugador1 = 0
		@posjugador2 = 0
		@tableroGeneral  = %w{0 0 3 0 -2 0 0 0 -1 -2 0 0 0 0 0 0 0 -1 -2 0}
	end 
	def damePosicionJugador1
		return @posjugador1
	end
	def damePosicionJugador2
		return @posjugador2
	end
	def tirarDadoJugador1 valor=0
		if valor == 0
			return Random.rand(1...6) 
		else
			return valor
		end
	end
	def tirarDadoJugador2 valor=0
		if valor == 0
			return Random.rand(1...6) 
		else
			return valor
		end
	end
	def avanzaJugador1(avanza1)
		@posjugador1 += avanza1 
		return @posjugador1
	end
	def avanzaJugador2(avanza2)
		@posjugador2 += avanza2 
		return @posjugador2
	end

	def retrocesoJugador1(retrocede1)
		@posjugador1 += retrocede1 
		return @posjugador1
	end
	def retrocesoJugador2(retrocede2)
		@posjugador2 += retrocede2 
		return @posjugador2
	end

	def trampa1
		return -4
	end
	def trampa2
		return -5
	end

	def finalizoJugador1
	
		return  @posjugador1 >= 19
	end

	def finalizoJugador2
		return  @posjugador2 >= 19

	end

	def analizarPosicion(posicion)
		return @tableroGeneral[posicion].to_i
	end

end
