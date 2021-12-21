DROP DATABASE IF EXISTS testingsystem;
CREATE DATABASE testingsystem;
USE testingsystem;

CREATE TABLE Department (
	DepartmentID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	DepartmentName VARCHAR(30) NOT NULL UNIQUE KEY
);

CREATE TABLE Position (
	PositionID		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName	ENUM('DEV','TEST','SCRUM MASTER','PM') NOT NULL UNIQUE KEY
);

CREATE TABLE `ACCOUNT` (
	ACCOUNTID		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    EMAIL			VARCHAR(30) NOT NULL UNIQUE KEY,
    USERNAME		VARCHAR(30) NOT NULL UNIQUE KEY,
    FULLNAME		VARCHAR(30) NOT NULL,
    DepartmentID	TINYINT	UNSIGNED NOT NULL,
    PositionID		TINYINT UNSIGNED NOT NULL,
    CREATEDATE		DATETIME DEFAULT NOW()
);

INSERT INTO Department(DepartmentName)
VALUES					('SALE'),
						('KỸ THUẬT'),
						('MAKETING'),
                        ('Quản Lý'),
                        ('Trưởng Phòng');
-- Thêm dữ liệu vào cột Position
INSERT INTO Position (PositionName)
VALUE					('DEV'),
						('TEST'),
                        ('SCRUM MASTER'),
                        ('PM');

INSERT INTO `ACCOUNT`(        EMAIL,      USERNAME, FULLNAME, DepartmentID,PositionID)
VALUE					('anv@gmail.com',    'a',	 'anv',      '2',       '1'),
						('bnv@gmail.com',    'b',    'bnv',      '5',       '4'),
                        ('cnv@gmail.com',    'c',    'cnv',      '1',       '2'),
                        ('dnv@gmail.com',    'd',    'dnv',      '4',       '3'),
                        ('env@gmail.com',    'e',    'env',      '3',       '3');