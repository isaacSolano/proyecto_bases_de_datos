-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-04-04 20:18:27 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE actores (
    idactor  NUMBER(10) NOT NULL,
    nombre   VARCHAR2(20) NOT NULL,
    edad     NUMBER(5) NOT NULL,
    genero   VARCHAR2(10) NOT NULL,
    pais     VARCHAR2(20) NOT NULL,
    estilo   VARCHAR2(10) NOT NULL
);

ALTER TABLE actores ADD CONSTRAINT actores_pk PRIMARY KEY ( idactor );

CREATE TABLE canciones (
    idcancion    NUMBER(10) NOT NULL,
    nombre       VARCHAR2(20) NOT NULL,
    tipo         VARCHAR2(20) NOT NULL,
    duracion     VARCHAR2(10) NOT NULL,
    letra        VARCHAR2(400) NOT NULL,
    enlace       VARCHAR2(30) NOT NULL,
    genero       VARCHAR2(20) NOT NULL,
    idproductor  NUMBER(10) NOT NULL,
    idmusico     NUMBER(10) NOT NULL
);

ALTER TABLE canciones ADD CONSTRAINT canciones_pk PRIMARY KEY ( idcancion );

CREATE TABLE descargascanciones (
    iddescarga  NUMBER(10) NOT NULL,
    fechaini    DATE NOT NULL,
    estado      VARCHAR2(10) NOT NULL,
    idusuario   NUMBER(10) NOT NULL,
    idcancion   NUMBER(10) NOT NULL
);

ALTER TABLE descargascanciones ADD CONSTRAINT descargascanciones_pk PRIMARY KEY ( iddescarga );

CREATE TABLE descargaspeliculas (
    iddescarga  NUMBER(10) NOT NULL,
    fechaini    DATE NOT NULL,
    estado      VARCHAR2(10) NOT NULL,
    idusuario   NUMBER(10) NOT NULL,
    idpelicula  NUMBER(10) NOT NULL
);

ALTER TABLE descargaspeliculas ADD CONSTRAINT descargaspelicula_pk PRIMARY KEY ( iddescarga );

CREATE TABLE descargasseries (
    iddescarga  NUMBER(10) NOT NULL,
    fechaini    DATE NOT NULL,
    estado      VARCHAR2(10) NOT NULL,
    idusuario   NUMBER(10) NOT NULL,
    idserie     NUMBER(10) NOT NULL
);

ALTER TABLE descargasseries ADD CONSTRAINT descargasseries_pk PRIMARY KEY ( iddescarga );

CREATE TABLE directores (
    iddirector  NUMBER(10) NOT NULL,
    nombre      VARCHAR2(10) NOT NULL,
    edad        NUMBER(5) NOT NULL,
    genero      VARCHAR2(10) NOT NULL,
    pais        VARCHAR2(20) NOT NULL,
    estilo      VARCHAR2(20) NOT NULL
);

ALTER TABLE directores ADD CONSTRAINT directores_pk PRIMARY KEY ( iddirector );

CREATE TABLE formaspago (
    idformapago  NUMBER(10) NOT NULL,
    numtarjeta   VARCHAR2(20) NOT NULL,
    propetario   VARCHAR2(20) NOT NULL,
    fechavenc    DATE NOT NULL,
    cvv          NUMBER(5) NOT NULL,
    tipo         VARCHAR2(10) NOT NULL,
    idusuario    NUMBER(10) NOT NULL
);

ALTER TABLE formaspago ADD CONSTRAINT formaspago_pk PRIMARY KEY ( idformapago );

CREATE TABLE membresias (
    idmembresia  NUMBER(10) NOT NULL,
    idusuario    NUMBER(10) NOT NULL
);

ALTER TABLE membresias ADD CONSTRAINT membresias_pk PRIMARY KEY ( idmembresia );

CREATE TABLE musicos (
    idmusico  NUMBER(10) NOT NULL,
    nombre    VARCHAR2(20) NOT NULL,
    genero    VARCHAR2(20) NOT NULL,
    pais      VARCHAR2(20) NOT NULL,
    edad      NUMBER(5) NOT NULL,
    estilo    VARCHAR2(15) NOT NULL
);

