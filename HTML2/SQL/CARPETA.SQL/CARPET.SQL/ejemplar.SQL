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

/*Insertar Paquetes*/
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
 VALUES (1,'Movil','76762622F','Pz/Santa Eulalia 7',4,'72525244D');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (2,'Pesas','65622299J','C/Errekatxiki 2',1,'06224189B');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (3,'Ordenador','66226151G','C/Vicente Alexander 89',2,'09833567P');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (4,'TV','09088821S','C/Madrid 23',3,'74539982H');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (5,'Cascos','73718133L','C/Francia 12',2,'09833567P');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (6,'Abrigo','72211852U','Av. Gasteiz 66',1,'06224189B');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (7,'Zapatillas','71179337K','C/La Paz 13',3,'74539982H');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (8,'Sofa','46783526B','C/Estafeta 29',4,'72525244D');
INSERT INTO Paquetes (codigopaquete,descripcion,destinatario,dirección,codigoprovincia,dni)
  VALUES (9,'Ordenador','67733990G','C/Francia 12',2,'09833567P');

/*INSERTAR TABLA LLEVAN*/
INSERT INTO Llevan (dni,matricula) VALUES ('72525244D','6562AAB');
INSERT INTO Llevan (dni,matricula) VALUES ('72525244D','1299KLJ');
INSERT INTO Llevan (dni,matricula) VALUES ('74539982H','5596MMA');
INSERT INTO Llevan (dni,matricula) VALUES ('74539982H','9353SVP');
INSERT INTO Llevan (dni,matricula) VALUES ('06224189B','6562AAB');
INSERT INTO Llevan (dni,matricula) VALUES ('06224189B','9353SVP');
INSERT INTO Llevan (dni,matricula) VALUES ('09833567P','5596MMA');
INSERT INTO Llevan (dni,matricula) VALUES ('09833567P','1299KLJ');
INSERT INTO Llevan (dni,matricula) VALUES ('09833567P','9353SVP');
/*Actividad 2*/
/*cuestion 1*/
UPDATE Camiones SET tipo='1824 LL' WHERE matricula = '6562AAB';
/*cuestion 2*/
UPDATE Camiones SET tipo='Eurocargo' WHERE modelo = 'Iveco';
/*cuestion 3*/
UPDATE CAMIONEROS SET dirección='c/eduardo dato' WHERE NOMBRE='enerco';
/*cuestion 4*/
UPDATE PAQUETE SET descripcion='samsun s64' WHERE TIENDA='mediamakt';
/*cuestion 5*/
DELETE  FROM LLEVAN DNI='09833567P' WHERE nombre='David';
/*cuestion 6*/
UPDATE CAMIONEROS SET salario='6000' WHERE nombre='1299KLJ';
/*cuestion 7*/
