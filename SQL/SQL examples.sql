# SQL

- SELECT` - extrai dados de um banco de dados
- `UPDATE` - atualiza dados em um banco de dados
- `DELETE` - exclui dados de um banco de dados
- `INSERT INTO` - insere novos dados em um banco de dados
- `CREATE DATABASE` - cria um novo banco de dados
- `ALTER DATABASE`- modifica um banco de dados
- `CREATE TABLE` - cria uma nova mesa
- `ALTER TABLE` - modifica uma mesa
- `DROP TABLE` - apaga uma mesa
- `CREATE INDEX` - cria um índice (chave de pesquisa)
- `DROP INDEX` - exclui um índice

```sql
DATE_FORMAT(A.CREATED_ON,'%d/%m/%Y') -- Exemplo de formatação de data, que 
```

```sql
--Comando para visualizar a quantidade de vezes que aparece determinado cliente.

**SELECT**
CustomerID, -- Tabela que contem os dados do cliente
**COUNT**(*)  -- COUNT faz a soma
**FROM** Orders -- Referenciando de onde eu quero pegar esses dados, no caso da tabela de ordens de compra.
**GROUP BY** CustomerID -- Group By serve para agregar
**ORDER BY** 2 **DESC -- Ordenar de forma descendente utilizando a coluna 2.**
```

```sql
-- Comando "JOIN" fazendo a junção de duas tabelas para trazer uma informação mais completa.
--No caso em questão o cliente que mais comprou, seu nome, as datas de compra e o id das notas.

SELECT
  A.OrderID,
  A.CustomerID,
  A.OrderDate,
  B.CustomerName -- Esta coluna está vindo da tabela externa aprtir da condição do JOIN
FROM Orders AS A -- Tabela Principal (Left Table)
JOIN Customers AS B -- Tabela secundária , dados auxiliares (Right Table) 
ON A.CustomerID = B.CustomerID -- Aqui é realizada a amarração dos campos chaves em comum entre as duas tabelas.
WHERE A.CustomerID = 20 -- WHERE "onde" tal item é = a tal coisa.
```

```sql
-- Mais um Comando "JOIN" fazendo a junção de duas tabelas.
-- Com uma nova Função " CONCAT ou || ( Concatenar ou Juntar )

SELECT
 A.EmployeeID, 
 A.OrderID, 
 B.FirstName || " " || B.LastName AS FullName, -- Concatenando Nome e Sobrenome, com aspas para dar espaço e não ficar escrito junto na visualização.
 OrderDate
 
 
FROM Orders As A
JOIN Employees AS B
ON A.EmployeeID = B.EmployeeID
```

```sql
--RELATÓRIO DE 6 COLUNAS, COM ID DO PRODUTO, DATA, CLEINTE, ID DA ORDEM DE COMPRA
-- QUANTIDADE E NOTA FISCAL.

SELECT

 B.SO_ID,
 A.CREATED_ON,
 A.CUSTOMER,
 C.SO_ITEM_ID,
 C.MATERIAL_QTY,
 B.NF_CODE
		
FROM SO_HEADER AS A

JOIN NF_SO AS B

ON A.SO_ID = B.SO_ID 

JOIN SO_ITEM AS C  -- JUNÇÃO DE UMA 3º TABELA ATRAVÉS DO JOIN

ON A.SO_ID = C.SO_ID
```

```sql
-- Selecionando todos os dados da tabela Customers ONDE cidade é = 'Berlin'
-- E cidade é igual 'Munique';
-- Utilizando mais de uma condição para o SQL WHERE

SELECT * FROM Customers
WHERE City='Berlin' OR City='München';
```

```sql
--Selecionando todos os campos onde o País NÃO é a 'Alemanha'
-- Exemplo de WHERE NOT

