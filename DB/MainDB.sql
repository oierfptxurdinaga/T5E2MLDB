DROP DATABASE IF EXISTS fnfs;
CREATE DATABASE fnfs;
USE fnfs;

CREATE TABLE DENBORALDI (
    denboraldi_id INT(4) AUTO_INCREMENT PRIMARY KEY,
    urtea YEAR NOT NULL UNIQUE
) 

CREATE TABLE TALDE (
    talde_id INT(4) AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(100) NOT NULL,
    herria VARCHAR(100),
    presidentea VARCHAR(100)
) 

CREATE TABLE TALDE_DENBORALDIA (
    denboraldi_id INT(4),
    talde_id INT(4),
    PRIMARY KEY (denboraldi_id, talde_id),
    FOREIGN KEY (denboraldi_id) REFERENCES DENBORALDI(denboraldi_id) ON DELETE CASCADE,
    FOREIGN KEY (talde_id) REFERENCES TALDE(talde_id) ON DELETE CASCADE
) 

CREATE TABLE JOKALARI (
    jokalari_id INT(4) AUTO_INCREMENT PRIMARY KEY,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    jaiotze_urtea DATE
) 

CREATE TABLE JOKALARI_TALDEA (
    jokalari_id INT(4),
    talde_id INT(4),
    denboraldi_id INT(4),
    dorsala INT(2),
    sarrera_data DATE,
    irteera_data DATE,
    PRIMARY KEY (jokalari_id, talde_id, denboraldi_id),
    FOREIGN KEY (jokalari_id) REFERENCES JOKALARI(jokalari_id),
    FOREIGN KEY (talde_id) REFERENCES TALDE(talde_id),
    FOREIGN KEY (denboraldi_id) REFERENCES DENBORALDI(denboraldi_id)
) 

CREATE TABLE JARDUNALDI (
    jardunaldi_id INT(4) AUTO_INCREMENT PRIMARY KEY,
    denboraldi_id INT(4),
    jardunaldi_zbk INT(2),
    FOREIGN KEY (denboraldi_id) REFERENCES DENBORALDI(denboraldi_id)
) 

CREATE TABLE PARTIDU (
    partidu_id INT(4) AUTO_INCREMENT PRIMARY KEY,
    jardunaldia INT(4),
    talde_lokala INT(4),
    kanpoko_talde INT(4),
    golak_etxeko INT(2) DEFAULT 0,
    golak_kanpoko INT(2) DEFAULT 0,
    eguna DATE,
    FOREIGN KEY (jardunaldia) REFERENCES JARDUNALDI(jardunaldi_id),
    FOREIGN KEY (talde_lokala) REFERENCES TALDE(talde_id),
    FOREIGN KEY (kanpoko_talde) REFERENCES TALDE(talde_id)
) 

CREATE TABLE ERABILTZAILEA (
    erabiltzaile_id INT(4) PRIMARY KEY AUTO_INCREMENT,
    erabiltzaile VARCHAR(20) NOT NULL UNIQUE,
    pasahitza VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL
) 

CREATE TABLE ADMINISTRARIA_ERAB (
    erabiltzaile_id INT(4) PRIMARY KEY,
    maila VARCHAR(50),
    FOREIGN KEY (erabiltzaile_id) REFERENCES ERABILTZAILEA(erabiltzaile_id) ON DELETE CASCADE
) 

CREATE TABLE ARBITRO_ERAB (
    erabiltzaile_id INT(4) PRIMARY KEY,
    lizentzia_zbk VARCHAR(12) NOT NULL UNIQUE,
    FOREIGN KEY (erabiltzaile_id) REFERENCES ERABILTZAILEA(erabiltzaile_id) ON DELETE CASCADE
) 