CREATE DATABASE db_integradorJava;

USE db_integradorJava;

CREATE TABLE tb_login
(
id int primary KEY AUTO_INCREMENT,
nome varchar(40) not null,
usuario varchar(30) not null,
senha varchar(20) not null
);

select * from tb_login;

CREATE TABLE tb_movimentacao(
id int primary key auto_increment,
saldo int not null,
tipoMovimentacao varchar(100) NOT NULL,
id_usuario int,
id_tipo int
);

select * from tb_movimentacao;

CREATE TABLE tb_carteira(
id int primary key auto_increment,
nome varchar(50) not null,
saldo double not null
);

select * from tb_carteira;

ALTER TABLE tb_movimentacao ADD CONSTRAINT fk_usuario foreign key(id_usuario) references tb_login(id);
ALTER TABLE tb_movimentacao ADD CONSTRAINT fk_usuario2 foreign key(id_tipo) references tb_tipoMovimentacao(id);

CREATE TABLE tb_tipoMovimentacao(
id int primary key auto_increment,
descricao varchar(100)
);

select * from tb_tipoMovimentacao;

INSERT INTO tb_tipoMovimentacao (descricao) VALUES("Deposito");
INSERT INTO tb_tipoMovimentacao (descricao) VALUES("Saque");





INSERT INTO tb_movimentacao (saldo, tipoMovimentacao, id_usuario, id_tipo) VALUES ("20", "Deposito", 1, 1);
INSERT INTO tb_movimentacao (saldo, tipoMovimentacao, id_usuario, id_tipo) VALUES ("20", "Deposito", 2, 2);

SELECT M.saldo , U.nome, T.descricao FROM tb_movimentacao M INNER JOIN tb_login U ON U.id = M.id_usuario
							INNER JOIN tb_tipoMovimentacao T ON T.id = M.id_tipo
									WHERE T.id = 2;