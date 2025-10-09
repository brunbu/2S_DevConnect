--DML
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES('Bruno','bruno_','brunosilva@gmail.com','435215ub','fotoperfildevconnect.com'),
('Ronaldo','joaozin123','joaopa123@gmail.com','jpa12','fotocarropreto.com'),
('Rogerio','rogerio','robisao45@gmail.com','robiro57','fotogatogordo.com'),
('Jose','jose_top','zezinho@gmail','zé7893','fotozedamanga.com');
INSERT INTO tb_publicacao(id_usuario, descricao, imagem_url, data_publicacao)
VALUES(5,'Imagem da empresa DevConnect','logo_devconnect.com','2025-10-26'),
(7,'Esse é o carro e bucha','foto-carro-preto-ruim.com','2025-10-10'),
(8,'Meu gato e muito gordo','foto-gato-gordo.com','2025-02-29');

INSERT INTO tb_comentario(id_usuario, id_publicacao, texto, data_comentario)
VALUES(5,2,'logo da DevConnect','2025-10-26'),
(8,3,'Esse carro não saio da primaira','2025-10-10'),
(7,4,'Nossa, parece um biacu','2025-02-29');

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES(5,2),
(8,3),
(7,4);

INSERT INTO tb_seguidor(id_usuario_seguir,id_usuario_seguida)
VALUES(5,8),
(8,7),
(7,5);

DELETE FROM tb_curtida
WHERE id_usuario = 5      
  AND id_publicacao = 2;  
ALTER TABLE tb_curtida
ADD PRIMARY KEY (id_usuario, id_publicacao);