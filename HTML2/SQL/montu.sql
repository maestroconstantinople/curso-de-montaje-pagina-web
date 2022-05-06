/* seleccion prenom telefono */
SELECT CAMIONEROS.NOMBRE,CAMIONEROS,TELEFONO FROM CAMIONEROS,comiones,LLEVAN
WHERE CAMIONEROS.DNI=LLEVAN.DNI AND CAMIONEROS.MATRICULA AND(tipo LIKE 'A%' or
tipo LIKE 'P%');
SELECT CAMIONEROS.NOMBRE,CAMIONEROS.TELEFONO,CAMIONEROS.DIRECCION,CAMIONES.tipo
FROM CAMIONEROS JOIN LLEVAN on CAMIONEROS.DNI=LLEVAN.MATRICULA WHERE tipo LIKE
'P' or tipo LIKE 'm%';
/* seleccion segundo caminoneros */
/*Actividad 2*/
/*Apartado 1*/
SELECT  Camioneros.nombre FROM Camioneros,Paquetes WHERE Camioneros.dni=Paquetes.dni AND Paquetes.descripcion = 'Abrigo';
SELECT  Camioneros.nombre FROM Camioneros JOIN Paquetes ON Camioneros.dni=Paquetes.dni WHERE Paquetes.descripcion = 'Abrigo';
/*Apartado 2*/
SELECT Camioneros.salario, Camioneros.poblacion FROM Camioneros,Paquetes
WHERE Camioneros.dni=Paquetes.dni AND Paquetes.direccion='Av. Gasteiz 66';
SELECT Camioneros.salario, Camioneros.poblacion FROM Camioneros JOIN Paquetes ON Camioneros.dni=Paquetes.dni
WHERE Paquetes.direccion='Av. Gasteiz 66';
/*Apartado 3*/
SELECT Camioneros.nombre, Paquetes.descripcion, Paquetes.destinatario, Paquetes.direccion
FROM Camioneros, Paquetes WHERE Camioneros.dni=Paquetes.dni AND Camioneros.poblacion='Vitoria-Gast';
SELECT Camioneros.nombre, Paquetes.descripcion, Paquetes.destinatario, Paquetes.direccion
FROM Camioneros JOIN Paquetes ON Camioneros.dni=Paquetes.dni
WHERE Camioneros.poblacion='Vitoria-Gast';
/*Apartado 4*/
SELECT Paquetes.* FROM Paquetes, Camioneros WHERE Camioneros.dni=Paquetes.dni AND Camioneros.salario = 2800;
SELECT Paquetes.* FROM Paquetes JOIN Camioneros ON Camioneros.dni=Paquetes.dni WHERE Camioneros.salario = 2800;
/*Apartado 5*/
SELECT Camioneros.nombre FROM Camioneros, Camiones, Llevan
WHERE Llevan.dni = Camioneros.dni AND Llevan.matricula = Camiones.matricula
AND Camiones.modelo = 'Ebro';
SELECT Camioneros.NOMBRE FROM Camioneros JOIN Llevan ON
Camioneros.DNI = Llevan.DNI JOIN Camiones ON Llevan.MATRICULA = Camiones.MATRICULA
WHERE MODELO='Ebro';
/*Apartado 6*/
SELECT Camiones.modelo, Camiones.tipo FROM Camiones, Camioneros, LLEVAN
WHERE Llevan.dni = Camioneros.dni AND Llevan.matricula = Camiones.matricula
AND Camioneros.salario>2000;
SELECT Camiones.modelo, Camiones.tipo FROM
Camioneros JOIN Llevan ON Camioneros.dni=Llevan.DNI
JOIN Camiones ON Camiones.matricula=llevan.matricula
WHERE Camioneros.salario>2000;
/*Apartado 7*/
SELECT Camioneros.nombre, Camioneros.telefono, Camioneros.direccion, Camiones.tipo
FROM Camioneros, Camiones, Llevan
WHERE Camioneros.dni= Llevan.dni AND Camiones.matricula=Llevan.MATRICULA
AND (tipo LIKE 'P%' OR tipo LIKE 'M%');
SELECT Camioneros.nombre, Camioneros.telefono, Camioneros.direccion, Camiones.tipo
FROM Camioneros JOIN Llevan ON Camioneros.dni= Llevan.dni
JOIN Camiones ON Camiones.matricula=Llevan.matricula
WHERE tipo LIKE 'P%' OR tipo LIKE 'M%';
/*Apartado 8*/
SELECT Camiones.modelo, Camiones.tipo, Camiones.potencia, Camioneros.nombre
FROM Camioneros, Camiones, Llevan, Paquetes
WHERE Camioneros.dni = Llevan.dni AND Llevan.matricula = Camiones.matricula AND Camioneros.dni = Paquetes.DNI
AND Paquetes.descripcion= 'Zapatillas';
SELECT Camiones.modelo, Camiones.tipo, Camiones.potencia, Camioneros.nombre
FROM Camiones JOIN Llevan ON Camiones.matricula = Llevan.matricula
JOIN Camioneros ON Camioneros.dni = Llevan.dni
JOIN Paquetes ON Camioneros.dni = Paquetes.dni
WHERE Paquetes.descripcion= 'Zapatillas';
