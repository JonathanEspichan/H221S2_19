SHOW DATABASES;

CREATE DATABASE dbMatricula2;

USE dbMatricula2;

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

DESCRIBE APODERADO;

SELECT*FROM APODERADO;

INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0001', 'DNI', 'Junior Ismael', 'Espichan Quinto', '902160662', 'juniorismaelespichanquinto@gmail.com', 'AA.HH. Nuevo Horizonte MZ R LT 10', 'Masculino', 'Abogado', 'Cañete', 'Español','si', '4', 'Peruano', 'Casado');

INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0002', 'DNI', 'Keyla Sofia', 'Quispe Rodrigues', '912256099', 'keylasofiaquisperodrigues@gmail.com', 'AA.HH. El Progreso MZ C LT 20', 'Femenino', 'Enfermeria', 'Cañete', 'Español','si', '3', 'Peruana', 'Casada');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0003', 'CARNET EXTRANJERIA', 'Jesus Mario', 'Guimenes Mendoza', '985140419', 'mariojesus@gmail.com', 'Lamos Larrea MZ G LT 10', 'Masculino', 'Ambulante', 'Caracas', 'Español','si', '6', 'Verano', 'Soltero');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0004', 'DNI', 'Victorino Ismael', 'Espichan Flores', '963207661', 'victorinoIsmael@gmail.com', 'AA.HH. El progreso MZ R LT 09', 'Masculino', 'Servidor Público', 'Nuevo imperial', 'Español','si', '8', 'Peruano', 'Soltero');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0005', 'DNI', 'Alicia Oswalda', 'Quinto Garay', '924980939', 'aliciaquinto@gmail.com', 'AA.HH. El progreso MZ R LT 09', 'Femenino', 'Ama de Casa', 'Imperial', 'Español','si', '8', 'Peruana', 'soltera');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0006', 'CANERT EXTRANJERIA', 'María Carmen', 'López Hernández', '929428390', 'carmenlopez@gmail.com', 'San jose MZ F LT 02', 'Femenino', 'Español', 'Bogota', 'Español','si', '2', 'Colombiana', 'soltera');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0007', 'DNI', 'Luis fernando', 'Pelaes Quispe', '902160662', 'luispelaesquispe@gmail.com', 'Las Casuarinas MZ C LT 15', 'Masculino', 'Arquitecto', 'Quilmana', 'Español','no', '6', 'Peruano', 'divorciado');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0008', 'CARNET EXTRAJERIA', 'Mishiel Khaterine', 'Garcia Quiroz', '920030251', 'GarciaQuirozKhaterine@gmail.com', 'AA.HH. Cristo vive MZ T LT 01', 'Femenino', 'Secretaria', 'Miami', 'Inglés','si', '3', 'Estadounidense', 'Casada');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0009', 'DNI', 'Kenyi Jhampierre', 'Gamboa Mamani', '940894077', 'kenyi.gamboa@vallegrande.edu.pe', 'Asunción 08 MZ Z LT 10', 'Masculino', 'Obrero', 'Ayacucho', 'Español/Quechua','si', '6', 'Peruano', 'Casado');
    
INSERT INTO APODERADO
    (CODAPO, TIPDOCIDEAPO, NOMAPO, APEAPO, CELAPO, EMAAPO, DOMAPO,  GENAPO, TRAAPO, PROAPO, IDIOAPO, CONVIESTAPO, TAMFAMAPO, NACAPO, ESTCIVAPO )
VALUES
    ('co0010', 'DNI', 'Anghela', 'Rodriguez Barrios', '973304035', 'anghela.rodriguez@vallegrande.edu.pe', 'lindas Rosas Mz D lt 05', 'Femenino', 'Empresaria', 'Cañete', 'Español','si', '4', 'Peruana', 'soltera');


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

DESCRIBE ESTUDIANTE;

SELECT*FROM ESTUDIANTE;


INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0001', 'DNI', 'Dilan Andy', 'Martínes Aguirre', '943514991', '2008-08-14', 'AA.HH. Nuevo Horizonte MZ P LT 20', 'Iquitos', 'Lima', 'dilanaguirre@gmail.com', 'DNI','NO', 'Peruano', 'Español', '2do secundaria', 'Regular');
    
    
    INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0002', 'DNI', 'Jose Maria', 'Quispe Luyo', '903271126', '2005-06-25', 'Unanue MZ T LT 03', 'San vicente', 'Lima', 'joseQuispeluyo@gmail.com', 'DNI','NO', 'Peruano', 'español', '5to secundaria', 'Repitente');
    
    
    INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0003', 'DNI', 'Sebastian Ocares', 'Aquije Mallqui', '989275854', '2006-02-28', 'AA.HH. Cristo vive MZ P LT 10', 'Imperial', 'Lima', 'sebastianaquijemallqui@gmail.com', 'DNI','NO', 'Peruano', 'español', '5ro secundaria', 'Regular');
   
   
   INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0004', 'DNI', 'Brayan Aldair', 'Cuba Palacios', '9971168550', '2005-10-19', 'AA.HH. El Progreso MZ A LT 30', 'Yauyos', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '5to secundaria', 'Repitente');


INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0005', 'DNI', 'Cristian Jesus', 'Adriano Loayza', '978412584', '2005-08-26', 'Las viñas MZ G LT 02', 'Nuevo imperial', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '5to secundaria', 'Repitente');
    
    
    INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0006', 'DNI', 'Julio Fernando', 'Chavez de la Cruz', '985362401', '2005-11-30', 'URB Lindas rosas Mz E LT 12', 'Cañete', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '5to secundaria', 'Repitente');
    
    
    INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0007', 'DNI', 'Juan Pablo', 'Quispe Guimenes', '94358904', '2007-12-31', 'AA.HH. El progreso MZ C LT 23', 'cañete', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '2ro secundaria', 'Nuevo');
    
    
    INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0008', 'DNI', 'Eduardo Terry', 'Espinoza Palona', '979940972', '2008-04-11', 'URB Tercer Mundo MZ J LT 34', 'Cañete', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '3ro secundaria', 'Nuevo');
    
    
INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0009', 'DNI', 'Darry Dixon', 'Quiñones Carriso', '960777638', '2005-06-20', 'Cerro alegre Mz C LT 09', 'Nuevo imperial', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '5ro secundaria', 'Repitente');
    
    
INSERT INTO ESTUDIANTE
    (CODEST, TIPDOCIDENEST, NOMEST, APEEST, CELEST, FECNAEST,  DOMEST,  LUGNACEST, DEPEST, EMAEST, TIPDOCIDEST, DISEST, NACEST , IDIEST, GRAEST, ESTEDUEST)
VALUES
    ('co0010', 'DNI', 'Angel Charls', 'Ramón chinchay', '902164041', '2008-07-18', 'Carmen Alto Mz R LT 12', 'Nuevo imperial', 'Lima', 'isabelaguirre@gmail.com', 'DNI','NO', 'Peruano', 'español', '3ro secundaria', 'Nuevo');
    
    
CREATE TABLE MATRICULA (
    CODMAT char(9)  NOT NULL COMMENT 'contiene el código identificador de la matricula como por ejemplo: Co0001,Co0002 etc....',
    FECHORMAT date  NOT NULL COMMENT 'Contiene la fecha y hora que se realizo la matrícula del estudiante.',
    NUMVACMAT int  NOT NULL COMMENT 'Contiene el Número de Vacantes que ocupa el estudiante, ejemplo: 1,2,3,10 etc...',
    TIPMAT varchar(80)  NOT NULL COMMENT 'Contiene el tipo de matricula en la que puede realizr el estudiante. ejemplo : regular y  excepcional.',
    CODAPO char(6)  NOT NULL COMMENT 'Contiene los datos del apoderado  del estudiante que se va a matrícular.',
    CODEST char(8)  NOT NULL COMMENT 'contiene el código del estudiante que va a matrícularse.',
    CONSTRAINT MATRICULA_pk PRIMARY KEY (CODMAT)
);

DESCRIBE MATRICULA;

SELECT*FROM MATRICULA;

INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0001', '2022-09-04', '3', 'regular', 'co0009', 'co0004');
    
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0002', '2022-12-30', '8', 'Excepcional', 'co0007', 'co0008');
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0003', '2022-11-13', '9', 'regular', 'co0004', 'co0001');
    
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0004', '2022-11-23', '10', 'regular', 'co0001', 'co0003');
    
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0005', '2022-11-25', '15', 'regular', 'co0006', 'co0006');
    
    
    INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0006', '2022-12-15', '17', 'Excepcional', 'co0002', 'co0002');
    
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0007', '2022-12-18', '19', 'regular', 'co0007', 'co0004');

    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0008', '2022-12-19', '20', 'regular', 'co0004', 'co0009');
    
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0009', '2023-1-05', '30', 'regular', 'co0003', 'co0010');
    
    
INSERT INTO MATRICULA
    (CODMAT, FECHORMAT, NUMVACMAT, TIPMAT, CODAPO, CODEST)
VALUES
    ('co0010', '2023-2-04', '31', 'Excepcional', 'co0010', 'co0005');

    

