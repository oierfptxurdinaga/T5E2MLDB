INSERT INTO DENBORALDI (denboraldi_id, urtea) VALUES (1, 2024);

-- 10 EQUIPOS
INSERT INTO TALDE (talde_id, izena, herria, presidentea) VALUES 
(1, 'Barça Futsal', 'Barcelona', 'Joan Laporta'),
(2, 'ElPozo Murcia', 'Murcia', 'José A. Bolarín'),
(3, 'Inter Movistar', 'Madrid', 'José M. Saorín'),
(4, 'Palma Futsal', 'Mallorca', 'Tomeu Quetglas'),
(5, 'Jaén Paraíso', 'Jaén', 'Germán Aguayo'),
(6, 'Xota FS', 'Navarra', 'Tatono Arregui'),
(7, 'Jimbee Cartagena', 'Cartagena', 'M.Á. Jiménez'),
(8, 'Peñíscola', 'Castellón', 'Juan Vizcarro'),
(9, 'Burela FS', 'Lugo', 'Manuel Blanco'),
(10, 'Córdoba Patrimonio', 'Córdoba', 'García Román');

-- INSCRIPCIÓN: Para tener 10 partidos exactos (todos contra todos), participan 5 equipos.
INSERT INTO TALDE_DENBORALDIA (denboraldi_id, talde_id) VALUES 
(1,1), (1,2), (1,3), (1,4), (1,5);

