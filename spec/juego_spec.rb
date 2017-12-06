require "./lib/juego.rb"
describe "Quien llega primero" do

	it "iniciar juego" do
		game = Eljuego.new
		game.damePosicionJugador1.should == 0
		game.damePosicionJugador2.should == 0
	end
	it "tirar dado jugador 1 y avanzar" do
		game = Eljuego.new
		avanza1 = game.tirarDadoJugador1 4
		game.avanzaJugador1(avanza1).should == 4
	end

	it "tirar dado jugador 2 y avanzar" do
		game = Eljuego.new
		avanza2=game.tirarDadoJugador2 5
		game.avanzaJugador2(avanza2).should == 5
	end
	it "retroceder jugador 1" do
		game = Eljuego.new
		retroceso1=game.trampa1
		game.retrocesoJugador1(retroceso1).should == -4
	end
	it "retroceder jugador 2" do
		game = Eljuego.new
		retroceso2=game.trampa2
		game.retrocesoJugador2(retroceso2).should == -5
	end

	it "finalizar juego jugador 1" do
		game = Eljuego.new
		game.avanzaJugador1(50)
		game.finalizoJugador1.should == TRUE
	end

	it "finalizar juego jugador 2" do
		game = Eljuego.new
		game.avanzaJugador2(50)
		game.finalizoJugador2.should == TRUE
	end

	it "No finalizar juego jugador 1" do
		game = Eljuego.new
		game.avanzaJugador1(15)
		game.finalizoJugador1.should == FALSE
	end

	it "No finalizar juego jugador 2" do
		game = Eljuego.new
		game.avanzaJugador2(15)
		game.finalizoJugador2.should == FALSE
	end

	it "Analizar posicion avanza" do
		game = Eljuego.new
		game.analizarPosicion(2).should == 3
	end

	it "Analizar posicion trampa" do
		game = Eljuego.new
		game.analizarPosicion(4).should == -2
	end

	it "Analizar posicion quedo quieto" do
		game = Eljuego.new
		game.analizarPosicion(3).should == 0
	end
end

