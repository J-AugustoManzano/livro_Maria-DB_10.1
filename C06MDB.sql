USE virtual;

INSERT INTO cadfun VALUES (
  1,
  'SILVIO DE MENESES',
  '2',
  'ANALISTA',
  2000.00,
  '2006-08-10',
  1
);

INSERT INTO cadfun VALUES (
  6,
  'SILVIA DA SILVA',
  '5',
  'ANALISTA',
  2000.00,
  '2006-08-10',
  3
);

INSERT INTO cadfun VALUES (
  8,
  'ANTONIO DA SILVA',
  '5',
  'GERENTE',
  2184.33,
  '2006-09-05',
  2
);

INSERT INTO cadfun VALUES (
  10,
  'ANTONIA DE CARVALHO',
  '5',
  'SECRETARIA',
  2530.62,
  '2006-09-07',
  4
);

INSERT INTO cadfun VALUES (
  11,
  'SILVANA DOS SANTOS',
  '4',
  'VENDEDOR',
  1683.00,
  '2006-09-07',
  0
);

INSERT INTO cadfun VALUES (
  12,
  'ANTONIO DOS SANTOS',
  '4',
  'PROGRAMADOR',
  1155.00,
  '2006-10-10',
  1
);

INSERT INTO cadfun VALUES (
  21,
  'EPAMINONDAS DA SILVA',
  '4',
  'PROGRAMADOR',
  1155.00,
  '2006-10-10',
  2
);

UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 4;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 7;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 15;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 22;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 24;

SELECT * FROM cadfun; 

UPDATE cadfun SET FUNCAO = 'SUPERVISOR' WHERE FUNCAO = 'SUPERVISORA';
UPDATE cadfun SET FUNCAO = 'VENDEDOR' WHERE FUNCAO = 'VENDEDORA';

SELECT * FROM cadfun;

SELECT DEPTO, COUNT(*) FROM cadfun GROUP BY DEPTO;

SELECT FUNCAO, COUNT(*) FROM cadfun GROUP BY FUNCAO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun GROUP BY DEPTO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun GROUP BY DEPTO DESC;

SELECT DEPTO, SUM(SALARIO) FROM cadfun 
  WHERE DEPTO IN ('2', '4') 
  GROUP BY DEPTO
;

SELECT DEPTO, COUNT(*) FROM cadfun GROUP BY DEPTO ORDER BY DEPTO DESC;

SELECT DEPTO, SUM(SALARIO) FROM cadfun 
  GROUP BY DEPTO 
  HAVING SUM(SALARIO) > 8000
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 7
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 3
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 9
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 25
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 4
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 2
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 5
;

INSERT INTO morto 
  SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS 
  FROM cadfun 
  WHERE CODFUN = 15
;

DELETE FROM cadfun WHERE CODFUN = 7;
DELETE FROM cadfun WHERE CODFUN = 3;
DELETE FROM cadfun WHERE CODFUN = 9;
DELETE FROM cadfun WHERE CODFUN = 25;
DELETE FROM cadfun WHERE CODFUN = 4;
DELETE FROM cadfun WHERE CODFUN = 2;
DELETE FROM cadfun WHERE CODFUN = 5;
DELETE FROM cadfun WHERE CODFUN = 15;

SELECT * FROM cadfun; 

SELECT * FROM morto;

SELECT * FROM cadfun UNION SELECT * FROM morto;

INSERT INTO morto VALUES (
  21,
  'EPAMINONDAS DA SILVA',
  '4',
  'PROGRAMADOR',
  1155.00,
  '2006-10-10',
  2
);

SELECT * FROM cadfun; 

SELECT * FROM morto;

SELECT * FROM cadfun UNION SELECT * FROM morto;

SELECT * FROM cadfun UNION ALL SELECT * FROM morto;

(SELECT * FROM cadfun ORDER BY NOME)
UNION 
(SELECT * FROM morto ORDER BY NOME)
ORDER BY NOME;