-- JUGADORES (Plantillas para los 10 equipos - aprox 12 por equipo)
INSERT INTO JOKALARI (izena, abizenak, jaiotze_urtea) VALUES
-- Barça (1-12)
('Miquel', 'Feixas', '1997-09-04'), ('Didac', 'Plana', '1990-05-22'), ('Antonio', 'Pérez', '2000-10-10'), ('André', 'Coelho', '1993-10-30'),
('Sergio', 'Lozano', '1988-11-09'), ('Dyego', 'Zuffo', '1989-08-05'), ('Adolfo', 'Fernández', '1993-05-19'), ('Catela', 'Juanjo', '1995-04-14'),
('Matheus', 'Rodrigues', '1996-10-03'), ('Erick', 'Mendonça', '1995-07-21'), ('Pito', 'Guisel', '1991-11-06'), ('Alex', 'Yepes', '1989-03-12'),
-- ElPozo (13-24)
('Juanjo', 'Angosto', '1985-08-19'), ('Edu', 'Sousa', '1996-08-15'), ('Felipe', 'Valerio', '1993-07-08'), ('Marlon', 'Oliveira', '1987-12-28'),
('Marcel', 'Marques', '1996-07-26'), ('Gadeia', 'Fabricio', '1988-06-14'), ('David', 'Álvarez', '1998-02-14'), ('Ricardo', 'Mayor', '2000-02-21'),
('Esteban', 'Guerrero', '1995-04-14'), ('Rafa', 'Santos', '1990-09-21'), ('Bruno', 'Taffy', '1990-03-30'), ('Eric', 'Pérez', '1997-02-10'),
-- Inter (25-36)
('Jesús', 'Herrero', '1986-11-04'), ('Jesús', 'García', '1999-02-05'), ('Raya', 'José Javier', '1997-01-01'), ('Humberto', 'De Araujo', '1986-11-24'),
('Cecilio', 'Morales', '1992-07-06'), ('Rubi', 'Lemos', '1987-11-13'), ('Terry', 'Prestjord', '1993-01-01'), ('Kaito', 'Eto', '1998-01-01'),
('Sepe', 'García', '1990-11-04'), ('Drahovsky', 'Tomas', '1992-10-07'), ('Raúl', 'Gómez', '1995-10-25'), ('Fits', 'Rafael', '1992-05-23'),
-- Palma (37-48)
('Luan', 'Muller', '1993-03-17'), ('Carlos', 'Barrón', '1987-10-01'), ('Rómulo', 'Alves', '1986-09-28'), ('Chaguinha', 'Bruno', '1988-07-25'),
('Moslem', 'Oladghobad', '1995-11-29'), ('Cleber', 'Gomes', '1997-01-06'), ('Rivillos', 'Mario', '1989-12-13'), ('Neguinho', 'Joao', '2000-07-12'),
('Bruno', 'Gomes', '1996-01-01'), ('Gordillo', 'Jesús', '2001-02-08'), ('Tayebi', 'Hossein', '1988-09-29'), ('Fabinho', 'Gomes', '2001-11-29'),
-- Jaén (49-60)
('Espindola', 'Carlos', '1993-07-12'), ('Dudu', 'Eduardo', '1996-02-15'), ('Taborda', 'Pablo', '1986-09-02'), ('Menzeguez', 'Gerardo', '1993-04-23'),
('Alan', 'Brandi', '1987-11-24'), ('Mati', 'Rosa', '1995-09-18'), ('Michel', 'Moya', '1997-02-02'), ('Cesar', 'Velasco', '1998-05-30'),
('Chino', 'Javier', '1991-11-26'), ('Renato', 'Lopes', '1997-12-15'), ('Helder', 'Goncalves', '2000-03-25'), ('Nem', 'Everson', '1995-06-12'),
-- Xota (61-72)
('Asier', 'Llamas', '1993-05-15'), ('Oihan', 'Sanchez', '2001-01-20'), ('Tony', 'Escribano', '1998-04-14'), ('Juninho', 'Roberto', '1995-06-12'),
('Linhares', 'Fabinho', '1996-08-22'), ('Roberto', 'Martil', '1986-02-21'), ('Geraghty', 'Braulio', '1994-11-12'), ('Dani', 'Zurdo', '2000-08-08'),
('Pachu', 'Alberto', '1992-04-12'), ('Ion', 'Cerviño', '2002-11-20'), ('Iosu', 'Mendell', '2003-01-30'), ('Josu', 'Mendive', '2001-07-15'),
-- Cartagena (73-84)
('Chemi', 'Oliver', '1996-02-20'), ('Chispi', 'Molina', '1999-05-12'), ('Bebe', 'Rafael', '1990-06-12'), ('Mellado', 'Miguel', '1999-07-23'),
('Jesus', 'Izquierdo', '1991-10-10'), ('Tomaz', 'Braga', '1990-09-12'), ('Lucao', 'Vinicius', '1996-03-12'), ('Waltinho', 'Walter', '1991-11-27'),
('Juanan', 'Moraleja', '1998-06-25'), ('Javi', 'Minguez', '1996-07-17'), ('Pablo', 'Ramirez', '2001-02-25'), ('Motta', 'Felipe', '1999-12-11'),
-- Peñiscola (85-96)
('Gus', 'Lopez', '1989-01-20'), ('Mati', 'Starna', '1999-02-15'), ('Plaza', 'David', '2000-03-12'), ('Juanqui', 'Fernandez', '1988-06-20'),
('Pani', 'Francisco', '1997-04-12'), ('Aicardo', 'Jesus', '1988-12-04'), ('Quintela', 'Diego', '1991-08-06'), ('Saladié', 'Carles', '1995-10-12'),
('Elías', 'Beltran', '2001-05-15'), ('Luciano', 'Gaudio', '1998-09-22'), ('Sancho', 'Victor', '2002-01-11'), ('Jose', 'Mario', '1999-08-08'),
-- Burela (97-108)
('Michal', 'Kaluza', '1998-05-20'), ('Bruno', 'García', '1999-01-01'), ('Lucho', 'González', '1995-01-01'), ('Isma', 'Vázquez', '1996-01-01'),
('David', 'Pazos', '1993-01-01'), ('Alex', 'Diz', '1995-01-01'), ('Antón', 'Arnejo', '2001-01-01'), ('Nito', 'García', '2002-01-01'),
('Rikelme', 'Da Silva', '2000-01-01'), ('Malaguti', 'Alberto', '1997-01-01'), ('Pitero', 'Luis', '1999-01-01'), ('Charly', 'López', '1998-01-01'),
-- Córdoba (109-120)
('Fabio', 'Alvira', '1990-01-01'), ('Víctor', 'Cano', '2000-01-01'), ('Mykytiuk', 'Mykola', '1996-01-01'), ('Mareco', 'Damián', '1994-01-01'),
('Zequi', 'Méndez', '1992-01-01'), ('Pulinho', 'Da Silva', '1998-01-01'), ('Perin', 'Lucas', '1997-01-01'), ('Antoniazzi', 'Tiago', '1999-01-01'),
('Kenji', 'Shimizu', '1997-01-01'), ('Muhammad', 'Osamanmusa', '1998-01-01'), ('Kaué', 'Da Silva', '2000-01-01'), ('Guilherme', 'Santos', '2001-01-01');