SELECT * FROM Customers
WHERE NOT Country='Germany';
```

```sql
--Selecionando todos os campos ONDE o país é Alemanha E (cidade deve ser 'Berlin' OU 'Munique';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');
```

```sql
--Seleciona todos os dados da Tabela CLIENTES e ORDENA POR pais.

SELECT * FROM Customers
ORDER BY Country;
```

```sql
--Exemplo de ORDER BY DESC (DESCENDING) Descendente
-- Selecionando todos os dados da tabela CLIENTES e ORDENANDO POR País de mmodo Decrescente..

SELECT * FROM Customers
ORDER BY Country DESC;
```

```sql
--Selecionando todos os dados, usando o ORDER BY, porém para país de modo Crescente
-- Para Customername de modo decrescente.

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
```

```sql
--O SELECT DISTINCT é usada para retornar apenas valores distintos (diferentes).
-- NO CASO EM QUESTÃO: SELECIONE OS DADOS DISTINTOS
-- DOS PAÍSES, DA TABELA CUSTOMERS.

SELECT DISTINCT Country FROM Customers;

-- SELCIONE E FAÇA A SOMA ( DOS DADOS DISTINTOS DE PAÍSES) NA TABELA CUSTOMERS.
SELECT COUNT(DISTINCT Country) FROM Customers;
```

```sql
--A WHERE é usada para filtrar registros.
--É usado para extrair apenas os registros que atendem a uma condição especificada.
-- SELECIONE TUDO NA TABELA VENDEDORES, ONDE O PAÍS É O MÉXICO.

SELECT * FROM Customers
WHERE Country='Mexico';
```

```sql
--Exemplos de combinações do WHERE+AND / WHERE+OR / WHERE+NOT

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';

SELECT * FROM Customers
WHERE Country='Germany' OR Country='Spain';

SELECT * FROM Customers
WHERE NOT Country='Germany';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');
```

```sql
--Selecionando tudo da tabela Customers, ORDENANDO POR países.
-- ORDER BY organiza as informações de acordo com o desejado.

SELECT * FROM Customers
ORDER BY Country;

--Descendente.
SELECT * FROM Customers
ORDER BY Country DESC;

--Ascendente.
SELECT * FROM Customers
ORDER BY Country ASC;

--Ordenando com mais de uma coluna.
SELECT * FROM Customers
ORDER BY Country, CustomerName;

--Ordenando com uma coluna ascendente e outra descendente.
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
```

```sql
-- INSERT INTO inserir novos registros na tabela. A cada inserção acrecenta-se uma linha.
--É preciso estar em acordo as colunas inseridas e seus valores.

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```

```sql
-- Valores Nulos NULL , Exemplo selecionando 3 colunas onde na coluna endereço o valor seja Nulo.

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- Usado para buscar valores 'Não Vazios' não Nulos.

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
```

```sql
--UPDATE é usada para modificar os registros existentes em uma tabela.

--Atualizando o primeiro cliente (CustomerID = 1) com uma nova pessoa de contato e uma nova cidade.
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

--É a WHERE que determina quantos registros serão atualizados.
--A seguinte instrução SQL atualizará o ContactName para "Juan" para todos os registros em que country seja "Mexico":
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

--Tenha cuidado ao atualizar os registros. 
--Se você omitir a **WHERE**, **TODOS** os registros serão atualizados!
UPDATE Customers
SET ContactName='Juan';
--No caso acima toda a coluna ContactName, ganhou o valor : Juan

```

```sql
-- DELETE é usada para excluir registros existentes em uma tabela.

DELETE FROM table_name WHERE condition;

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

--Exclui todas as linhas da tabela.
DELETE FROM table_name;
```

```sql
--SELECT TOP  é usada para especificar o número de registros a serem retornados.
--É útil em grandes tabelas com milhares de registros. 
--Retornar um grande número de registros pode afetar o desempenho.

SELECT column_name(s)        
FROM table_name
WHERE condition               
LIMIT number;

OU

SELECT TOP number
FROM table_name
WHERE condition;

-- Selecionando os 3 primeiros registros da tabela
SELECT TOP 3 * FROM Customers;

--exemplo equivalente para MySQL
SELECT * FROM Customers
LIMIT 3;

--A seguinte instrução SQL seleciona os primeiros 35% dos registros da tabela "Clientes" (para SQL Server / MS Access)
SELECT TOP <NUmero Variável> PERCENT * FROM Customers;
EXEMPLO: SELECT TOP 35 PERCENT * FROM Customers;

--Seleciona os 3 primeiros registros da tabela onde o País é 'Alemanha' ( SQL SERVER/MS )
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

-- Mesmo exemplo, para MySQL
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;
```

```sql
-- Funções SQL MIN () e MAX ()

--Selecionando o preço do produto mais barato
SELECT MIN(Price) AS SmallestPrice
FROM Products;

--Selecionando o preço do produto mais caro
SELECT MAX(Price) AS LargestPrice
FROM Products;
```

```sql
COUNT () -- Encontra a qtde de produtos.
AVG ()  --Média
SUM ()  --Soma

--A seguinte instrução encontra o preço médio de todos os produtos:
SELECT AVG(Price)
FROM Products;

--A seguinte instrução encontra a soma dos campos "Quantidade" na tabela "Detalhes do pedido":
SELECT SUM(Quantity)
FROM OrderDetails;
```

```sql
SQL LIKE

 WHERE CustomerName LIKE 'a%'  --Encontra todos os valores que começam com "a"
 WHERE CustomerName LIKE '%a' --Encontra qualquer valor que termine com "a"
 WHERE CustomerName LIKE '%or%' --Encontra quaisquer valores que tenham "or" em qualquer posição
 WHERE CustomerName LIKE '_r%' --Encontra qualquer valor que tenha "r" na segunda posição
 WHERE CustomerName LIKE 'a_%' --Encontra qualquer valor que comece com "a" e tenha pelo menos 2 caracteres de comprimento
 WHERE CustomerName LIKE 'a__%' --Encontra qualquer valor que comece com "a" e tenha pelo menos 3 caracteres de comprimento
 WHERE ContactName LIKE 'a%o' --Encontra todos os valores que começam com "a" e terminam com "o"

--A seguinte instrução seleciona todos os clientes com um CustomerName começando com "a":
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

--A seguinte instrução seleciona todos os clientes com um CustomerName terminando com "a":
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

--A seguinte instrução seleciona todos os clientes com um CustomerName que têm "or" em qualquer posição:
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

--A seguinte instrução seleciona todos os clientes com um CustomerName que têm "r" na segunda posição:
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

--A seguinte instrução seleciona todos os clientes com um CustomerName que começa com "a" e tem pelo menos 3 caracteres de comprimento:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

--A seguinte instrução seleciona todos os clientes com um ContactName que começa com "a" e termina com "o":
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

--A seguinte instrução seleciona todos os clientes com um CustomerName que NÃO comece com "a":
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';
```

```sql
Wildcards - Cactéries Curinga

--A seguinte instrução SQL seleciona todos os clientes com uma cidade começando com "ber":
SELECT * FROM Customers
WHERE City LIKE 'ber%';

--A seguinte instrução SQL seleciona todos os clientes com uma cidade contendo o padrão "es"
SELECT * FROM Customers
WHERE City LIKE '%es%';

--A seguinte instrução seleciona todos os clientes com uma cidade começando com qualquer caractere, seguido por "ondon":
SELECT * FROM Customers
WHERE City LIKE '_ondon';

--A seguinte instrução SQL seleciona todos os clientes com uma cidade começando com "L", seguido por qualquer caractere, seguido por "n", seguido por qualquer caractere, seguido por "on":
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

--A seguinte instrução SQL seleciona todos os clientes com uma cidade começando com "b", "s" ou "p":
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

--A seguinte instrução SQL seleciona todos os clientes com uma cidade começando com "a", "b" ou "c":
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';

Usando o caractere curinga [! Charlist]
--As duas instruções  a seguir selecionam todos os clientes com uma cidade que NÃO começa com "b", "s" ou "p":
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';
```

```sql
Exemplos de operador IN

--A seguinte instrução seleciona todos os clientes que estão localizados na "Alemanha", "França" ou "Reino Unido":
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

--A seguinte instrução seleciona todos os clientes que NÃO estão localizados na "Alemanha", "França" ou "Reino Unido":
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

--A seguinte instrução seleciona todos os clientes que são dos mesmos países que os fornecedores:
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
```

```sql
SQL BETWEEN
--A seguinte instrução SQL seleciona todos os produtos com um preço entre 10 e 20:
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

--Para exibir os produtos fora da faixa do exemplo anterior, use NOT BETWEEN:
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

--A seguinte instrução SQL seleciona todos os produtos com um preço entre 10 e 20.
--Além disso; não mostre produtos com ID de categoria de 1,2 ou 3:
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

--A seguinte instrução SQL seleciona todos os produtos com um ProductName entre Tigres Carnarvon e Mozzarella di Giovanni:
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

--A seguinte instrução SQL seleciona todos os produtos com um ProductName entre Tigres Carnarvon e Tempero Cajun do Chef Anton:
SELECT * FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;

--A seguinte instrução SQL seleciona todos os produtos com um ProductName que não está entre Tigres Carnarvon e Mozzarella di Giovanni:
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

--A seguinte instrução SQL seleciona todos os pedidos com Data do Pedido entre '01 -Julho-1996 'e '31 -Julho-1996':
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;
```

```sql
--A seg
uinte instrução SQL cria dois aliases (APELIDO), um para a coluna CustomerID e outro para a coluna CustomerName:
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- instrução SQL a seguir cria dois aliases, um para a coluna CustomerName e outro para a coluna ContactName.
SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;

--A seguinte instrução SQL cria um alias chamado "Endereço" que combina quatro colunas (Endereço, Código Postal, Cidade e País):

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

--A seguinte instrução SQL seleciona todos os pedidos do cliente com CustomerID = 4 (Around the Horn).
 --Usamos as tabelas "Clientes" e "Pedidos" e fornecemos a elas os aliases de tabela "c" e "o", respectivamente
 --(aqui usamos aliases para tornar o SQL mais curto):

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
```

```sql
SQL JOIN
--Uma JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.
-- Quando existe uma relação entre duas tabelas ou mais é possível fazer um INNER JOIN
Exemplo
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

Aqui estão os diferentes tipos de JOINs em SQL:

(INNER) JOIN: Retorna registros que possuem valores correspondentes em ambas as tabelas
LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda e os registros correspondentes da tabela da direita
RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita e os registros correspondentes da tabela da esquerda
FULL (OUTER) JOIN: Retorna todos os registros quando há uma correspondência na tabela da esquerda ou da direita

```

![img_innerjoin.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dbf27fb5-49da-4290-bcd6-8eac534ed472/img_innerjoin.gif)

![img_leftjoin.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ac76a4f4-da3d-41b8-b0f3-ad074169756e/img_leftjoin.gif)

![img_rightjoin.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2f42d8dd-72d1-4127-b4c4-a9be7491915b/img_rightjoin.gif)

![img_fulljoin.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/602d0d4e-6f4f-4e25-973f-bce8e4b1750d/img_fulljoin.gif)

```sql
SQL UNION (--FAZ A JUNÇÃO DE DUAS SELECT)
EXEMPLO DE SQL UNION
--A seguinte instrução SQL retorna as cidades (apenas valores distintos) das tabelas "Clientes" e "Fornecedores":

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

-- A SINTAXE ACIMA SELECIONA NA TABELA 'CUSTOMERS' E NA TABELA ' SUPPLIERS'
-- TODAS AS CIDADES, SEM REPETIR OS NOMES.

Obs: Caso alguns clientes ou fornecedores tenham a mesma cidade, 
cada cidade será listada apenas uma vez, pois UNIONseleciona apenas valores distintos. 
Utilize UNION ALL para selecionar também valores duplicados!

Exemplo de SQL UNION ALL

--A seguinte instrução SQL retorna as cidades (também valores duplicados) das tabelas "Clientes" e "Fornecedores":

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

SQL UNION com WHERE
--A seguinte instrução SQL retorna as cidades alemãs (apenas valores distintos) das tabelas "Clientes" e "Fornecedores":

Exemplo
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SQL UNION ALL com WHERE
--A seguinte instrução SQL retorna as cidades alemãs (também valores duplicados) das tabelas "Clientes" e "Fornecedores":

Exemplo
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

Outro Exemplo UNION
--A seguinte instrução SQL lista todos os clientes e fornecedores:
Exemplo
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

```

```sql
SQL GROUP BY
O GROUP BY agrupa linhas com os mesmos valores em linhas de resumo, 
como "encontre o número de clientes em cada país".
é frequentemente utilizado com funções de agregação
( COUNT(), MAX(), MIN(), SUM(), AVG())

--A seguinte instrução lista o número de clientes em cada país:
Exemplo
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

--A seguinte instrução lista o número de clientes em cada país,
-- classificados de cima para baixo:

Exemplo
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

GROUP BY com JOIN 
--A seguinte instrução SQL lista o número de pedidos enviados por cada remetente:

Exemplo
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;
```

```sql
SQL HAVING

--A instrução a seguir lista o número de clientes em cada país. Incluindo apenas países com mais de 5 clientes:

Exemplo
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

--A instrução a seguir lista o número de clientes em cada país, classificados de cima a baixo (Decrescente) :
Exemplo
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

--A seguinte instrução SQL lista os funcionários que registraram mais de 10 pedidos:

Exemplo
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

--A instrução SQL a seguir lista se os funcionários "Davolio" ou "Fuller" registraram mais de 25 pedidos:

Exemplo
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
```

```sql
SQL EXISTS
--O EXISTS é usado para testar a existência de qualquer registro em uma subconsulta.
--O EXISTS retornará TRUE se a subconsulta retornar um ou mais registros.

--A seguinte instrução SQL retorna TRUE e lista os fornecedores com um preço de produto
--menor que 20:

Exemplo
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

```

```sql
SQL ANY and ALL Operators

--Os operadores ANYe ALLpermitem que você execute uma comparação entre um valor de coluna única e um intervalo de outros valores.

ANY operator:

retorna um valor booleano como resultado
retorna TRUE se QUALQUER um dos valores da subconsulta atender à condição
ANY significa que a condição será verdadeira se a operação for verdadeira 
para qualquer um dos valores no intervalo.

SQL ALL
O ALL operator:

retorna um valor booleano como resultado
retorna TRUE se TODOS os valores da subconsulta atenderem à condição
é usado com SELECT, WHEREe HAVINGinstruções
ALL significa que a condição será verdadeira somente se a operação for verdadeira para todos
os valores no intervalo.

--A instrução SQL a seguir lista o ProductName se encontrar QUALQUER registro na tabela OrderDetails com Quantidade igual a 10 (isso retornará TRUE porque a coluna Quantidade tem alguns valores de 10):

Exemplo
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);

--A instrução SQL a seguir lista o ProductName se encontrar QUALQUER registro na tabela OrderDetails com Quantity maior que 99 (isso retornará TRUE porque a coluna Quantity tem alguns valores maiores que 99):

Exemplo
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 99);

--A instrução SQL a seguir lista o ProductName se encontrar QUALQUER registro na tabela OrderDetails com Quantity maior que 1000 (isso retornará FALSE porque a coluna Quantity não possui valores maiores que 1000):

Exemplo
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 1000);
```

```sql
SQL SELECT INTO
SELECT INTO copia dados de uma tabela para uma nova tabela.

--Copie todas as colunas em uma nova tabela:
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

--Copie apenas algumas colunas em uma nova tabela:
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

--A seguinte instrução SQL cria uma cópia de backup de Clientes:
SELECT * INTO CustomersBackup2017
FROM Customers;

--A seguinte instrução SQL usa a IN para copiar a tabela em uma nova tabela em outro banco de dados:
SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
FROM Customers;

--A seguinte instrução SQL copia apenas os clientes alemães em uma nova tabela:
SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

--A seguinte instrução SQL copia dados de mais de uma tabela para uma nova tabela:--

SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

