CREATE DATABASE CORREOS_SPAIN;
/*creation de tablas*/
CREATE TABLA PROVINCE(
  codeprovence int,
  nom varchar(15),
  prymary KEY(codeprovence)
);
CREATE TABLA CAMIONES(
  matricule varchar(7),
  modele varchar(10),
  tipe varchar(10)
  potencial int(5)
  prymary KEY(matricule)
);
CREATE TABLA CAMIONES(
  DNI varchar(9)
  nom varchar
  SALAIRE numerique(8,2)
  VILLE varchar(12),
  prymary key(DNI),
);
CREATE TABLA paquet(
  codepaquet int,
  description varchar(30)not NULL,
  destination varchar(30) not NULL,
  dirrection varchar(30)not null,
  codeprovence int not null,
  DNI varchar(9)not null,
  prymary key(codepaquet),
  CONSTRAINT Numeropaquet1 foreign KEY(DNI)reference
  provence(codeprovence),
  CONSTRAINT numeropaquet2 foreign key(DNI)reference CAMIONEROS(DNI)
);
CREATE TABLE Llevan(
  dni varchar(9),
  matricule varchar(7),
  PRIMARY KEY (dni,matricule),
  CONSTRAINT Numeropaquet1 FOREIGN KEY (dni) REFERENCES
  Camioneros (dni),
  CONSTRAINT numeropaquet2 FOREIGN KEY (matricule) REFERENCES
  Camiones (matricule)
);
