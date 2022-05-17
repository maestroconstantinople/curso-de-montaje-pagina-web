/*Ejercicio 2.4*/
/*Actividad 1*/

/*Apartado 1*/
SELECT * FROM Camioneros WHERE poblacion = 'Vitoria-Gast';
/*Apartado 2*/
SELECT * FROM Camioneros;
/*Apartado 3*/
SELECT nombre, telefono FROM Camioneros;
/*Apartado 4*/
SELECT nombre, telefono FROM Camioneros WHERE nombre LIKE 'A%';
/*Apartado 5*/
SELECT nombre, telefono FROM Camioneros WHERE nombre LIKE 'I%' OR nombre LIKE 'E%';
/*Apartado 6*/
SELECT nombre, telefono FROM Camioneros WHERE nombre LIKE 'I%' OR nombre LIKE 'E%';
/*Apartado 5.1*/
UPDATE Camioneros SET salario=1800 WHERE nombre = 'Idoia';
/*Apartado 5.2*/
UPDATE Camioneros SET salario=2100 WHERE nombre = 'Egoitz';
/*Apartado 5.3*/
UPDATE Camioneros SET salario=1500 WHERE nombre = 'Arturo';
/*Apartado 5.4*/
UPDATE Camioneros SET salario=2800 WHERE nombre = 'Amaia';
/*Apartado 7*/
SELECT DNI,NOMBRE FROM CAMIONEROS WHERE SALARIO=1500 OR SALARIO
SELECT DNI,NOMBRE FROM CAMIONEROS WHERE SALARIO in betis
/*Apartado 8*/
SELECT telefono FROM Camioneros WHERE salario IN (1500,2100,2800);
SELECT telefono FROM Camioneros WHERE salario = 1500 OR salario =
2100 OR salario = 2800;
/*Apartado 8*/
SELECT * FROM comiones;
/*Apartado 8*/
SELECT DIRECCION FROM PAQUETE WHERE DESCRIPCION='Ordenador';
/*Apartado 8*/
SELECT DIRECCION FROM  PAQUETE WHERE DESCRIPCION LIKE 'c%'AND codigoprovincia=2;
/*Apartado 8*/
SELECT * FROM Paquetes WHERE destinatario LIKE '7%';
/*Apartado 9*/
SELECT direccion FROM Paquetes WHERE descripcion = 'Ordenador';
/*Apartado 11*/
SELECT * FROM Camiones;
/*Apartado 12*/
SELECT * FROM Camiones WHERE modelo = 'Renault' OR modelo = 'Iveco';
/*Apartado 13*/
SELECT matricula, modelo FROM Camiones WHERE potencia = 420 OR potencia = '310';
SELECT matricula, modelo FROM Camiones WHERE potencia IN (420,310);
/*Apartado 14*/
SELECT matricula, modelo FROM Camiones WHERE potencia >= 300 AND potencia <=400;
SELECT matricula, modelo FROM Camiones WHERE potencia BETWEEN 300 AND 400;
/*Apartado 15*/
SELECT matricula FROM llevan WHERE dni = '72525244D';
/*Apartado 16*/
SELECT matricula FROM llevan WHERE dni LIKE '7%';
/*Apartado 17*/
SELECT dni FROM llevan WHERE matricula = '5596MMA';
