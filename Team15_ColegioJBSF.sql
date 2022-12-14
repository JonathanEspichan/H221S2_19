SHOW DATABASES;

CREATE DATABASE dbMatricula;

USE dbMatricula;

CREATE TABLE APODERADO (
    CODAPO char(6)  NOT NULL COMMENT 'Contiene el código del apoderado con todos sus datos.',
    TIPDOCIDEAPO varchar(30)  NOT NULL COMMENT 'Contiene el documento de identidad del Apoderado. ejemplo: DNI, Carner de extranjería, Ruc etc...',
    NOMAPO varchar(50)  NOT NULL COMMENT 'Contiene los nombres de los apoderados.',
    APEAPO varchar(50)  NOT NULL COMMENT 'Contiene los apellidos de los apoderados.',
    CELAPO char(9)  NOT NULL COMMENT 'Contiene el celular de los apoderados.',
    EMAAPO varchar(40)  NOT NULL COMMENT 'Contiene el correo electrónico de los apoderados.',
    DOMAPO varchar(100)  NOT NULL COMMENT 'Contiene el domicilio del estudiante y dentro de este podremos hallar el dirección, provincia, departamento, distrito.',
    GENAPO varchar(10)  NOT NULL COMMENT 'Contiene el genero de apoderado.',
    TRAAPO varchar(50)  NOT NULL COMMENT 'Contiene el trabajo del apoderado.',
    PROAPO varchar(50)  NOT NULL COMMENT 'Contiene la procedencia del apoderado',
    IDIOAPO varchar(50)  NOT NULL COMMENT 'Contiene el idima del apoderado',
    CONVIESTAPO varchar(20)  NOT NULL COMMENT 'Contiene el dato de que si o no convive con el estudiante de manera actual ',
    TAMFAMAPO int  NOT NULL COMMENT 'Contiene el tamaño de familia del con respecto al estudiante. ejemplo: 8, 5, 3, etc...',
    NACAPO varchar(40)  NOT NULL COMMENT 'Contiene la nacionalidad del apoderado.',
    ESTCIVAPO varchar(60)  NOT NULL COMMENT 'Contiene el Estado Civil que se encuentra el apoderado.',
    CONSTRAINT APODERADO_pk PRIMARY KEY (CODAPO)
);

CREATE TABLE ESTUDIANTE (
    CODEST char(8)  NOT NULL COMMENT 'Contiene el código del estudiante con todo sus respectivos datos.',
    TIPDOCIDENEST char(8)  NOT NULL COMMENT 'Contiene el documento de identidad del estudiante. ejemplo: DNI, Carner de extranjería, Ruc etc...',
    NOMEST varchar(50)  NOT NULL COMMENT 'Contiene los nombres del estudiante.',
    APEEST varchar(50)  NOT NULL COMMENT 'Contiene los apellidos del estudiante.',
    CELEST char(9)  NOT NULL COMMENT 'Contiene el numero personal del estudiante.',
    FECNAEST date  NOT NULL COMMENT 'Contiene la fecha de nacimiento del estudiante',
    DOMEST varchar(100)  NOT NULL COMMENT 'Contiene el domicilio del estudiante y dentro de este podremos hallar el dirección, provincia, departamento, distrito.',
    LUGNACEST varchar(80)  NOT NULL COMMENT 'Contiene el lugar de nacimiento del estudiante',
    DEPEST varchar(50)  NOT NULL COMMENT 'Contiene el departamento donde reside el estudiante.',
    EMAEST varchar(50)  NOT NULL COMMENT 'Contiene el correo electrónico personal del Estudiante',
    TIPDOCIDEST varchar(20)  NOT NULL COMMENT 'Contiene el tipo de cocumento de identidad del estudiante.',
    DISEST varchar(30)  NOT NULL COMMENT 'Contiene el dato si el estudiantes vuenta con alguna discapacidad.',
    NACEST varchar(40)  NOT NULL COMMENT 'Contiene la nacionalidad del estudiante.',
    IDIEST varchar(40)  NOT NULL COMMENT 'Contiene el dato del idioma que habla el estudiante.',
    GRAEST varchar(30)  NOT NULL COMMENT 'Contiene el grado del estudiante que se va a matrícular.',
    ESTEDUEST varchar(60)  NOT NULL COMMENT 'Contiene el estado educativo del estudiante ejemplo: (traslado, Regular, Nuevo).',
    CONSTRAINT ESTUDIANTE_pk PRIMARY KEY (CODEST)
);

