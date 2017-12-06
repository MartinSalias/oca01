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
  
  if (@@jugadorTurno == 1)
    avanza = @@game.tirarDadoJugador1
	  @@dado = @@game.avanzaJugador1(avanza) 
	  @@jugadorTurno= 2
	  @@resultado1 = "Posicion #{ @@dado }"
  else
    avanza= @@game.tirarDadoJugador2
	  @@dado = @@game.avanzaJugador2(avanza) 
	  @@jugadorTurno= 1
	  @@resultado2 = "Posicion #{ @@dado }"
  end
  erb :juego
end



