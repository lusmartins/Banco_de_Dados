USE projeto_final_bd;

SELECT * FROM PRODUTOS;
INSERT INTO Produtos (Categoria, Nome_risco, Tipo_tecido, Quantidade_estoque_bordado, 
Tipo_bordado, Metragem, Preco)
VALUES 
('semi manual',	'Cheio normal',	  'Linho',		  '1',  'guardanapos',	 	 '0.10m',	'91'),
('semi manual',	'Cheio normal',	  'Linho',		  '1',  'guardanapos',	 	 '0.20m',	'94'),
('semi manual',	'Cheio normal',	  'Linho',		  '1',  'guardanapos',	 	 '0.30m',	'97');
SELECT * FROM PRODUTOS;

SELECT SUM(Preco_total), AVG(Preco_total)
FROM Vendas;

SELECT * FROM Clientes;


