CREATE TABLE employees(
   EmployeeId INTEGER  NOT NULL PRIMARY KEY 
  ,LastName   VARCHAR(8) NOT NULL
  ,FirstName  VARCHAR(8) NOT NULL
  ,Title      VARCHAR(19) NOT NULL
  ,ReportsTo  INTEGER 
  ,BirthDate  VARCHAR(30)
  ,HireDate   VARCHAR(30)
  ,Address    VARCHAR(27) NOT NULL
  ,City       VARCHAR(10) NOT NULL
  ,State      VARCHAR(2) NOT NULL
  ,Country    VARCHAR(6) NOT NULL
  ,PostalCode VARCHAR(7) NOT NULL
  ,Phone      VARCHAR(17) NOT NULL
  ,Fax        VARCHAR(17) NOT NULL
  ,Email      VARCHAR(24) NOT NULL
);
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (1,'Adams','Andrew','General Manager',NULL,NULL,NULL,'11120 Jasper Ave NW','Edmonton','AB','Canada','T5K 2N1','+1 (780) 428-9482','+1 (780) 428-3457','andrew@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (2,'Edwards','Nancy','Sales Manager',1,NULL,NULL,'825 8 Ave SW','Calgary','AB','Canada','T2P 2T3','+1 (403) 262-3443','+1 (403) 262-3322','nancy@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (3,'Peacock','Jane','Sales Support Agent',2,NULL,NULL,'1111 6 Ave SW','Calgary','AB','Canada','T2P 5M5','+1 (403) 262-3443','+1 (403) 262-6712','jane@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (4,'Park','Margaret','Sales Support Agent',2,NULL,NULL,'683 10 Street SW','Calgary','AB','Canada','T2P 5G3','+1 (403) 263-4423','+1 (403) 263-4289','margaret@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (5,'Johnson','Steve','Sales Support Agent',2,NULL,NULL,'7727B 41 Ave','Calgary','AB','Canada','T3B 1Y7','1 (780) 836-9987','1 (780) 836-9543','steve@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (6,'Mitchell','Michael','IT Manager',1,NULL,NULL,'5827 Bowness Road NW','Calgary','AB','Canada','T3B 0C5','+1 (403) 246-9887','+1 (403) 246-9899','michael@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (7,'King','Robert','IT Staff',6,NULL,NULL,'590 Columbia Boulevard West','Lethbridge','AB','Canada','T1K 5N8','+1 (403) 456-9986','+1 (403) 456-8485','robert@chinookcorp.com');
INSERT INTO employees(EmployeeId,LastName,FirstName,Title,ReportsTo,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Fax,Email) VALUES (8,'Callahan','Laura','IT Staff',6,NULL,NULL,'923 7 ST NW','Lethbridge','AB','Canada','T1H 1Y8','+1 (403) 467-3351','+1 (403) 467-8772','laura@chinookcorp.com');
