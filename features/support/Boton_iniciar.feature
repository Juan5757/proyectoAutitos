Feature:
Como Jugador
Quiero presionar un boton
Para iniciar en la app

Scenario: boton de inicio
Given estoy en la pagina principal
When presiono el boton con nombre "Iniciar" 
Then deberia ir a la pagina TERRENO
