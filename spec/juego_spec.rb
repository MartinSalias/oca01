require "./lib/juego.rb"
describe "Quien llega primero" do

	it "iniciar juego" do
		game = Eljuego.new
		game.damePosicionJugador1.should == 0
		game.damePosicionJugador2.should == 0
	end
	it "tirar dado jugador 1 y avanzar" do
		game = Eljuego.new
		avanza1=game.tirarDadoJugador1
		game.avanzaJugador1(avanza1).should == 4
	end

	it "tirar dado jugador 2 y avanzar" do
		game = Eljuego.new
		avanza2=game.tirarDadoJugador2
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

end

