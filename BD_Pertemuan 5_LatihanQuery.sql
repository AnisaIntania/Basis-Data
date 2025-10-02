-- Anisa Intania Putri
-- 2024071010

-- Membuat database
create database sales2;
use sales2;

-- buat tabel customers
CREATE TABLE Customers (
    CustomerID   INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    ContactName  VARCHAR(100),
    Address      VARCHAR(150),
    City         VARCHAR(50),
    PostalCode   VARCHAR(20),
    Country      VARCHAR(50)
);

-- membuat tabel product
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR (100),
SupplierID INT,
CategoryID INT,
Unit VARCHAR (50),
Price DECIMAL (10,2)
);
DROP TABLE Products; -- hapus table
SELECT * FROM Products;

-- menampilkan tabel customers
SELECT * FROM Customers;

-- mengedit stuktur tabel dr addres ke address
ALTER TABLE customers
rename column addres to address;

-- menambahkan data dari 1 - 91
INSERT INTO Customers (CustomerID, CustomerName, ContactName,
Address, City, PostalCode, Country)
VALUES
(1, "Alfreds Futterkiste", "Maria Anders", "Obere Str. 57", "Berlin", "12209", "Germany"),
(2, "Ana Trujillo Emparedados y helados", "Ana Trujillo", "Avda. de la Constitución 2222", "México D.F.", "05021", "Mexico"),
(3, "Antonio Moreno Taquería", "Antonio Moreno", "Mataderos 2312", "México D.F.", "05023", "Mexico"),
(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),
(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden'),
(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany'),
(7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France'),
(8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain'),
(9,'Bon app''','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France'),
(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada'),
(11,'B''s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK'),
(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina'),
(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','05022','Mexico'),
(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland'),
(15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil'),
(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK'),
(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany'),
(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France'),
(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK'),
(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria'),
(21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil'),
(22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain'),
(23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France'),
(24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden'),
(25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany'),
(26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France'),
(27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy'),
(28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal'),
(29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','08022','Spain'),
(30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain'),
(31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil'),
(32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA'),
(33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela'),
(34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil'),
(35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela'),
(36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA'),
(37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland'),
(38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK'),
(39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany'),
(40,'La corne d''abondance','Daniel Tonini','67, avenue de l''Europe','Versailles','78000','France'),
(41,'La maison d''Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France'),
(42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada'),
(43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA'),
(44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany'),
(45,'Let''s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA'),
(46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela'),
(47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela'),
(48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA'),
(49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy'),
(50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium'),
(51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada'),
(52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany'),
(53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK'),
(54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina'),
(55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA'),
(56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany'),
(57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France'),
(58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexico'),
(59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria'),
(60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal'),
(61,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil'),
(62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil'),
(63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','01307','Germany'),
(64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina'),
(65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA'),
(66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy'),
(67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil'),
(68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland'),
(69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain'),
(70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway'),
(71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA'),
(72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK'),
(73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark'),
(74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France'),
(75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA'),
(76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium'),
(77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA'),
(78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA'),
(79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany'),
(80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','05033','Mexico'),
(81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil'),
(82,'Trail''s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA'),
(83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark'),
(84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France'),
(85,'Vins et alcools Chevalier','Paul Henriot','59 rue de l''Abbaye','Reims','51100','France'),
(86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany'),
(87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland'),
(88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil'),
(89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA'),
(90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland'),
(91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012',
'Poland');

-- menambahkan data 
INSERT INTO Products (ProductID, ProductName, SupplierID,
CategoryID, Unit, Price) VALUES 
(1, "Chais", 1, 1, "10 boxes x 20 bags", 18),
(2,'Chang',1,1,'24 - 12 oz bottles',19),
(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10),
(4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22),
(5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35),
(6,'Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25),
(7,'Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30),
(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40),
(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97),
(10,'Ikura',4,8,'12 - 200 ml jars',31),
(11,'Queso Cabrales',5,4,'1 kg pkg.',21),
(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38),
(13,'Konbu',6,8,'2 kg box',6),
(14,'Tofu',6,7,'40 - 100 g pkgs.',23.25),
(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5),
(16,'Pavlova',7,3,'32 - 500 g boxes',17.45),
(17,'Alice Mutton',7,6,'20 - 1 kg tins',39),
(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5),
(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2),
(20,'Sir Rodney''s Marmalade',8,3,'30 gift boxes',81),
(21,'Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10),
(22,'Gustaf''s Knäckebröd',9,5,'24 - 500 g pkgs.',21),
(23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9),
(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5),
(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14),
(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23),
(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9),
(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.6),
(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79),
(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89),
(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5),
(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32),
(33,'Geitost',15,4,'500 g',2.5),
(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14),
(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18),
(36,'Inlagd Sill',17,8,'24 - 250 g jars',19),
(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26),
(38,'Côte de Blaye',18,1,'12 - 75 cl bottles',263.5),
(39,'Chartreuse verte',18,1,'750 cc per bottle',18),
(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4),
(41,'Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65),
(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14),
(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46),
(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45),
(45,'Røgede sild',21,8,'1k pkg.',9.5),
(46,'Spegesild',21,8,'4 - 450 g glasses',12),
(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5),
(48,'Chocolade',22,3,'10 pkgs.',12.75),
(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20),
(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25),
(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53),
(52,'Filo Mix',24,5,'16 - 2 kg boxes',7),
(53,'Perth Pasties',24,6,'48 pieces',32.8),
(54,'Tourtière',25,6,'16 pies',7.45),
(55,'Pâté chinois',25,6,'24 boxes x 2 pies',24),
(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38),
(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5),
(58,'Escargots de Bourgogne',27,8,'24 pieces',13.25),
(59,'Raclette Courdavault',28,4,'5 kg pkg.',55),
(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34),
(61,'Sirop d''érable',29,2,'24 - 500 ml bottles',28.5),
(62,'Tarte au sucre',29,3,'48 pies',49.3),
(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9),
(64,'Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33.25),
(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05),
(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17),
(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14),
(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5),
(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36),
(70,'Outback Lager',7,1,'24 - 355 ml bottles',15),
(71,'Fløtemysost',15,4,'10 - 500 g pkgs.',21.5),
(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8),
(73,'Röd Kaviar',17,8,'24 - 150 g jars',15),
(74,'Longlife Tofu',4,7,'5 kg pkg.',10),
(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',7.75),
(76,'Lakkalikööri',23,1,'500 ml',18),
(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13);
SELECT * FROM Products;

-- QUERY SELECT
SELECT * FROM sales2.Customers;
SELECT CustomerName, City FROM Customers;

-- QUERY SELECT DISTINCT
SELECT DISTINCT Country FROM Customers; -- menampilkan negara  apa saja yg ada di dalam data
SELECT Country FROM Customers; -- menampilkan nilai negara dari semua data
SELECT COUNT(DISTINCT Country) FROM Customers; -- menghitung total semua negara

-- QUERY WHERE
SELECT * FROM Customers
WHERE Country='Mexico'; -- semua customers dari Mexico
SELECT * FROM Customers
WHERE CustomerID=1; -- customer dengan ID 1
SELECT * FROM Customers
WHERE CustomerID > 80; -- customer yang ID nya di atas 80
SELECT * FROM Customers
WHERE CustomerID >= 80; -- customer dari 80 ke atas
SELECT * FROM Customers
WHERE CustomerID != 80; -- semua customer kecuali no 80
SELECT * FROM Customers
WHERE CustomerID BETWEEN 70 AND 80; -- customer dari ID 70 sampe 80
SELECT * FROM Customers
WHERE City LIKE 's%'; -- customer yg huruf depan citynya "S"
SELECT * FROM Customers
WHERE City IN ('Paris','London'); -- customer yg citynya Paris dan London

-- QUERY ORDER BY (DEFAULT: ASCEDING)
SELECT * FROM Products
ORDER BY Price; -- dari harga produk yg paling kecil (ascending)
SELECT * FROM Products
ORDER BY Price DESC; -- dari harga produk yg paling besar (descending)
SELECT * FROM Products
ORDER BY ProductName; -- nama produk berurutan dari A-Z
SELECT * FROM Products
ORDER BY ProductName DESC; -- nama produk berurutan dari Z-A
SELECT * FROM Customers -- diurutin dari country (A-Z), tp kalo countrynya
ORDER BY Country, CustomerName; -- sama, bakal diurutin dr nama customer (A-Z)
SELECT * FROM Customers  -- diurutin dari country (A-Z), tp kalo countrynya
ORDER BY Country ASC, CustomerName DESC; -- sama, bakal diurutin dr nama customer (Z-A)

-- QUERY AND
SELECT * FROM Customers -- view dari Spain sama nama awalan huruf G
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';
SELECT * FROM Customers
WHERE Country = 'Brazil' -- customer dr Brazil
AND City = 'Rio de Janeiro' -- dari Rio de Janeiro
AND CustomerID > 50; -- dan yg IDnya diatas 50
SELECT * FROM Customers -- customer yg ada di Spain namanya dr G/R
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
SELECT * FROM Customers -- customer yg namanya dr G/R yg Spain dan bisa dr negara lain
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';

-- QUERY OR 
SELECT * FROM Customers -- customers yg di Germany/Spain

-- QUERY NOT
SELECT * FROM Customers 
WHERE NOT Country = 'Spain';

-- QUERY NOT
SELECT * FROM Customers 
WHERE NOT Country = 'Spain'; -- semua negara kecuali Spain
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%'; -- nama semua customer kecuali yg awalnya A
SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60; -- ga namapilin yg IDnya dari 10 sampe 60 
SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London'); -- semua city kecualai paris dan london
SELECT * FROM Customers
WHERE NOT CustomerID > 50; -- ga nampilin ID lebih dari 50 
SELECT * FROM Customers
WHERE NOT CustomerId < 50; -- ga nampilin ID kurang dari 50

-- QUERY NULL
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL; -- digunakan untuk menguji nilai kosong
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL; -- digunakan untuk menguji nilai yang tidak kosong

-- QUERY UPDATE ISI TABEL
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 1; -- update contactname dr maria ke alfred, city dr berlin ke frankfrut
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico'; -- update contname jd juan yg data negaranya mexicp

-- QUERY DELETE
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste'; -- ngapus alfreds dr list
DELETE FROM Customers; -- apus semua data yg ada di tabel pelanggan tanpa menghapus tabelnya
DROP TABLE Customers; -- kalo mau hapus tabelnya pake ini

-- QUERY TOP, LIMIT, FETCH FIRST or ROWNUM
SELECT * FROM Customers LIMIT 3; 
-- view 3 org teratas SQL ga bisa pake TOP N FETCH bisanya pake LIMIT
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3; -- view 3 org teratas di negara Germany
SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3; -- 3 terbawah nama orang

-- QUERY Aggregate Functions
SELECT COUNT(*) AS TotalCustomers
FROM Customers; -- Hitung jumlah customer
SELECT COUNT(*) AS TotalProducts
FROM Products; -- Hitung jumlah produk 
SELECT MAX(Price) AS HighestPrice,
       MIN(Price) AS LowestPrice
FROM Products; -- Cari harga produk paling mahal & paling murah
SELECT AVG(Price) AS AveragePrice
FROM Products; -- Hitung rata-rata harga produk
SELECT CategoryID, COUNT(*) AS TotalProducts
FROM Products
GROUP BY CategoryID; -- Jumlah produk per kategori
SELECT SupplierID, COUNT(*) AS ProductCount
FROM Products
GROUP BY SupplierID
ORDER BY ProductCount DESC; -- Supplier mana yang punya total produk terbanyak
SELECT CategoryID, AVG(Price) AS AveragePrice
FROM Products
GROUP BY CategoryID
HAVING AVG(Price) > 50; -- Cari kategori dengan rata-rata harga produk di atas 50

-- QUERY MIN MAX
SELECT MIN(Price)
FROM Products; -- Cari harga termurah
SELECT MIN(Price) AS SmallestPrice
FROM Products; -- sama aja tapi di namain
SELECT MAX(Price)
FROM Products; -- Cari harga termahal
SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;

-- QUERY COUNT
SELECT COUNT(*)
FROM Products; -- total semua rows di table produk
SELECT COUNT(ProductName)
FROM Products;
SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;
SELECT COUNT(DISTINCT Price)
FROM Products;

-- QUERY SUM
SELECT SUM(Quantity)
FROM OrderDetails;
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;

-- QUERY AVG 
SELECT AVG(Price)
FROM Products;

-- QUERY LIKE 
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

-- QUERY WILDCARD %, _, []
SELECT * FROM Customers
WHERE CustomerName LIKE '%es'; -- nama yg terakhirnya es
SELECT * FROM Customers
WHERE City LIKE 'L___on';
SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%'; -- nama awal b,s,p
SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%'; -- nama awal a-f
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

-- QUERY IN
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);

-- QUERY BETWEEN 
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

 -- QUERY ALIASES
 SELECT CustomerID AS ID
FROM Customers;
SELECT * FROM Customers AS Persons;
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

-- QUERY JOIN
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- QUERY INNER JOIN
SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- QUERY LEFT JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- QUERY RIGHT JOIN
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- QUERY FULL JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

-- QUERY UNION
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

-- QUERY UNION ALL
SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

-- QUERY GROUP BY
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- QUERY HAVING
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- QUERY EXISTS
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products 
WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

-- QUERY ANY, ALL
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
-- QUERY SELECT INTO
SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

-- QUERY INSERT INTO SELECT
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

-- QUERY CASE 
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

-- QUERY NULL FUNCTIONS
SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;

-- QUERY STORED PROCEDURES
-- create procedure
DELIMITER $$
CREATE PROCEDURE SelectAllCustomers()
BEGIN
    SELECT * FROM Customers;
END $$
DELIMITER ;
-- execute / memanggil 
CALL SelectAllCustomers();





