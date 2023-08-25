SHOW DATABASES;
USE projeto_final_bd;

CREATE TABLE Clientes (
	id_cliente BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE primary key,
	Nome VARCHAR(15) NOT NULL,
	Sobrenome VARCHAR(15) NOT NULL,
	CPF	VARCHAR(20) UNIQUE, 
	Telefone VARCHAR(20) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	CEP	VARCHAR(15)NOT NULL,
	Endereco VARCHAR(100) NOT NULL
    );
    
    CREATE TABLE Produtos (
	id_bordado BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE primary key,
	Categoria VARCHAR(15) NOT NULL,
	Nome_risco VARCHAR(15) NOT NULL,
	Tipo_tecido	VARCHAR(20)  NOT NULL, 
	Quantidade_estoque_bordado INT NOT NULL,
	Tipo_bordado VARCHAR(50) NOT NULL,
	Metragem VARCHAR(15) NOT NULL,
	Preco DOUBLE(10,2) NOT NULL);
    
    CREATE TABLE Vendas(
	id_venda BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE primary key,
	id_cliente BIGINT UNSIGNED unique,
	id_bordado BIGINT UNSIGNED unique,
	Data_venda	DATE, 
	Preco_unitario DOUBLE(10,2) NOT NULL,
	Tecido VARCHAR(50) NOT NULL,
	Preco_total DOUBLE(10,2) NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente),
    FOREIGN KEY (id_bordado) REFERENCES Produtos (id_bordado));
    
    INSERT INTO Clientes (Nome, Sobrenome, CPF, Telefone, Email, CEP, Endereco)
VALUES 
	('Kamilly', 'Morais','592.049.243-06','(85) 98250-9172','kamilly_morais@gmail.com','60332-610','Rua Edu da Gaita, 169, Barra do Ceará, Fortaleza, CE'),
	('Joaquim ', 'Freitas','368.692.543-54','(88) 99722-6153','joaquimdfreitas@gmail.com','63101-390','Rua Manuel Monteiro, 333, Pinto Madeira, Crato, CE'),
	('Mateus', 'Caetano','099.217.293-49','(85) 99393-2344','mateus_caue_caetano@gmail.com','60866-474','Rua Ulisses Tercelão, 179, Jangurussu, Fortaleza, CE'),
	('Marlene', 'Peixoto','437.879.103-01','(85) 99409-8975','marlene_s_peixoto@gmail.com','61932-692','Rua Jardim Paraíso I, 695, Pajuçara, Maracanaú, CE'),
	('Ariane', 'Fernandes','658.412.673-02','(85) 99130-4606','fernandes_ariane@gmail.com','60015-170','Rua Alerta, 888, Farias Brito, Fortaleza, CE');
SELECT * FROM Clientes;

