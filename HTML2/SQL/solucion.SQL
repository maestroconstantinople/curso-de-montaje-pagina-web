/*Aparatdo 15*Ejercicio= todos los corredores cuya
distancia al ganador sea mayor que 40 segundos les vamos a
poner el mismo tiempo que hizo el corredor que
llego en segunda posición en la etapa 3.=soluccion(UPDATE)*/
UPDATE clasificacionetapas SET distaciaalganador =
(SELECT distaciaalganador FROM clasificacionetapas
WHERE posicion=2 AND numetapa = 3) WHERE distaciaalganador > 40;
/*Aparatdo 16*/
SELECT COUNT(ciclistas.nombre),equipos.nombre
FROM ciclistas, equipos
WHERE ciclistas.codequipo = equipos.codequipo
GROUP BY (equipos.nombre);
SELECT COUNT(Nombre),CODEquipo
FROM CICLISTAS
GRoup by CODEquipo;
/*Aparatdo 17*/
