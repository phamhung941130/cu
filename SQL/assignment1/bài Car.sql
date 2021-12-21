DROP DATABASE IF EXISTS BT2;
CREATE DATABASE BT2;
USE BT2;
CREATE TABLE Custumer (
CustumerID SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR(30) NOT NULL,
Phone CHAR(16) NOT NULL UNIQUE KEY,
Email VARCHAR(50) NOT NULL UNIQUE KEY,
Address VARCHAR(50) NOT NULL,
Note    VARCHAR (100) NOT NULL
);
CREATE TABLE Car (
CarID SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Maker ENUM('HONDA','TOYOTA','NISSAN'),
Model VARCHAR(50) NOT NULL,
`Year` TINYINT NOT NULL,
Color  VARCHAR(20) NOT NULL,
Note   VARCHAR(20) NOT NULL
);
CREATE TABLE Car_order (
OrderID SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
CustumerID SMALLINT NOT NULL,
CarID      SMALLINT NOT NULL,
Amount     TINYINT DEFAULT (1),
SalePrice  DOUBLE NOT NULL,
OrderDate  DATE NOT NULL,
DeliveryDate DATE NOT NULL,
DeliveryAddress VARCHAR(50) NOT NULL,
`Status`      TINYINT DEFAULT 0 NOT NULL,
Note		VARCHAR(100) NOT NULL ,
FOREIGN KEY (CarID) REFERENCES Custumer(CarID) ON DELETE CASCADE,
FOREIGN KEY (CustumerID) REFERENCES Custumer(CustumerID) ON DELETE CASCADE
 );
 INSERT INTO Custumer( `Name`,  phone,     Email,      Address, note)
 VALUES              (  'a',    '0981','anv@gmail.com', 'HN',  'rick'),
                     (  'b',    '0982','bnv@gmail.com', 'ND',  'p'   ),
                     (  'c',    '0983','cnv@gmail.com', 'HP',  'rick'),
                     (  'd',    '0984','dnv@gmail.com', 'TB',  'p'   ),
                     (  'e',    '0985','env@gmail.com', 'NB',  'rick');
 INSERT INTO Car     (Maker,   Mordel,  `Year`,  Color,  Note)
 VALUES              ('HONDA', 'CRVPM','2019','BLACK','5'),			
				     ('TOYOTA','INOVA','2007','WHITE','7'),
                     ('NISSAN','BTSAV','2010','BLACK','5'),
                     ('HONDA', 'I10PR','2015','WHITE','5'),
                     ('TOYOTA','CAMRY','2018','BLACK','5');
INSERT INTO Car_order
(CustumID, CarID, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, Note)
VALUES
('1',      '2',   '1',   '50000',   '2021-9-1',  '2022-1-1',     'HN',         '0'),
('2',      '3',   '1',   '60000',   '2021-9-2',  '2022-1-2',     'NĐ',         '0'),
('3',      '1',   '1',   '70000',   '2021-9-3',  '2022-1-3',     'HP',         '0'),
('4',      '4',   '1',   '80000',   '2021-9-4',  '2022-1-4',     'TB',         '0'),
('5',      '5',   '1',   '80000',   '2021-9-4',  '2022-1-4',     'NB',         '0');
                     