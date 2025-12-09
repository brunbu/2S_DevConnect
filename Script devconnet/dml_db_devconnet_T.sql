--DML
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES('Bruno','bruno_','brunosilva@gmail.com','435215ub','fotoperfildevconnect.com'),
('Ronaldo','Ronaldo123','oronaldo123@gmail.com','rld12','fotocarropretobucha.com'),
('Rogerio','rogerio','robisao45@gmail.com','robiro57','fotogatogordo.com'),
('Jose','jose_top','zezinho@gmail','z�7893','fotozedamanga.com');

INSERT INTO tb_publicacao(id_usuario, descricao, imagem_url, data_publicacao)
VALUES(8,'Imagem da empresa DevConnect','logo_devconnect.com','2025/10/26'),
(9,'Esse � o carro e bucha','foto-carro-preto-ruim.com','2025/10/10'),
(10,'Meu gato e muito gordo','foto-gato-gordo.com','2025/02/28');

INSERT INTO tb_comentario(id_usuario, id_publicacao, texto, data_comentario)
VALUES(8,2,'logo da DevConnect','2025-10-26'),
(9,3,'Esse carro n�o saio da primaira','2025-10-10'),
(10,4,'Nossa, parece um biacu','2025-02-28');

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES(5,2),
(8,3),
(7,4);

INSERT INTO tb_seguidor(id_usuario_seguir,id_usuario_seguida)
VALUES(5,8),
(8,7),
(7,5);

DELETE FROM tb_usuario
WHERE id = 4;  
ALTER TABLE tb_curtida
ADD PRIMARY KEY (id_usuario, id_publicacao);