ALTER TABLE musicos ADD CONSTRAINT musicos_pk PRIMARY KEY ( idmusico );

CREATE TABLE peliculas (
    idpelicula     NUMBER(10) NOT NULL,
    titulo         VARCHAR2(20) NOT NULL,
    anno           NUMBER(5) NOT NULL,
    pais           VARCHAR2(20) NOT NULL,
    estudio        VARCHAR2(20) NOT NULL,
    genero         VARCHAR2(20) NOT NULL,
    clasificacion  VARCHAR2(10) NOT NULL,
    duracion       VARCHAR2(10) NOT NULL,
    categoria      VARCHAR2(20) NOT NULL,
    iddirector     NUMBER(10) NOT NULL
);

ALTER TABLE peliculas ADD CONSTRAINT peliculas_pk PRIMARY KEY ( idpelicula );

CREATE TABLE preferenciascanciones (
    idpreferencia  NUMBER(10) NOT NULL,
    idusuario      NUMBER(10) NOT NULL,
    idcancion      NUMBER(10) NOT NULL
);

ALTER TABLE preferenciascanciones ADD CONSTRAINT preferenciascanciones_pk PRIMARY KEY ( idpreferencia );

CREATE TABLE preferenciaspeliculas (
    idpreferencia  NUMBER(10) NOT NULL,
    idusuario      NUMBER(10) NOT NULL,
    idpelicula     NUMBER(10) NOT NULL
);

ALTER TABLE preferenciaspeliculas ADD CONSTRAINT preferenciaspelicula_pk PRIMARY KEY ( idpreferencia );

CREATE TABLE preferenciasseries (
    idpreferencia  NUMBER(10) NOT NULL,
    idusuario      NUMBER(10) NOT NULL,
    idserie        NUMBER(10) NOT NULL
);

ALTER TABLE preferenciasseries ADD CONSTRAINT preferenciasserie_pk PRIMARY KEY ( idpreferencia );

CREATE TABLE produccionpelicula (
    idproduccion  NUMBER(10) NOT NULL,
    idproductor   NUMBER(10) NOT NULL,
    idpelicula    NUMBER(10) NOT NULL
);

ALTER TABLE produccionpelicula ADD CONSTRAINT produccionpelicula_pk PRIMARY KEY ( idproduccion );

CREATE TABLE produccionseries (
    idproduccion  NUMBER(10) NOT NULL,
    idproductor   NUMBER(10) NOT NULL,
    idserie       NUMBER(10) NOT NULL
);

ALTER TABLE produccionseries ADD CONSTRAINT produccionseries_pk PRIMARY KEY ( idproduccion );

CREATE TABLE productores (
    idproductor  NUMBER(10) NOT NULL,
    nombre       VARCHAR2(10) NOT NULL,
    genero       VARCHAR2(10) NOT NULL,
    pais         VARCHAR2(20) NOT NULL,
    edad         NUMBER(5) NOT NULL,
    estilo       VARCHAR2(20) NOT NULL
);

ALTER TABLE productores ADD CONSTRAINT productores_pk PRIMARY KEY ( idproductor );

CREATE TABLE repartospelicula (
    idrepartopelicula  NUMBER(10) NOT NULL,
    idpelicula         NUMBER(10) NOT NULL,
    idactor            NUMBER(10) NOT NULL
);

ALTER TABLE repartospelicula ADD CONSTRAINT repartospelicula_pk PRIMARY KEY ( idrepartopelicula );

CREATE TABLE repartosserie (
    idrepartoserie  NUMBER(10) NOT NULL,
    idserie         NUMBER(10) NOT NULL,
    idactor         NUMBER(10) NOT NULL
);

ALTER TABLE repartosserie ADD CONSTRAINT repartosserie_pk PRIMARY KEY ( idrepartoserie );

