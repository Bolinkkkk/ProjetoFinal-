Create Database ProjetoFinal; 

Create table Categoria (
id INT not null  auto_increment primary key, 
nome varchar (255),
descricao varchar(255),
ativo INT);

Create table Lugar (
id INT not null auto_increment primary key,
nome varchar(255),
bloco int,
descricao varchar(255),
ativo int);


create table Item (
id int not null auto_increment primary key,
nome varchar(255),
descricao varchar(255),
dataEncontro date,
estatus varchar(255),
imagemUrl varchar(1500),
categoriaId int not null,
lugarId int not null, 
 FOREIGN KEY (categoriaid) References Categoria(Id),
 FOREIGN KEY (lugarid) References Lugar(Id),
 createAt datetime
 );
 
 Create table Devolucao(
 id int auto_increment not null primary key,
 itemId int not null,
  FOREIGN KEY (itemid) References Item(Id),
 nomeRecebedor varchar(255),
 turmaOuSetor varchar(255),
 dataDevolucao date,
 observacao varchar(255)
 );
 
 



use ProjetoFinal