DROP DATABASE IF EXISTS FNFS;
CREATE DATABASE FNFS;
USE FNFS;

CREATE TABLE DENBORALDI (
    denboraldi_id INT(4) PRIMARY KEY AUTO_INCREMENT,
    urtea INT(4) NOT NULL UNIQUE
);

CREATE TABLE JARDUNALDI (
    jardunaldi_id INT(4) PRIMARY KEY AUTO_INCREMENT,
    jardunaldi_zbk INT(2) NOT NULL,
    denboraldi_id INT(4),
    UNIQUE (denboraldi_id, jardunaldi_zbk),
    FOREIGN KEY (denboraldi_id) REFERENCES DENBORALDI(denboraldi_id) ON DELETE RESTRICT
);

CREATE TABLE TALDE (
    talde_id INT(4) PRIMARY KEY AUTO_INCREMENT,
    izena VARCHAR(50) NOT NULL UNIQUE,
    sorrera_data DATE NOT NULL DEFAULT '1901-01-01',
    presidentea VARCHAR(50)
);

CREATE TABLE PARTIDU (
    partidu_id INT(4) PRIMARY KEY AUTO_INCREMENT,
    jardunaldia INT(4),
    talde_lokala INT(4),
    kanpoko_talde INT(4),
    golak_etxeko INT DEFAULT 0,
    golak_kanpoko INT DEFAULT 0,
    FOREIGN KEY (jardunaldia) REFERENCES JARDUNALDI(jardunaldi_id) ON DELETE RESTRICT,
    FOREIGN KEY (talde_lokala) REFERENCES TALDE(talde_id) ON DELETE RESTRICT,
    FOREIGN KEY (kanpoko_talde) REFERENCES TALDE(talde_id) ON DELETE RESTRICT,
    CHECK (talde_lokala <> kanpoko_talde)
);

CREATE TABLE JOKALARI (
    jokalari_id INT(4) PRIMARY KEY  AUTO_INCREMENT,
    izena VARCHAR(50) NOT NULL,
    abizenak VARCHAR(100) NOT NULL,
    jaiotze_urtea DATE NOT NULL DEFAULT '1901-01-01'
);

CREATE TABLE JOKALARI_TALDEA (
    jokalari_id INT(4) NOT NULL,
    talde_id INT(4) NOT NULL,
    denboraldi_id INT(4) NOT NULL,
    sarrera_data DATE NOT NULL,
    irteera_data DATE,
    dorsala INT(2) NOT NULL,
    PRIMARY KEY (jokalari_id, talde_id, denboraldi_id),
    FOREIGN KEY (jokalari_id) REFERENCES JOKALARI(jokalari_id) ON DELETE RESTRICT,
    FOREIGN KEY (talde_id) REFERENCES TALDE(talde_id) ON DELETE RESTRICT,
    FOREIGN KEY (denboraldi_id) REFERENCES DENBORALDI(denboraldi_id) ON DELETE RESTRICT
);
CREATE TABLE ERABILTZAILEA (
    erabiltzaile_id INT(4) PRIMARY KEY AUTO_INCREMENT,
    erabiltzaile VARCHAR(20) NOT NULL UNIQUE,
    pasahitza VARCHAR(255) NOT NULL,
    email varchar(50) NOT NULL,
    izena varchar (50) NOT NULL,
    abizenak varchar (100) NOT NULL
);
CREATE TABLE ADMINISTRARIA_ERAB (
    erabiltzaile_id INT(4) PRIMARY KEY,
    maila VARCHAR(50),
    FOREIGN KEY (erabiltzaile_id) REFERENCES ERABILTZAILEA (erabiltzaile_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE ARBITRO_ERAB (
    erabiltzaile_id INT(4) PRIMARY KEY,
    lizentzia_zbk VARCHAR(12) NOT NULL UNIQUE,
    FOREIGN KEY (erabiltzaile_id) REFERENCES ERABILTZAILEA (erabiltzaile_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE PRESIDENTE_ERAB (
    erabiltzaile_id INT(4) PRIMARY KEY,
    FOREIGN KEY (erabiltzaile_id) REFERENCES ERABILTZAILEA (erabiltzaile_id) ON UPDATE CASCADE ON DELETE CASCADE
);