CREATE TABLE reproduccionescanciones (
    idreproduccion  NUMBER(10) NOT NULL,
    fechaini        DATE NOT NULL,
    estado          VARCHAR2(20) NOT NULL,
    idcancion       NUMBER(10) NOT NULL,
    idusuario       NUMBER(10) NOT NULL
);

ALTER TABLE reproduccionescanciones ADD CONSTRAINT reproducionescanciones_pk PRIMARY KEY ( idreproduccion );

CREATE TABLE reproduccionespeliculas (
    idreproduccion  NUMBER(10) NOT NULL,
    fechaini        DATE NOT NULL,
    estado          VARCHAR2(10) NOT NULL,
    idpelicula      NUMBER(10) NOT NULL,
    idusuario       NUMBER(10) NOT NULL
);

ALTER TABLE reproduccionespeliculas ADD CONSTRAINT reproduccionespelicula_pk PRIMARY KEY ( idreproduccion );

CREATE TABLE reproduccionesseries (
    idreproduccion  NUMBER(10) NOT NULL,
    fechaini        DATE NOT NULL,
    estado          VARCHAR2(10) NOT NULL,
    idusuario       NUMBER(10) NOT NULL,
    idserie         NUMBER(10) NOT NULL
);

ALTER TABLE reproduccionesseries ADD CONSTRAINT reproduccionesseries_pk PRIMARY KEY ( idreproduccion );

CREATE TABLE sagaspelicula (
    idsaga      NUMBER(10) NOT NULL,
    titulo      VARCHAR2(10) NOT NULL,
    anno        DATE NOT NULL,
    categoria   VARCHAR2(10) NOT NULL,
    genero      VARCHAR2(10) NOT NULL,
    idpelicula  NUMBER(10) NOT NULL
);

ALTER TABLE sagaspelicula ADD CONSTRAINT sagaspelicula_pk PRIMARY KEY ( idsaga );

CREATE TABLE sagasserie (
    idsaga     NUMBER(10) NOT NULL,
    titulo     VARCHAR2(10) NOT NULL,
    anno       DATE NOT NULL,
    categoria  VARCHAR2(10) NOT NULL,
    genero     VARCHAR2(10) NOT NULL,
    idserie    NUMBER(10) NOT NULL
);

ALTER TABLE sagasserie ADD CONSTRAINT sagaserie_pk PRIMARY KEY ( idsaga );

CREATE TABLE series (
    idserie        NUMBER(10) NOT NULL,
    titulo         VARCHAR2(20) NOT NULL,
    anno           NUMBER(5) NOT NULL,
    pais           VARCHAR2(20) NOT NULL,
    estudio        VARCHAR2(20) NOT NULL,
    genero         VARCHAR2(20) NOT NULL,
    clasificacion  VARCHAR2(10) NOT NULL,
    categoria      VARCHAR2(20) NOT NULL,
    duracion       VARCHAR2(10) NOT NULL,
    temporadas     NUMBER(5) NOT NULL,
    iddirector     NUMBER(10) NOT NULL
);

ALTER TABLE series ADD CONSTRAINT series_pk PRIMARY KEY ( idserie );

CREATE TABLE usuarios (
    idusuario        NUMBER(10) NOT NULL,
    nombre           VARCHAR2(20) NOT NULL,
    direccion        VARCHAR2(30) NOT NULL,
    telefono         NUMBER(10) NOT NULL,
    fechanacimiento  DATE NOT NULL,
    genero           VARCHAR2(10) NOT NULL,
    pais             VARCHAR2(20) NOT NULL,
    email            VARCHAR2(30) NOT NULL,
    claveacceso      NUMBER(5) NOT NULL,
    profesion        VARCHAR2(30) NOT NULL,
    fechainclusion   DATE NOT NULL
);

ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( idusuario );

ALTER TABLE canciones
    ADD CONSTRAINT can_mus FOREIGN KEY ( idmusico )
        REFERENCES musicos ( idmusico );

ALTER TABLE canciones
    ADD CONSTRAINT can_prod FOREIGN KEY ( idproductor )
        REFERENCES productores ( idproductor );

ALTER TABLE descargascanciones
    ADD CONSTRAINT descan_can FOREIGN KEY ( idcancion )
        REFERENCES canciones ( idcancion );

