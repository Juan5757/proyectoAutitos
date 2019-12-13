Feature:
Como Jugador
Quiero definir los parametros del terreno
Para restringir el espacio en el que se movera mi autito

Scenario: limite filas terreno
Given estoy en la pagina Terreno
Then deberia ver una caja con el nombre "limiteFilasTerreno" y el valor "Y max"

#Scenario: limite columnas Terreno
#Given estoy en la pagina Terreno
#Then deberia ver una caja con el nombre "limiteColumnasTerreno" y el valor "X max"