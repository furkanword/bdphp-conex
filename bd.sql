    CREATE TABLE client (
idCLiente varchar(15),
primerNombre varchar(25),
segundoNombre varchar(25),
primerApellido varchar(25),
segundoApellido	 varchar(25),
);
CREATE TABLE pais (
 idPais int NOT NULL AUTO_INCREMENT,
 nombrePais varchar(50) NOT NULL,
 CONSTRAINT pk_pais PRIMARY KEY (idPais)
 );
 
 CREATE TABLE departamento(
 idDep int NOT NULL AUTO_INCREMENT,
 nombreDep varchar(50) NOT NULL,
 idPais int(11),
 CONSTRAINT pk_departamento PRIMARY KEY(idDep),
 CONSTRAINT fk_PaisDep FOREIGN 0
 KEY (idPais)REFERENCES pais(idPais)

 );

CREATE TABLE region(
    idReg int NOT NULL AUTO_INCREMENT,
    nombreReg varchar(50) NOT NULL,
    idDep int(11),
    CONSTRAINT pk_region PRIMARY KEY  (idReg),
    CONSTRAINT fk_departamentoReg FOREIGN KEY (idDep
    
    )REFERENCES departamento(idDep)
    
 );

CREATE TABLE producto(
    idProd int NOT NULL AUTO_INCREMENT,
    nombreProd varchar(50) NOT NULL,
    idReg int(11),
    CONSTRAINT pk_producto PRIMARY KEY  (idProd),
    CONSTRAINT fk_regionProd FOREIGN KEY (idReg)

    )REFERENCES region(idReg)


CREATE TABLE cliente(
    idCliente int NOT NULL AUTO_INCREMENT,
    nombreCliente varchar(50) NOT NULL,
    idDep int(11),
    CONSTRAINT pk_cliente PRIMARY KEY  (idCliente),
    CONSTRAINT fk_departamentoCliente FOREIGN KEY (id

    )REFERENCES departamento(idDep));

CREATE TABLE empleado(
    idEmp int NOT NULL AUTO_INCREMENT,  
    nombreEmp varchar(50) NOT NULL,
    idReg int(11),
    CONSTRAINT pk_empleado PRIMARY KEY  (idEmp),
    CONSTRAINT fk_regionEmp FOREIGN KEY (idReg)

    )REFERENCES region(idReg)

INSERT INTO pais(nombrePais) values('colombia'),('peru'),('brasil'),('escosia'),('filipinas');
SELECT idPais,nombrePais
FROM pais
WHERE idPais  = 1;

INSERT INTO departamento (nombreDep) VALUES
('Amazonas'),
('Antioquia'),
('Arauca'),
('Atlántico'),
('Bolívar'),
('Boyacá'),
('Caldas'),
('Caquetá'),
('Casanare'),
('Cauca'),
('Cesar'),
('Chocó'),
('Córdoba'),
('Cundinamarca'),
('Guainía'),
('Guaviare'),
('Huila'),
('La Guajira'),
('Magdalena'),
('Meta'),
('Nariño'),
('Norte de Santander'),
('Putumayo'),
('Quindío'),
('Risaralda'),
('San Andrés y Providencia'),
('Santander'),
('Sucre'),
('Tolima'),
('Valle del Cauca'),
('Vaupés'),
('Vichada');
SELECT p.idPais,p.nombrePais,dep.nombreDep,r.nombreReg
FROM pais AS p, departamento AS dep,region AS r
where p.idPais = dep.idPais AND dep.idDep = r.idDep

SELECT p.idpais,p.nombrePais,dep.nombreDep,r.nombreReg
FROM AS p
INNER JOIN departamento AS dep ON dep.idPais = p.idPais
INNER JOIN region AS r ON r.idDep = dep.idDep p.idPais = dep.idPais AND dep.idDep = r.id



SELECT 
FROM pais AS p
INNER JOIN departamento AS dep ON dep.idPais p.idPais
INNER JOIN region  AS r ON r.idDep = dep.idDep
WHERE p.idPais = 1
ORDER BY r.nombreReg DESC;