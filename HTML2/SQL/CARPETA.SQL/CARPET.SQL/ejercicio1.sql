CREATE tabla COMPRA Y VENTE COCHE(
  DNI int not null,
  NOMBRE varchar(20)not null,
  CIUDAD varchar (20)default 'alava',
  FECHA date unique,
  ANYOSMATRICULA int,
  PRIMARY key (DNI),
  CONSTRAINT anyock check(anyosmatricula>1)
);
/*HISOLE*/
ALTER TABLE miprimeratabla DROP CONSTRAINT anyock;
/*HISOLE*/
ALTER TABLE miprimeratabla ADD column telefono int unique;
/*HISOLE*/
ALTER TABLE miprimeratabla CHANGE anyosmatricula anyo int
/*HISOLE*/
TRUNCATE TABLE

DROP TABLE TABLA CASCADE;
