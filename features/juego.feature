Feature: Juego quien llega primero
Scenario: Portada
  Given Voy al sitio
  Then veo "Quien llega primero"

Scenario: Inicio del juego
  Given Voy al sitio
  When Tira un dado sale un 5
  Then veo "Posicion 5"