-- VINCULACIÓN JUGADORES A EQUIPOS (Todos los jugadores del 1 al 120)
INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 1, 1, jokalari_id, '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 1 AND 12;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 2, 1, (jokalari_id-12), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 13 AND 24;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 3, 1, (jokalari_id-24), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 25 AND 36;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 4, 1, (jokalari_id-36), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 37 AND 48;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 5, 1, (jokalari_id-48), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 49 AND 60;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 6, 1, (jokalari_id-60), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 61 AND 72;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 7, 1, (jokalari_id-72), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 73 AND 84;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 8, 1, (jokalari_id-84), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 85 AND 96;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 9, 1, (jokalari_id-96), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 97 AND 108;

INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data)
SELECT jokalari_id, 10, 1, (jokalari_id-108), '2024-08-01' FROM JOKALARI WHERE jokalari_id BETWEEN 109 AND 120;

-- ======================================================
-- 3. CALENDARIO 2024 (EXACTAMENTE 10 PARTIDOS)
-- Nota: Para que sean 10 partidos exactos todos contra todos, juegan los equipos 1 al 5.
-- ======================================================

-- 5 Jornadas (Cada equipo descansa 1 vez).
INSERT INTO JARDUNALDI (jardunaldi_id, denboraldi_id, jardunaldi_zbk) VALUES 
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5);

-- JORNADA 1 (Descansa el 5)
INSERT INTO PARTIDU (jardunaldia, talde_lokala, kanpoko_talde, golak_etxeko, golak_kanpoko, eguna) VALUES 
(1, 1, 2, 4, 3, '2024-10-05'),
(1, 3, 4, 2, 2, '2024-10-05');

-- JORNADA 2 (Descansa el 1)
INSERT INTO PARTIDU (jardunaldia, talde_lokala, kanpoko_talde, golak_etxeko, golak_kanpoko, eguna) VALUES 
(2, 2, 3, 1, 5, '2024-10-12'),
(2, 4, 5, 3, 3, '2024-10-12');

-- JORNADA 3 (Descansa el 2)
INSERT INTO PARTIDU (jardunaldia, talde_lokala, kanpoko_talde, golak_etxeko, golak_kanpoko, eguna) VALUES 
(3, 5, 1, 0, 4, '2024-10-19'),
(3, 3, 4, 1, 2, '2024-10-19');

-- JORNADA 4 (Descansa el 3)
INSERT INTO PARTIDU (jardunaldia, talde_lokala, kanpoko_talde, golak_etxeko, golak_kanpoko, eguna) VALUES 
(4, 1, 4, 6, 6, '2024-10-26'),
(4, 2, 5, 2, 1, '2024-10-26');

-- JORNADA 5 (Descansa el 4)
INSERT INTO PARTIDU (jardunaldia, talde_lokala, kanpoko_talde, golak_etxeko, golak_kanpoko, eguna) VALUES 
(5, 3, 1, 3, 2, '2024-11-02'),
(5, 5, 3, 4, 5, '2024-11-02');

-- USUARIOS
INSERT INTO ERABILTZAILEA (erabiltzaile, pasahitza, email, izena, abizenak) VALUES 
('admin_nagusia', 'admin123', 'admin@fnfs.eus', 'Jon', 'Agirre'),
('arbitro_01', 'ref2024', 'arbitro1@fnfs.eus', 'Mikel', 'Lertxundi');

INSERT INTO ADMINISTRARIA_ERAB VALUES (1, 'Super Admin');
INSERT INTO ARBITRO_ERAB VALUES (2, 'ARB-001');

INSERT INTO JOKALARI (izena, abizenak, jaiotze_urtea) VALUES ('Fitxa', 'Berria', '2000-01-01');
INSERT INTO JOKALARI_TALDEA (jokalari_id, talde_id, denboraldi_id, dorsala, sarrera_data) VALUES 
((SELECT jokalari_id FROM JOKALARI WHERE izena='Fitxa'), 10, 1, 99, '2024-12-01');