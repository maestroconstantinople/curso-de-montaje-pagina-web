CREATE DATABASE AmantesInformatica;
USE AmantesInformatica;

CREATE TABLE Departamento(
  codDpto INT(10),
  nombreDpto VARCHAR(100),
  PRIMARY KEY (codDpto)
);

CREATE TABLE Empleado(
  dniEmp VARCHAR(9),
  nombreEmp VARCHAR(100),
  apellidoEmp VARCHAR(100),
  direccionEmp VARCHAR(200),
  telefonoEmp INT(14),
  sueldoEmp NUMERIC(7,2),
  codDpto INT(10),
  PRIMARY KEY (dniEmp),
  CONSTRAINT fkempdpto FOREIGN KEY (codDpto)
    REFERENCES Departamento (codDpto)
);

CREATE TABLE Jefe(
  dniJefe VARCHAR(9),
  nombreJefe VARCHAR(100),
  codDpto INT(10),
  PRIMARY KEY (dniJefe),
  CONSTRAINT fkjefedpto FOREIGN KEY (codDpto)
    REFERENCES Departamento (codDpto)
);

CREATE TABLE Puesto(
  codPuesto VARCHAR(9),
  nombrePuesto VARCHAR(100),
  descripPuesto VARCHAR(350),
  PRIMARY KEY (codPuesto)
);

CREATE TABLE Ocupa(
  dniEmpOcupa VARCHAR(9),
  codPuestoOcupa VARCHAR(9),
  PRIMARY KEY (dniEmpOcupa,codPuestoOcupa),
  CONSTRAINT fkdniEmpOcupa FOREIGN KEY (dniEmpOcupa)
    REFERENCES Empleado (dniEmp),
  CONSTRAINT fkcodPuestoOcupa FOREIGN KEY (codPuestoOcupa)
    REFERENCES Puesto (codPuesto)
);


/*Tabla Departamento*/
INSERT INTO Departamento (codDpto,nombreDpto) VALUES(123,'Compras');
INSERT INTO Departamento (codDpto,nombreDpto) VALUES(451,'Ventas');
INSERT INTO Departamento (codDpto,nombreDpto) VALUES(735,'RRHH');
INSERT INTO Departamento (codDpto,nombreDpto) VALUES(655,'Finanzas');
INSERT INTO Departamento (codDpto,nombreDpto) VALUES(362,'Producción');
/*Tabla Empleado*/
INSERT INTO Empleado (dniEmp,nombreEmp,apellidoEmp,direccionEmp,telefonoEmp,sueldoEmp,codDpto)
VALUES ('1234567K', 'Lorea', 'Agirre', 'Erreka 12', 555123456, 1600, 123);
INSERT INTO Empleado (dniEmp,nombreEmp,apellidoEmp,direccionEmp,telefonoEmp,sueldoEmp,codDpto)
VALUES ('4124914Y', 'Haizea', 'Etxeberria', 'Boulevard 4', 523023915, 1500, 735);
INSERT INTO Empleado (dniEmp,nombreEmp,apellidoEmp,direccionEmp,telefonoEmp,sueldoEmp,codDpto)
VALUES ('1477392P', 'Jon', 'Dominguez', 'Mungia 54', 531308398, 1450, 362);
INSERT INTO Empleado (dniEmp,nombreEmp,apellidoEmp,direccionEmp,telefonoEmp,sueldoEmp,codDpto)
VALUES ('1230358B', 'Irati', 'Perez', 'Mendieta 15',NULL,1700, 655);
INSERT INTO Empleado (dniEmp,nombreEmp,apellidoEmp,direccionEmp,telefonoEmp,sueldoEmp,codDpto)
VALUES ('6421205N', 'Jokin', 'Iradier', 'Agurain 32', 542009391, 1300, 123);

/*Jefe*/
INSERT INTO Jefe (dniJefe,nombreJefe,codDpto) VALUES ('12628372D', 'Juan', 123);
INSERT INTO Jefe (dniJefe,nombreJefe,codDpto) VALUES ('23483635G', 'Joxe', 451);
INSERT INTO Jefe (dniJefe,nombreJefe,codDpto) VALUES ('77733328N', 'Mireia', 655);
INSERT INTO Jefe (dniJefe,nombreJefe,codDpto) VALUES ('24412443S', 'Koldo',735);
INSERT INTO Jefe (dniJefe,nombreJefe,codDpto) VALUES ('11145234W', 'Idoia', 362);