CREATE TABLE MATRICULA (
    CODMAT char(9)  NOT NULL COMMENT 'contiene el código identificador de la matricula como por ejemplo: Co0001,Co0002 etc....',
    FECHORMAT date  NOT NULL COMMENT 'Contiene la fecha y hora que se realizo la matrícula del estudiante.',
    NUMVACMAT int  NOT NULL COMMENT 'Contiene el Número de Vacantes que ocupa el estudiante, ejemplo: 1,2,3,10 etc...',
    TIPMAT varchar(80)  NOT NULL COMMENT 'Contiene el tipo de matricula en la que puede realizr el estudiante. ejemplo : regular y  excepcional.',
    CODAPO char(6)  NOT NULL COMMENT 'Contiene los datos del apoderado  del estudiante que se va a matrícular.',
    CODEST char(8)  NOT NULL COMMENT 'contiene el código del estudiante que va a matrícularse.',
    CONSTRAINT MATRICULA_pk PRIMARY KEY (CODMAT)
);

CREATE TABLE REGISTRO_I_E_P (
    IDREGIEP int  NOT NULL COMMENT 'contiene la identificaion clave del registro en la IEP.',
    NOMCOLREGIEP varchar(80)  NOT NULL COMMENT 'Contiene el nombre de la institucion educativa al que va pertenecer el Estudiante en este caso Jose Buenaventura Sepúlveda F.',
    CODMAT char(9)  NOT NULL COMMENT 'contiene el identificador de la matricula como por ejemplo: 1,2,3,4,5,6,7,8....',
    CODSECCON char(9)  NOT NULL COMMENT 'Contiene el código identificador de la secretaría consulta',
    CONSTRAINT REGISTRO_I_E_P_pk PRIMARY KEY (IDREGIEP)
);

CREATE TABLE SECRETARIA_CONSULTAS (
    CODSECCON char(9)  NOT NULL COMMENT 'Contiene el código de la secretaría_consulta',
    DNI char(8)  NOT NULL COMMENT 'Contiene el Número de DNI del encargado de la secretaría consulta.',
    NOMSECCON int  NOT NULL COMMENT 'Contiene los Nombres del personal encargado de secretaría consultas.',
    APESECCON int  NOT NULL COMMENT 'Contiene los apellidos del personal encargado de secretaría consultas.',
    CELSECCON int  NOT NULL COMMENT 'Contiene el número de celular del personal encargado de secretaría consultas.',
    EMASECCON int  NOT NULL COMMENT 'Contiene el dato del EMAIL para comuniacarse con el personal encargado de secretaría consultas .',
    CODAPO char(6)  NOT NULL COMMENT 'Contiene el código del apoderado con todos sus datos.',
    CONSTRAINT SECRETARIA_CONSULTAS_pk PRIMARY KEY (CODSECCON)
);

ALTER TABLE MATRICULA ADD CONSTRAINT APODERADO_MATRICULA
    FOREIGN KEY (CODAPO) REFERENCES APODERADO (CODAPO);
    
    ALTER TABLE SECRETARIA_CONSULTAS ADD CONSTRAINT APODERADO_SECRETARIA_CONSULTAS
    FOREIGN KEY (CODAPO) REFERENCES APODERADO (CODAPO);
    
    ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_ESTUDIANTE
    FOREIGN KEY (CODEST) REFERENCES ESTUDIANTE (CODEST);
    
    ALTER TABLE REGISTRO_I_E_P ADD CONSTRAINT MATRICULA_REGISTRO_I_E_P
    FOREIGN KEY (CODMAT) REFERENCES MATRICULA (CODMAT);
    
    ALTER TABLE REGISTRO_I_E_P ADD CONSTRAINT SECRETARIA_CONSULTAS_REGISTRO_I_E_P
    FOREIGN KEY (CODSECCON) REFERENCES SECRETARIA_CONSULTAS (CODSECCON);
