CREATE DATABASE IF NOT EXISTS bds_fabricantes;
USE bds_fabricantes;

CREATE TABLE fabricantes (
    id_fabricantes INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_criacao DATE DEFAULT CURRENT_DATE,
    descricao TEXT,
    imagem VARCHAR(200) NOT NULL,
);

CREATE TABLE modelos (
    id_modelos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_fabricantes) REFERENCES fabricantes(id_fabricantes),
    categoria VARCHAR(100) NOT NULL,
    imagem VARCHAR(200) NOT NULL,
);

CREATE TABLE arquivos(
    id_arquivos INT PRIMARY KEY AUTO_INCREMENT, 
    tipo_arquivo ENUM('IMAGEM', 'DOCUMENTO') NOT NULL,
    descricao TEXT,
    data_upload DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_modelos) REFERENCES fabricantes(id_modelos),
    categoria VARCHAR(50),
    link VARCHAR(200), 
);
