CREATE TABLE PAIS (ID_PAIS NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30));

INSERT INTO pais (
    id_pais,
    nome
) VALUES (
    :v0,
    :v1
);

SELECT * FROM PAIS;

CREATE TABLE ESTADO (ID_ESTADO NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30),
                          ID_PAIS NUMBER);
INSERT INTO estado (
    id_estado,
    nome,
    id_pais
) VALUES (
    :v0,
    :v1,
    :v2
);

SELECT * FROM ESTADO;

CREATE TABLE CIDADE (ID_CIDADE NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30),
                          ID_ESTADO NUMBER);
INSERT INTO cidade (
    id_cidade,
    nome,
    id_estado
) VALUES (
    :v0,
    :v1,
    :v2
);       

CREATE TABLE BAIRRO (ID_BAIRRO NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30),
                          ID_CIDADE NUMBER);
INSERT INTO bairro (
    id_bairro,
    nome,
    id_cidade
) VALUES (
    :v0,
    :v1,
    :v2
);

CREATE TABLE ENDERECO (ID_ENDERECO NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30),
                          ID_BAIRRO NUMBER);
INSERT INTO endereco (
    id_endereco,
    nome,
    id_bairro
) VALUES (
    :v0,
    :v1,
    :v2
);

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY (ID_PAIS)
REFERENCES PAIS(ID_PAIS);

SELECT 'DROP TABLE' || TABLE_NAME|| 'CASCADE CONSTRAINTS;'
FROM user_tables