CREATE TABLE REGISTRO_I_E_P (
    IDREGIEP int  NOT NULL COMMENT 'contiene la identificaion clave del registro en la IEP.',
    NOMCOLREGIEP varchar(80)  NOT NULL COMMENT 'Contiene el nombre de la institucion educativa al que va pertenecer el Estudiante en este caso Jose Buenaventura Sepúlveda F.',
    CODMAT char(9)  NOT NULL COMMENT 'contiene el identificador de la matricula como por ejemplo: 1,2,3,4,5,6,7,8....',
    CODSECCON char(9)  NOT NULL COMMENT 'Contiene el código identificador de la secretaría consulta',
    CONSTRAINT REGISTRO_I_E_P_pk PRIMARY KEY (IDREGIEP)
);

DESCRIBE REGISTRO_I_E_P;

SELECT*FROM REGISTRO_I_E_P;

INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('1', 'José Buenaventura Sepúlveda', 'co0001', 'C00100');
    
INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('2', 'José Buenaventura Sepúlveda', 'co0002', 'C00101');


INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('3', 'José Buenaventura Sepúlveda', 'co0003', 'C00102');


INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('4', 'José Buenaventura Sepúlveda', 'co0004', 'C00103');


INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('5', 'José Buenaventura Sepúlveda', 'co0005', 'C00104');


INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('6', 'José Buenaventura Sepúlveda', 'co0006', 'C00105');



INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('7', 'José Buenaventura Sepúlveda', 'co0007', 'C00106');


INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('8', 'José Buenaventura Sepúlveda', 'co0008', 'C00107');


INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('9', 'José Buenaventura Sepúlveda', 'co0009', 'C00108');



INSERT INTO REGISTRO_I_E_P
    (IDREGIEP, NOMCOLREGIEP, CODMAT, CODSECCON)
VALUES
    ('10', 'José Buenaventura Sepúlveda', 'co0010', 'C00109');
    
    
CREATE TABLE SECRETARIA_CONSULTAS1 (
    CODSECCON char(9)  NOT NULL COMMENT 'Contiene el código de la secretaría_consulta',
    DNI char(8)  NOT NULL COMMENT 'Contiene el Número de DNI del encargado de la secretaría consulta.',
    NOMSECCON varchar(60)  NOT NULL COMMENT 'Contiene los Nombres del personal encargado de secretaría consultas.',
    APESECCON varchar(60)  NOT NULL COMMENT 'Contiene los apellidos del personal encargado de secretaría consultas.',
    CELSECCON char(9)  NOT NULL COMMENT 'Contiene el número de celular del personal encargado de secretaría consultas.',
    EMASECCON varchar(80) NOT NULL COMMENT 'Contiene el dato del EMAIL para comuniacarse con el personal encargado de secretaría consultas .',
    CODAPO char(6)  NOT NULL COMMENT 'Contiene el código del apoderado con todos sus datos.',
    CONSTRAINT SECRETARIA_CONSULTAS_pk PRIMARY KEY (CODSECCON)
);

DESCRIBE SECRETARIA_CONSULTAS1;

SELECT*FROM SECRETARIA_CONSULTAS1;

INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00001', '71889783', 'Camila Lilia', 'Quispe Aguirre', '985140419', 'camilaquispeaguirre@gmail.com', 'co0001');
    

INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00002', '66382913', 'jose Miguel', 'Ochoa chanti', '980145080', 'joseochoa@vallegrande.edu.pe', 'co0002');
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00003', '51478926', 'Maria josé', 'Pinedo llocla', '927698430', 'mariapinedo@gmail.com', 'co0003');
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00004', '15458953', 'Flor kathy', 'Luyo Cueva', '980366819', 'Kathyluyo@gmail.com', 'co0004');
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00005', '61364923', 'yens junior', 'Cortes Ortiz ', '985140419', 'yenscortes@gmail.com', 'co0005');
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00006', '78294023', 'mishiel vivian', 'chinchay gutierres', '985140419', 'Mishielgutierres@gmail.com', 'co0006');
    
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00007', '69842343', 'Maricielo de los Angeles', 'de la cruz Garcia', '985140419', 'maricielogarcia@gmail.com', 'co0007');
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00008', '62889983', 'Andres Miguel', 'luyo Cama', '991692579', 'andres.luyo@vallegrande.edu.pe', 'co0008');
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00009', '79627398', 'Naomi ', 'Muñoz Vilchez', '985140419', 'Naomivilchez@gmail.com', 'co0009');
    
    
INSERT INTO SECRETARIA_CONSULTAS1
    (CODSECCON, DNI, NOMSECCON, APESECCON, CELSECCON, EMASECCON, CODAPO)
VALUES
    ('C00010', '61563890', 'Fatima Estefani', 'Matos Guando', '982017053', 'fmatos@vallegrande.edu.pe', 'co0010');
    
    


    
    
    
    
    