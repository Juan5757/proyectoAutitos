Feature:
Como Jugador
Quiero ingresar mi nombre en la app
Para poder identificarme

Scenario: pagina bienvenida recibe nombre
Given visito la pagina principal
Then deberia ver una caja con el titulo "NombreUsuario" y el valor de "nombre"

