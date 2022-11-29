CREATE TABLE roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

CREATE TABLE usuario (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(100),
    pass VARCHAR(100),
    idRoles BIGINT
);

CREATE TABLE tipo_institucion (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE institucion (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    idTipoInstitucion BIGINT
);

CREATE TABLE estado (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE municipio (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    idEstado BIGINT
);

CREATE TABLE tipo_preguntas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

CREATE TABLE tipo_respuestas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

CREATE TABLE preguntas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    idTipoPregunta BIGINT
);

CREATE TABLE respuestas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    idTipoRespuesta BIGINT
);

CREATE TABLE preguntas_respuestas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    puntaje BIGINT,
    idPregunta BIGINT,
    idRespuesta BIGINT
);

CREATE TABLE personas (
    cedula BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    direccion VARCHAR(100),
    fecha_nacimiento DATE,
    telefono VARCHAR(100),
    idUsuario BIGINT,
    idMunicipio BIGINT,
    idInstitucion BIGINT
);

CREATE TABLE personas_preguntas_respuestas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    intento BIGINT,
    terminado BOOLEAN,
    cedula_persona BIGINT,
    idPreguntasRespuestas BIGINT
);

CREATE TABLE tipo_resultados (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
);

CREATE TABLE resultados (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    idTipoResultado BIGINT
    puntosMax BIGINT,
    puntosMin BIGINT
);

CREATE TABLE links (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150),
    descripcion VARCHAR(150),
    url VARCHAR(500)
);

CREATE TABLE libros (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150),
    descripcion VARCHAR(150)
);

CREATE TABLE cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150),
    descripcion VARCHAR(150),
    url VARCHAR(500)
);

CREATE TABLE resultados_link (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    idLinks BIGINT,
    idResultados BIGINT
);

CREATE TABLE resultados_libros (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    idLibros BIGINT,
    idResultados BIGINT
);

CREATE TABLE resultados_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    idCursos BIGINT,
    idResultados BIGINT
);


CREATE TABLE resultados_personas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    cedula_persona BIGINT,
    idResultadosLinks BIGINT,
    idResultadosLibros BIGINT,
    idResultadosCursos BIGINT
);

ALTER TABLE usuario ADD CONSTRAINT FK_ROL_USU FOREIGN KEY (idRoles) REFERENCES roles(id);

ALTER TABLE institucion ADD CONSTRAINT FK_TIN_INS FOREIGN KEY (idTipoInstitucion) REFERENCES tipo_institucion(id);

ALTER TABLE municipio ADD CONSTRAINT FK_EST_MUN FOREIGN KEY (idEstado) REFERENCES estado(id);

ALTER TABLE preguntas ADD CONSTRAINT FK_TPR_PRE FOREIGN KEY (idTipoPregunta) REFERENCES tipo_preguntas(id);
ALTER TABLE respuestas ADD CONSTRAINT FK_TRE_RES FOREIGN KEY (idTipoRespuesta) REFERENCES tipo_respuestas(id);
ALTER TABLE preguntas_respuestas ADD CONSTRAINT FK_PRE_PRERES FOREIGN KEY (idPregunta) REFERENCES preguntas(id);
ALTER TABLE preguntas_respuestas ADD CONSTRAINT FK_RES_PRERES FOREIGN KEY (idRespuesta) REFERENCES respuestas(id);

ALTER TABLE personas ADD CONSTRAINT FK_USU_PER FOREIGN KEY (idUsuario) REFERENCES usuario(id);
ALTER TABLE personas ADD CONSTRAINT FK_MUN_PER FOREIGN KEY (idMunicipio) REFERENCES municipio(id);
ALTER TABLE personas ADD CONSTRAINT FK_INS_PER FOREIGN KEY (idInstitucion) REFERENCES institucion(id);

ALTER TABLE personas_preguntas_respuestas ADD CONSTRAINT FK_PER_PPR FOREIGN KEY (cedula_persona) REFERENCES personas(cedula);
ALTER TABLE personas_preguntas_respuestas ADD CONSTRAINT FK_TIN_PPR FOREIGN KEY (idPreguntasRespuestas) REFERENCES preguntas_respuestas(id);

ALTER TABLE resultados_link ADD CONSTRAINT FK_RES_LIN FOREIGN KEY (idLinks) REFERENCES links(id);
ALTER TABLE resultados_link ADD CONSTRAINT FK_RESU_LIN FOREIGN KEY (idResultados) REFERENCES resultados(id);

ALTER TABLE resultados_libros ADD CONSTRAINT FK_RES_LIB FOREIGN KEY (idLibros) REFERENCES libros(id);
ALTER TABLE resultados_libros ADD CONSTRAINT FK_RESU_LIB FOREIGN KEY (idResultados) REFERENCES resultados(id);

ALTER TABLE resultados_cursos ADD CONSTRAINT FK_RES_CUR FOREIGN KEY (idCursos) REFERENCES cursos(id);
ALTER TABLE resultados_cursos ADD CONSTRAINT FK_RESU_CUR FOREIGN KEY (idResultados) REFERENCES resultados(id);

ALTER TABLE resultados_personas ADD CONSTRAINT FK_PER_CPER FOREIGN KEY (cedula_persona) REFERENCES personas(cedula);
ALTER TABLE resultados_personas ADD CONSTRAINT FK_RESU_CPER FOREIGN KEY (idResultado) REFERENCES resultados(id);

ALTER TABLE resultados ADD CONSTRAINT FK_TRE_RESS FOREIGN KEY (idTipoResultado) REFERENCES tipo_resultados(id);
