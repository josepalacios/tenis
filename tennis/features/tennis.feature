Feature: Juego de tennis

Scenario: Ver Pantalla de tennis
    Given Voy a la portada
    When El jugador A hace un punto
    Then debo ver "15 - 0"
