DROP DATABASE IF EXISTS TenisGrandSlamExamen;
CREATE DATABASE TenisGrandSlamExamen;
USE TenisGrandSlamExamen;

CREATE TABLE paises (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(20) UNIQUE
);
CREATE TABLE ubicaciones (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ubicacion VARCHAR(50) UNIQUE,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES paises (id)
);

CREATE TABLE modalidades (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    modalidad VARCHAR(20) UNIQUE
);

CREATE TABLE personas (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('jugador','arbitro','entrenador') NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fechaEntrenamiento DATE,
    id_entrenador INT,
    FOREIGN KEY (id_entrenador) REFERENCES personas (id)
);

CREATE TABLE torneos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    anio YEAR,
    numeroTorneo INT NOT NULL,
    id_ubicacion INT NOT NULL,
    id_modalidad INT NOT NULL,
    id_ganador INT,
    FOREIGN KEY (id_ubicacion) REFERENCES ubicaciones (id),
    FOREIGN KEY (id_modalidad) REFERENCES modalidades (id),
    FOREIGN KEY (id_ganador) REFERENCES personas (id)
);

CREATE TABLE fases (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fase VARCHAR(20) UNIQUE
);

CREATE TABLE fase_torneo (
    id_torneo INT NOT NULL,
    id_fase INT NOT NULL,
    premio DOUBLE NOT NULL,
    PRIMARY KEY (id_torneo, id_fase),
    FOREIGN KEY (id_torneo) REFERENCES torneos (id),
    FOREIGN KEY (id_fase) REFERENCES fases (id)
);

CREATE TABLE partidos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_torneo INT NOT NULL,
    id_arbitro INT NOT NULL,
    FOREIGN KEY (id_torneo) REFERENCES torneos (id),
    FOREIGN KEY (id_arbitro) REFERENCES personas (id)
);

CREATE TABLE partido_jugador (
    id_partido INT NOT NULL,
    id_jugador INT NOT NULL,
    resultado VARCHAR(11),
    PRIMARY KEY (id_partido, id_jugador),
    FOREIGN KEY (id_partido) REFERENCES partidos (id),
    FOREIGN KEY (id_jugador) REFERENCES personas (id)
);

CREATE TABLE nacionalidades(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nacionalidad VARCHAR(20) UNIQUE
);

CREATE TABLE nacionalidad_jugador (
    id_jugador INT NOT NULL,
    id_nacionalidad INT NOT NULL,
    PRIMARY KEY (id_jugador, id_nacionalidad),
    FOREIGN KEY (id_jugador) REFERENCES personas (id),
    FOREIGN KEY (id_nacionalidad) REFERENCES nacionalidades (id)
);