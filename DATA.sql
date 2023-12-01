USE TenisGrandSlamExamen;

INSERT INTO paises (pais) VALUES
('Estados Unidos'),
('Francia'),
('Australia'),
('Gran Bretaña'),
('Alemania');

INSERT INTO ubicaciones (ubicacion, id_pais) VALUES
('Forest Hill', 1),
('Flashing Meadows', 1),
('Heaven Ow Gol',2),
('Sydney',3),
('Roland Garros', 4),
('Wimbledon', 5);

INSERT INTO modalidades (modalidad) VALUES
('Individual masculino'),
('Individual femenino'),
('Dobles maculino'),
('Dobles femenino'),
('Dobles mixtos');

INSERT INTO personas (tipo, nombre, fechaEntrenamiento, id_entrenador) VALUES
('entrenador', 'Pedro', NULL, NULL),
('entrenador', 'Kevin', NULL, NULL),
('jugador', 'Connors', '1979-11-01', 1),
('jugador', 'Gerulaitis', '1979-11-01', 2),
('jugador', 'Richard', '1987-11-01', 1),
('jugador', 'Noah', '1989-11-01', 1),
('jugador', 'Noah', '1989-12-01', 2),
('jugador', 'Mandlikova', '1989-11-01', 2),
('jugador', 'Borg', '1990-12-01', 1),
('arbitro','Wilkinson', NULL, NULL),
('arbitro','Juan', NULL, NULL);

INSERT INTO torneos (anio, numeroTorneo, id_ubicacion, id_modalidad, id_ganador) VALUES
(1979, 1, 5, 1, 3),
(1987, 1, 5, 2, 5),
(1990, 1, 3, 5, NULL),
(1991, 2, 3, 5, NULL),
(1992, 3, 3, 5, NULL),
(1993, 4, 3, 5, NULL),
(1994, 1, 6, 1, 9),
(1995, 2, 6, 1, 9);

INSERT INTO fases (fase) VALUES
('Octavos de final'),
('Cuartos de final'),
('Semifinal'),
('Final');

INSERT INTO fase_torneo (id_torneo, id_fase, premio) VALUES
(1,1,3000),
(1,2,6000),
(1,3,1000),
(1,4,7000),
(2,1,5000),
(2,2,5000),
(2,3,5000),
(2,4,5000),
(3,1,5000),
(3,2,5000),
(3,3,5000),
(3,4,5000),
(7,1,500000),
(7,2,500000),
(7,3,500000),
(7,4,500000);

INSERT INTO partidos (id_torneo, id_arbitro) VALUES
(1, 10),
(2, 11),
(3, 10),
(4, 11),
(5, 10),
(6, 11);

INSERT INTO partido_jugador (id_partido, id_jugador, resultado) VALUES
(1, 3, '6-3 4-6'),
(1, 4, '7-5 6-0'),
(3, 6, '1-0 5-0'),
(3, 8, '9-2 2-0'),
(4, 6, '4-4 8-1'),
(4, 8, '8-5 9-5'),
(5, 6, '3-0 2-1'),
(5, 8, '5-8 2-8'),
(6, 6, '0-2 6-7'),
(6, 8, '2-6 1-3');

INSERT INTO nacionalidades (nacionalidad) VALUES
('Colombiana'),
('Americana'),
('Italiana');

INSERT INTO nacionalidad_jugador (id_jugador, id_nacionalidad) VALUES
(1, 1),
(2, 2),
(3, 3);