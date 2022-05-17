INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0001','Movistar Team','Española','jose luis arrieta');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0002','Trek-Segafredo','Estadounidense','KIM andersen');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0003','Team Ineos','Inglesa','Nicolas portal');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0004','FDJ','Francesa','Philippe mauduit');
INSERT INTO equipos (codequipo,nombre,nacionalidad,nombredirector)
VALUES ('0005','EF Education First','Estadounidense','tom southam');

/* cilcistas */
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('1','Quintana','Colombiana','0001','1990-02-04');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('2','Valverde','Española','0001','1980-04-25');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('3','Erviti','Española','0001','1983-11-15');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('4','Landa','Española','0001','1989-12-13');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('5','Porte','Australiana','0002','1985-01-30');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('6','Bernard','Francesa','0002','1992-03-17');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('7','Ciccone','Italiana','0002','1986-05-20');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('8','Thomas','Inglesa','0003','1986-05-25');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('9','Bernal','Colombiana','0003','1997-01-13');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
 VALUES ('10','Bonnet','Francesa','0004','1982-06-25');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('11','Gaudu','Francesa','0004','1996-10-10');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('12','Rous','Francesa','0004','1996-10-10');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('13','Uran','Colombiana','0005','1987-01-26');
INSERT INTO Ciclistas (Dorsal,Nombre,Nacionalidad,CodEquipo,FechaNacimiento)
VALUES ('14','Bettiol','Italiana','0005','1993-10-29');

/*Etapas*/

INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (1, 9, 'Contrarreloj','2020-07-27');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (2, 185, 'Llana','2020-07-28');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (3, 198, 'Llana','2020-07-29');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (4, 139, 'Alta Montaña','2020-07-30');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (5, 229, 'Alta Montaña','2020-07-31');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (6, 49, 'Contrarreloj','2020-08-02');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (7, 203, 'Media Montaña','2020-08-03');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (8, 144, 'Llana','2020-08-04');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (9, 175, 'Alta Montaña','2020-08-05');
INSERT INTO etapas (numetapa, numkms, tipo, fecha)
VALUES (10, 239, 'Llana','2020-08-06');

/*clasificacionesetapas*/

INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,1,'1','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,2,'Abandono',null);
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,4,'2','4');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(1,5,'3','5');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,1,'1','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,4,'2','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,5,'3','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,8,'4','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,10,'Abandono',null);
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(2,11,'5','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(3,1,'1','0');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(3,4,'2','57');
INSERT INTO clasificacionetapas (NumEtapa,Dorsal,Posicion,distaciaalganador)
VALUES(3,5,'3','65');
/*MODIFICACION APARTADO*/
UPDATE equipos SET nombre='Araba' WHERE nombre='FDJ';
/*Apartado 5*/
UPDATE etapas SET premio = '2400' WHERE tipo='Contrarreloj';
