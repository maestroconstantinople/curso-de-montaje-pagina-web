/*Insertar provincia*/
INSERT INTO Provincias VALUES (1, 'Araba');
INSERT INTO Provincias (codigoprovincia, nombre)
 VALUES (2,'Bizkaia');
INSERT INTO Provincias (codigoprovincia, nombre)
 VALUES (3,'Gipuzkoa');
INSERT INTO Provincias (codigoprovincia, nombre)
 VALUES (4,'Nafarroa');

/*Insertar caminoneros*/
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
  VALUES ('72525244D','Arturo',663553522,'C/Miguel Hernández 2',1800.0,'Altsasua');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
  VALUES ('74539982H','Amaia',NULL,'C/Rafael Alberti 24',1500.0,'Hernani');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
  VALUES ('06224189B','Idoia',677339291,'C/Federico Garcia Lorca 34',2700.0,'Vitoria-Gasteiz');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
  VALUES ('09833567P','Egoitz',632562629,NULL,2100.0,'Sestao');
INSERT INTO Camioneros (dni,nombre,telefono,direccion,salario,poblacion)
  VALUES ('75769227Z','David',633783311,'C/Pio Baroja 21',1000.0,'Gernika');

/*Insertar camiones*/
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
  VALUES ('6562AAB','Mercedes-Benz',NULL,310);
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
  VALUES ('1299KLJ','Ebro','Perkins V8',290);
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
  VALUES ('5596MMA','Iveco',NULL,320);
INSERT INTO Camiones (matricula,modelo,tipo,potencia)
  VALUES ('9353SVP','Renault','Magnum',420);
