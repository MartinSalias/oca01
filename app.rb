require 'sinatra'
require "./lib/juego.rb"

get '/' do
  @@resultado1 = "Posicion 0"
  @@resultado2 = "Posicion 0"
  @@game = Eljuego.new 
  @@jugadorTurno = 1
  @@dado = 0
  erb :juego
end

post '/dado' do
  @flgGano = false
  if (@@jugadorTurno == 1)
    avanza = @@game.tirarDadoJugador1(4)
	  @@dado = @@game.avanzaJugador1(avanza) 
	  @@jugadorTurno= 2
	  if (@@game.finalizoJugador1)
	    @resultado = "Jugador 1 gano"
	    @flgGano = true
	  else 
      @@resultado1 = "Posicion #{ @@dado }"
	  end
  else
 	  avanza= @@game.tirarDadoJugador2(5)
	  @@dado = @@game.avanzaJugador2(avanza) 
	  @@jugadorTurno= 1
	  if (@@game.finalizoJugador2)
	    @resultado = "Jugador 2 gano"
	    @flgGano = true
	  else
	    @@resultado2 = "Posicion #{ @@dado }"
	  end
  end
  
  if (@flgGano)
    erb :feliz
  else
    erb :juego
  end
end