INSERT INTO Produtos (Categoria, Nome_risco, Tipo_tecido, Quantidade_estoque_bordado, Tipo_bordado, Metragem, Preco)
VALUES 
	('manual',    	'Ponto cruz',     'Etamine',      '1',  'toalha de mesa',  	 '1.5m',	'60'),
	('manual ', 		'Ponto cruz',     'Algodão cru',  '1',  'toalha de mesa',  	 '1.5m',	'62'),
	('manual',  		'Ponto cruz',     'Linho',        '1',  'toalha de mesa',  	 '1.5m',	'65'),
	('manual',  		'Ponto cruz',     'Etamine',      '1',  'toalha de mesa',  	 '2m',		'70'),
	('manual',  		'Ponto cruz',     'Algodão cru',  '1',  'toalha de mesa',  	 '2m',		'72'),
    ('manual',  		'Ponto Cruz',     'Linho',        '1',  'toalha de mesa',  	 '2m',		'75'),
    ('manual',  		'Ponto Cruz',     'Etamine',      '1',  'toalha de mesa',	 '2.5m', 	'78'),
    ('manual',  		'Ponto Cruz',     'Algodão cru',  '1',  'toalha de mesa',	 '2.5m',	'81'),
    ('manual',  		'Ponto Cruz',     'Linho',        '1',  'toalha de mesa',	 '2.5m',	'85'),
	('manual',       'Ponto Cruz',     'Etamine',	  '1',  'toalha de mesa',	 '3m',		'88'),
	('manual',       'Ponto Cruz',     'Algodão cru',  '1',  'toalha de mesa',	 '3m',		'91'),
	('manual',       'Ponto Cruz',     'Linho',		  '1',  'toalha de mesa',	 '3m',		'94'),
	('semi manual',	'Rechilieu', 	  'Percal',	      '1',  'toalha de mesa',	 '1.5m',	'97'),
	('semi manual',	'Rechilieu',      'Percal',	      '1',  'toalha de mesa',	 '2m',		'100'),
	('semi manual',	'Rechilieu',      'Percal',	      '1',  'toalha de mesa',	 '2.5m',	'103'),
	('semi manual',	'Rechilieu',      'Percal',	      '1',  'toalha de mesa',	 '3m',		'65'),
	('semi manual',	'Rechilieu',      'Linho',	      '1',  'toalha de mesa',	 '1.5m',	'70'),
	('semi manual',	'Rechilieu',      'Linho',	      '1',  'toalha de mesa',	 '2m',		'72'),
	('semi manual',	'Rechilieu',      'Linho',	      '1',  'toalha de mesa',	 '2.5m',	'75'),
	('semi manual',	'Rechilieu',      'Linho',	      '1',  'toalha de mesa',	 '3m',		'79'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'toalha de mesa',	 '1.5m',	'82'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'toalha de mesa',	 '2m',		'85'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'toalha de mesa',	 '2.5m',	'89'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'toalha de mesa',	 '1.5m',	'95'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'toalha de mesa',	 '2m',		'88'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'toalha de mesa',	 '2.5m',	'91'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'toalha de mesa',	 '3m',		'94'),
	('manual',		'Ponto Cruz',	  'Etamine',	  '1',  'caminho de mesa',   '1m',	    '97'),
	('manual',		'Ponto Cruz',	  'Algodão cru',  '1',  'caminho de mesa',   '1m',	    '100'),
	('manual',		'Ponto Cruz',	  'Linho',		  '1',  'caminho de mesa',   '1m',	    '103'),
	('manual',		'Ponto Cruz',	  'Etamine',	  '1',  'caminho de mesa',   '1.5m',	'65'),
	('manual',		'Ponto Cruz',	  'Algodão cru',  '1',  'caminho de mesa',   '1.5m',	'70'),
	('manual',		'Ponto Cruz',	  'Linho',		  '1',  'caminho de mesa',   '1.5m',	'72'),
	('manual',		'Ponto Cruz',	  'Etamine',	  '1',  'caminho de mesa',   '2m',	    '75'),
	('manual',		'Ponto Cruz',	  'Algodão cru',  '1',  'caminho de mesa',   '2m',	    '79'),
	('manual',		'Ponto Cruz',	  'Linho',		  '1',  'caminho de mesa',   '2m',	    '82'),
	('manual',		'Ponto Cruz',	  'Etamine',	  '1',  'caminho de mesa',   '2.5m',	'85'),
	('manual',		'Ponto Cruz',	  'Linho',		  '1',  'caminho de mesa',   '2.5m',	'92'),
	('semi manual',	'Rechilieu',	  'Percal',		  '1',  'caminho de mesa',   '1m',	    '95'),
	('semi manual',	'Rechilieu',	  'Percal',		  '1',  'caminho de mesa',   '1.5m',	'88'),
	('semi manual',	'Rechilieu',	  'Percal',		  '1',  'caminho de mesa',   '2m',	    '91'),
	('semi manual',	'Rechilieu',	  'Percal',		  '1',  'caminho de mesa',   '2.5m',	'94'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'caminho de mesa',   '1m',	    '97'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'caminho de mesa',   '1.5m',	'100'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'caminho de mesa',   '2m',	    '103'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'caminho de mesa',   '2.5m',	'65'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'caminho de mesa',   '1m',	    '70'),
	('semi manual',	'Cheio normal',   'Percal',		  '1',  'caminho de mesa',   '1.5m',	'72'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'caminho de mesa',   '2m',	    '75'),
	('semi manual',	'Cheio normal',   'Percal',		  '1',  'caminho de mesa',   '2.5m',	'79'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'caminho de mesa',   '1m',	    '82'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'caminho de mesa',   '1.5m',	'85'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'caminho de mesa',   '2m',	    '89'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'caminho de mesa',   '2.5m',	'92'),
	('manual',	    'Ponto Cruz',	  'Etamine',	  '1',  'guardanapos',	     '0.10m',	'95'),
	('manual',	    'Ponto Cruz',	  'Algodão cru',  '1',  'guardanapos',	 	 '0.10m',	'88'),
	('manual',	    'Ponto Cruz',	  'Linho',		  '1',  'guardanapos',	 	 '0.10m',	'91'),
	('manual',	    'Ponto Cruz',	  'Etamine'	,	  '1',  'guardanapos',	 	 '0.20m',   '94'),
	('manual',	    'Ponto Cruz',	  'Algodão cru',  '1',  'guardanapos',	  	 '0.20m',	'97'),
	('manual',	    'Ponto Cruz',	  'Linho',		  '1',  'guardanapos',	 	 '0.20m',	'100'),
	('manual',	    'Ponto Cruz',	  'Etamine',	  '1',  'guardanapos',	 	 '0.30m',	'103'),
	('manual',	    'Ponto Cruz',	  'Algodão cru',  '1',  'guardanapos',	 	 '0.30m',   '65'),
	('manual',	    'Ponto Cruz',	  'Linho',		  '1',  'guardanapos',	  	 '0.30m',	'70'),
	('semi manual',	'Rechilieu',	  'Percal',		  '1',  'guardanapos',	 	 '0.10m',   '72'),
	('semi manual',	'Rechilieu',	  'Percal',		  '1',  'guardanapos',	 	 '0.20m',	'75'),
	('semi manual',	'Rechilieu',	  'Percal',	      '1',  'guardanapos',	  	 '0.30m',	'79'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'guardanapos',	 	 '0.10m',   '82'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'guardanapos',	 	 '0.20m',	'85'),
	('semi manual',	'Rechilieu',	  'Linho',		  '1',  'guardanapos',	 	 '0.30m',	'89'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'guardanapos',	 	 '0.10m',	'92'),
	('semi manual',	'Cheio normal',	  'Percal',		  '1',  'guardanapos',	 	 '0.20m',	'95'),
	('semi manual',	'Cheio normal',	  'Percal', 	  '1',  'guardanapos',	 	 '0.30m',	'88'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'guardanapos',	 	 '0.10m',	'910'),	
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'guardanapos',	 	 '0.20m',	'94'),
	('semi manual',	'Cheio normal',	  'Linho',		  '1',  'guardanapos',	 	 '0.30m',	'97');
	SELECT * FROM Produtos;

INSERT INTO Vendas (Data_venda, Preco_unitario, Tecido, Preco_total)
VALUES 
	('2023-06-21', 60, 'Etamine', 60),
	('2023-06-21', 62, 'Algodão cru', 62),
	('2023-06-21', 65, 'Linho', 65),
	('2023-06-21', 70, 'Etamine', 70),
	('2023-06-21', 72, 'Algodão cru', 72);
    SELECT * FROM VENDAS;
