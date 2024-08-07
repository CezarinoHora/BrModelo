-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE BDVENDAS;
CREATE USER 'master'@'%' IDENTIFIED BY '123';
GRANT ALL ON *.* TO 'master'@'%' WITH GRANT OPTION;


USE BDVENDAS;
CREATE TABLE tb_cliente (
id_cliente int auto_increment PRIMARY KEY,
nome varchar(100),
cpf varchar(20),
email varchar(200),
telefone varchar(30),
cep varchar(100),
endereco varchar(255),
cidade varchar(100),
uf char(2)
);

CREATE TABLE tb_funcionario (
id_Func int auto_increment PRIMARY KEY,
nome varchar(100),
cpf varchar(20),
email varchar(200),
senha varchar(10),
cargo varchar(100),
nivel_acesso varchar(50),
telefone varchar(30),
cep varchar(100),
endereco varchar(255),
cidade varchar(100),
uf char(2)
);

CREATE TABLE tb_fornecedor (
id_forn int auto_increment PRIMARY KEY,
nome varchar(100),
cnpj varchar(100),
email varchar(200),
telefone varchar(30),
cep varchar(100),
endereco varchar(255),
cidade varchar(100),
uf char(2)
);

CREATE TABLE tb_produto (
id_prod int auto_increment PRIMARY KEY,
descricao varchar(100),
qtd_estoque integer,
vlr_preco numeric(10,2),
id_forn integer,
FOREIGN KEY(id_forn) REFERENCES tb_fornecedor (id_forn)
);

CREATE TABLE tb_forma_pgto (
id_fpgto int auto_increment PRIMARY KEY,
descricao varchar(100)
);


CREATE TABLE tb_venda (
id_venda int auto_increment PRIMARY KEY,
Dt_venda date,
Vlr_total_venda numeric(10,2),
observacoes varchar(250),
id_cliente integer,
id_Func integer,
id_fpgto integer,
FOREIGN KEY(id_cliente) REFERENCES tb_cliente (id_cliente),
FOREIGN KEY(id_Func) REFERENCES tb_funcionario (id_Func),
FOREIGN KEY(id_fpgto) REFERENCES tb_forma_pgto (id_fpgto)
);

CREATE TABLE tb_itens_venda (
id_itensv int auto_increment PRIMARY KEY,
vlr_subtotal numeric(10,2),
qtd integer,
id_prod integer,
id_venda integer,
FOREIGN KEY(id_prod) REFERENCES tb_produto (id_prod),
FOREIGN KEY(id_venda) REFERENCES tb_venda (id_venda)
);

