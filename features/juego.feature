Feature: Juego quien llega primero
Scenario: Portada
  Given Voy al sitio
  Then veo "Quien llega primero"

Scenario: Inicio del juego
  Given Voy al sitio
  When Tira un dado jugador 1 sale un 4
  Then veo "Resultado Jugador 1: Posicion 4"

Scenario: Inicio del juego
  Given Voy al sitio
  When Tira un dado jugador 1 sale un 4
  When Tira un dado jugador 2 sale un 5
  Then veo "Resultado Jugador 2: Posicion 5"

Scenario: Inicio del juego
  Given Voy al sitio
  When Tira un dado jugador 1 sale un 4
  When Tira un dado jugador 2 sale un 5
  When Tira un dado jugador 1 sale un 8
  When Tira un dado jugador 2 sale un 10
  When Tira un dado jugador 1 sale un 12
  When Tira un dado jugador 2 sale un 15
  When Tira un dado jugador 1 sale un 16
  When Tira un dado jugador 2 sale un 20
  Then veo "Jugador 2 gano"