ALTER TABLE descargascanciones
    ADD CONSTRAINT descan_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE descargaspeliculas
    ADD CONSTRAINT despel_pel FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( idpelicula );

ALTER TABLE descargaspeliculas
    ADD CONSTRAINT despel_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE descargasseries
    ADD CONSTRAINT desser_ser FOREIGN KEY ( idserie )
        REFERENCES series ( idserie );

ALTER TABLE descargasseries
    ADD CONSTRAINT desser_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE formaspago
    ADD CONSTRAINT formpag_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE membresias
    ADD CONSTRAINT mem_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE peliculas
    ADD CONSTRAINT pel_dir FOREIGN KEY ( iddirector )
        REFERENCES directores ( iddirector );

ALTER TABLE preferenciascanciones
    ADD CONSTRAINT prefcan_can FOREIGN KEY ( idcancion )
        REFERENCES canciones ( idcancion );

ALTER TABLE preferenciascanciones
    ADD CONSTRAINT prefcan_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE preferenciaspeliculas
    ADD CONSTRAINT prefpel_pel FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( idpelicula );

ALTER TABLE preferenciaspeliculas
    ADD CONSTRAINT prefpel_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE preferenciasseries
    ADD CONSTRAINT prefser_ser FOREIGN KEY ( idserie )
        REFERENCES series ( idserie );

ALTER TABLE preferenciasseries
    ADD CONSTRAINT prefser_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE produccionpelicula
    ADD CONSTRAINT prodpel_pel FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( idpelicula );

ALTER TABLE produccionpelicula
    ADD CONSTRAINT prodpel_prod FOREIGN KEY ( idproductor )
        REFERENCES productores ( idproductor );

ALTER TABLE produccionseries
    ADD CONSTRAINT prodser_prod FOREIGN KEY ( idproductor )
        REFERENCES productores ( idproductor );

ALTER TABLE produccionseries
    ADD CONSTRAINT prodser_ser FOREIGN KEY ( idserie )
        REFERENCES series ( idserie );

ALTER TABLE repartospelicula
    ADD CONSTRAINT reparpel_act FOREIGN KEY ( idactor )
        REFERENCES actores ( idactor );

ALTER TABLE repartospelicula
    ADD CONSTRAINT reparpel_pel FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( idpelicula );

ALTER TABLE repartosserie
    ADD CONSTRAINT reparser_act FOREIGN KEY ( idactor )
        REFERENCES actores ( idactor );

ALTER TABLE repartosserie
    ADD CONSTRAINT reparser_ser FOREIGN KEY ( idserie )
        REFERENCES series ( idserie );

ALTER TABLE reproduccionescanciones
    ADD CONSTRAINT reprodcan_can FOREIGN KEY ( idcancion )
        REFERENCES canciones ( idcancion );

ALTER TABLE reproduccionescanciones
    ADD CONSTRAINT reprodcan_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE reproduccionespeliculas
    ADD CONSTRAINT reprodpel_pel FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( idpelicula );

ALTER TABLE reproduccionespeliculas
    ADD CONSTRAINT reprodpel_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE reproduccionesseries
    ADD CONSTRAINT reprodser_ser FOREIGN KEY ( idserie )
        REFERENCES series ( idserie );

ALTER TABLE reproduccionesseries
    ADD CONSTRAINT reprodser_usu FOREIGN KEY ( idusuario )
        REFERENCES usuarios ( idusuario );

ALTER TABLE sagaspelicula
    ADD CONSTRAINT sagpel_pel FOREIGN KEY ( idpelicula )
        REFERENCES peliculas ( idpelicula );

ALTER TABLE sagasserie
    ADD CONSTRAINT sagser_ser FOREIGN KEY ( idserie )
        REFERENCES series ( idserie );

ALTER TABLE series
    ADD CONSTRAINT ser_dir FOREIGN KEY ( iddirector )
        REFERENCES directores ( iddirector );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            25
-- CREATE INDEX                             0
-- ALTER TABLE                             59
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
