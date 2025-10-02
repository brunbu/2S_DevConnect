--DML
USE devconnect;
GO

-- Usuario
INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha,foto_perfil_url)
VALUES ('Bruno', 'Brunobu','bu67658@gmail.com','1234532','Chachorro molhado');

SELECT * FROM tb_usuario;

--Comentario
INSERT INTO tb_comentario (texto, data_comentario)
VALUES ('hoje mocei','2018/06/28');

SELECT * FROM tb_comentario;

--Publicacao
INSERT INTO tb_publicacao (descricao, imagem, data_publicacao)
VALUES ('......','cachorro','2025/10/02');

SELECT * FROM tb_publicacao;

--Seguidor
INSERT INTO tb_seguidor (que seguir, sera seguida)
VALUES ('jair','jose');

SELECT * FROM tb_seguidor;

--Curtida
INSERT INTO tb_curtida (quem curtiu, o que curtiu)
VALUES ('bruno','.cachorra.ronaldo');

SELECT * FROM tb_curtida;
