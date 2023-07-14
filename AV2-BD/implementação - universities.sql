SHOW DATABASES;
USE BD_REVISAO;

#Com as funções de agregação, obter em SQL, obter o número total de países da tabela "country".

SELECT * FROM COUNTRY;
SELECT COUNT(*) COUNTRY_NAME
FROM COUNTRY;

#Usando as consultas básicas em SQL, obter o nome dos sistemas da tabela "ranking_system".

SELECT * FROM RANKING_SYSTEM;
SELECT ALL SYSTEM_NAME
FROM RANKING_SYSTEM;

#Quantas universidades fazem parte do BD disponibilizado? Usar funções de agregação.

SELECT COUNT(DISTINCT UNIVERSITY_NAME) AS TOTAL_UNIVERSITY
FROM UNIVERSITY;

#Obter a média da coluna "student_staff_ratio" que faz parte da tabela "university_year".

SELECT * FROM UNIVERSITY_YEAR;
SELECT AVG (STUDENT_STAFF_RATIO)
FROM UNIVERSITY_YEAR;


#Gerar o diagrama entidade relacionamento (MER) do BD disponibilizado explicar de forma criteriosa as restrições existentes.

SELECT
    CONSTRAINT_NAME,
    COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'BD_REVISAO';

show tables from BD_REVISAO;

SELECT * FROM RANKING_CRITERA;


