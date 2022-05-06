CREATE TABLE miprimeratabla(
  DNI int NOT NULL,
  NOMBRE varchar(20) NOT NULL,
  CENTRO varchar(20) DEFAULT 'Arriaga',
  FECHA DATE UNIQUE,
  anyosmatricula int,
  PRIMARY KEY (DNI),
  CONSTRAINT anyoCK CHECK (anyosmatricula>1)
);
/*crear la BD*/
CREATE DATABASE Correos_Spain;

/*Creacion de tablas*/
CREATE TABLE Provincias(
  codigoprovincia int,
  nombre varchar(15),
  PRIMARY KEY (codigoprovincia)
);

CREATE TABLE Camiones(
  matricula varchar(7),
  modelo varchar(10),
  tipo varchar(10),
  potencia int(5),
  PRIMARY KEY (matricula)
);

CREATE TABLE Camioneros(
  dni varchar(9),
  nombre varchar(15) NOT NULL,
  telefono int(11),
  direccion varchar(30),
  salario numeric(8,2),
  poblacion varchar(12),
  PRIMARY KEY (dni)
);

CREATE TABLE Paquetes(
  codigopaquete int,
  descripcion varchar(30) NOT NULL,
  destinatario varchar(30) NOT NULL,
  dirección varchar(30) NOT NULL,
  codigoprovincia int NOT NULL,
  dni varchar(9) NOT NULL,
  PRIMARY KEY (codigopaquete),
  CONSTRAINT fkpaquetes1 FOREIGN KEY (codigoprovincia)
      REFERENCES Provincias (codigoprovincia),
  CONSTRAINT fkpaquetes2 FOREIGN KEY (dni) REFERENCES Camioneros (dni)
);

CREATE TABLE Llevan(
  dni varchar(9),
  matricula varchar(7),
  PRIMARY KEY (dni,matricula),
  CONSTRAINT fkllevan1 FOREIGN KEY (dni) REFERENCES Camioneros (dni),
  CONSTRAINT fkllevan2 FOREIGN KEY (matricula) REFERENCES Camiones (matricula)
);