/*Puesto*/
INSERT INTO Puesto (codPuesto,nombrePuesto,descripPuesto)
VALUES ('1','Técnico','Descripción del técnico');
INSERT INTO Puesto (codPuesto,nombrePuesto,descripPuesto)
VALUES ('2','Comercial','Descripción del comercial');
INSERT INTO Puesto (codPuesto,nombrePuesto,descripPuesto)
VALUES ('3','Ingeniero','Descripción del ingeniero');
INSERT INTO Puesto (codPuesto,nombrePuesto,descripPuesto)
VALUES ('4','Investigador','Descripción del investigador');

/*Tabla Ocupa*/
INSERT INTO Ocupa (dniEmpOcupa, codPuestoOcupa)
VALUES('1234567K',1);
INSERT INTO Ocupa (dniEmpOcupa, codPuestoOcupa)
VALUES('1234567K',2);
INSERT INTO Ocupa (dniEmpOcupa, codPuestoOcupa)
VALUES('1477392P',3);
INSERT INTO Ocupa (dniEmpOcupa, codPuestoOcupa)
VALUES('1230358B',1);
INSERT INTO Ocupa (dniEmpOcupa, codPuestoOcupa)
VALUES('1230358B',4);
INSERT INTO Ocupa (dniEmpOcupa, codPuestoOcupa)
VALUES('6421205N',3);

/*Lista de los trabajadores cuyo código de departamento sea 123*/
SELECT * FROM empleado WHERE codDpto=123;
/*Muestra todos los trabajadores del departamento de Compras (deben aparecer todos los
datos de los trabajadores)*/
SELECT empleado.* FROM empleado, departamento
WHERE empleado.codDpto = departamento.codDpto
AND departamento.nombreDpto = 'Compras';
/*Los nombres de los trabajadores que no tienen número de teléfono y pertenecen al
departamento de finanzas*/
SELECT empleado.nombreEmp FROM empleado, departamento
WHERE empleado.codDpto = departamento.codDpto
AND empleado.telefonoEmp IS NULL AND departamento.nombreDpto = 'Finanzas';
/*La lista de los DNIs de los trabajadores que no tienen teléfono*/
SELECT dniEmp FROM empleado WHERE telefonoEmp IS NULL;
/*El nombre (del empleado) de aquellos trabajadores que ganan más de 1400€*/
SELECT nombreEmp FROM empleado WHERE sueldoEmp > 1400;
/*El nombre (del empleado) y el nombre del puesto de trabajo de aquellos trabajadores que
ganan más de 1400€*/
SELECT empleado.nombreEmp, puesto.nombrePuesto
FROM empleado,puesto,ocupa
WHERE empleado.dniEmp = ocupa.dniEmpOcupa
AND puesto.codPuesto = ocupa.codPuestoOcupa
AND empleado.sueldoEmp > 1400;
/*Los nombres y apellidos de aquellos trabajadores cuyo DNI empiece por 123*/
SELECT nombreEmp, apellidoEmp FROM empleado WHERE dniEmp LIKE '123%';
/*El sueldo más alto*/
SELECT MAX(sueldoEmp) FROM empleado;
/*El nombre y el apellido del empleado con sueldo más alto*/
SELECT nombreEmp, apellidoEmp FROM empleado
WHERE sueldoEmp=(SELECT MAX(sueldoEmp) FROM empleado);
/*El nombre del departamento de aquellos departamentos cuya primera letra está
comprendida de la A a la M. (Investigar cómo se haría)*/
SELECT nombreDpto FROM departamento WHERE nombreDpto BETWEEN 'A' AND 'M';
SELECT nombreDpto FROM departamento WHERE nombreDpto > 'A' AND nombreDpto<'M';
/*La descripción del puesto de trabajo cuyo nombre termina en “ero”*/
SELECT descripPuesto FROM puesto WHERE nombrePuesto LIKE '%ero';
/*El nombre del jefe del departamento donde trabaja Lorea*/
SELECT jefe.nombreJefe FROM departamento, jefe, empleado
WHERE jefe.codDpto = departamento.codDpto
AND departamento.codDpto = empleado.codDpto
AND empleado.nombreEmp = 'Lorea';
/*El nombre del departamento que no tiene trabajadores*/
SELECT nombreDpto FROM departamento
WHERE codDpto NOT IN (SELECT codDpto FROM empleados);
