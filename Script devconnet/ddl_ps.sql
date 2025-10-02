--DDL
CREATE DATABASE devconnect;

USE devconnect;

CREATE TABLE tb_usuario (
id INT IDENTITY(1,1) PRIMARY KEY ,
nome_completo		NVARCHAR (255) UNIQUE NOT NULL,
nome_usuario		NVARCHAR(50) UNIQUE NOT NULL,
email				NVARCHAR(255) UNIQUE NOT NULL,
senha				NVARCHAR(255) UNIQUE NOT NULL,
foto_perfil_url		NVARCHAR(150) NULL
);
SELECT * FROM tb_usuario;

CREATE TABLE tb_comentario (
id INT IDENTITY(1,1) PRIMARY KEY,
texto				NVARCHAR(255) NULL,
data_comentario		DATE NOT NULL
);

SELECT * FROM tb_comentario;

CREATE TABLE tb_publicacao (
id INT IDENTITY(1,1) PRIMARY KEY ,
descricao			NVARCHAR (255) NOT NULL,
imagem_url			NVARCHAR (255) NOT  NULL,
data_publicacao		DATE NOT NULL
);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_seguidor(
id_usuario			INT NOT NULL,
id_publicacao		INT NOT NULL,

PRIMARY KEY (id_usuario, id_publicacao)

);

SELECT * FROM tb_seguidor;

CREATE TABLE tb_curtida(
id_usuario INT NOT NULL,
id_publicacao INT NOT NULL,

PRIMARY KEY(id_usuario,id_publicacao)

);

SELECT * FROM tb_curtida;
