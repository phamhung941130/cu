-- Tạo DATABASE Assignment:
DROP DATABASE IF EXISTS Assignment;
CREATE DATABASE Assignment;
USE Assignment;

-- Tạo TABLE Trainee:
DROP DATABASE IF EXISTS Trainee;
CREATE TABLE Trainee(
	TraineeID			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    FUll_Name			VARCHAR(30) NOT NULL,
    Birth_Date			DATE NOT NULL,
    Gender				ENUM('male','female','unknown') NOT NULL,
    ET_IQ				TINYINT UNSIGNED NOT NULL,
    ET_Gmath			TINYINT UNSIGNED NOT NULL,
    ET_English			TINYINT UNSIGNED NOT NULL,
    Training_Class		CHAR(10),
    Evaluation_Note		VARCHAR(100),
    VTI_Account			VARCHAR(30) NOT NULL UNIQUE KEY
);
-- Tạo TABLE Description:
DROP DATABASE IF EXISTS Exercise2;
CREATE TABLE Exercise2(
	Exercise2ID			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Name`				VARCHAR(30) NOT NULL,
    `Code`				CHAR(5) NOT NULL UNIQUE, 
    ModifiedDate		DATETIME DEFAULT NOW()
);

-- Tạo TABLE Description:
DROP DATABASE IF EXISTS Exercise3;
CREATE TABLE Exercise3(
	Exercise3ID			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Name`				VARCHAR(30) NOT NULL,
   BirthDate			DATE NOT NULL,
    Gender				ENUM( '1','0','unknown') NOT NULL,
    IsDeletedFlag		BIT DEFAULT 0
);

-- INSERT dữ liệu bảng Trainee
INSERT INTO Trainee(  FUll_Name,	Birth_Date,    Gender,	  ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Note, VTI_Account)
VALUES				('Username1',	'2001-01-01',   'female',  '5',		'20',	'20',		'Class1',		'1',		'1@Gmail.com'	),
					('Username2',	'2001-02-02',   'male',		'1',	'2'	,	'30',		'Class2',		'2',		'2@Gmail.com'	),
                    ('Username3',	'2001-03-03',   'female',  '10',	'7'	,	'40',		'Class1',		'3',		'3@Gmail.com'	),
                    ('Username4',	'2001-04-04',   'male',    '15',	'8'	,	'50',		'Class2',		'4',		'4@Gmail.com'	),
                    ('Username5',	'2001-05-05',   'female',  '20',	'10',	'45',		'Class1',		'5',		'5@Gmail.com'	),
                    ('Username6',	'2001-06-06',   'male',    '0',		'05',	'35',		'Class3',		'6',		'6@Gmail.com'	),
                    ('Username7',	'2001-07-07',   'female',  '16',	'10',	'25',		'Class4',		'7',		'7@Gmail.com'	),
                    ('Username8',	'2001-08-08',   'male',    '17',	'07',	'15',		'Class3',		'8',		'8@Gmail.com'	),
                    ('Username9',	'2001-09-09',   'female',  '11',	'07',	'5'	,		'Class2',		'9',		'9@Gmail.com'	),
                    ('Username10',	'2001-01-01',   'unknown', '7',		'09',	'1'	,		'Class4',		'10',		'10@Gmail.com'	);
 -- SELECT * FROM Trainee;

-- INSERT dữ liệu bảng Exercise2 
INSERT INTO Exercise2(  	`Name`	,   `Code`	)
VALUES				 (	'Username1',   12345	),
					 (	'Username2',	12346	),
                     (	'Username3',	12347	),
                     (	'Username4',	12348	),
                     (	'Username5',	12349	),
                     (	'Username6',	12354	),
                     (	'Username7',	12332	),
                     (	'Username8',	12341	),
                     (	'Username9',	12351	),
                     (	'Username10',	12361	);
-- SELECT * FROM Exercise2;

-- INSERT dữ liệu bảng Exercise3
INSERT INTO Exercise3(  `Name`	,  BirthDate	,	Gender,	IsDeletedFlag	)
VALUES				 ('Username1',	'2001-01-01',   	1,  	0			),
					 ('Username2',	'2001-02-02',   	0,		0			),
                     ('Username3',	'2001-03-03',  		1,  	0			),
                     ('Username4',	'2001-04-04',  		0,   	NULL		),
                     ('Username5',	'2001-05-05',  	 	1,  	0			),
                     ('Username6',	'2001-06-06',   	NULL,   	NULL		),
                     ('Username7',	'2001-07-07',   	1,  	0			),
                     ('Username8',	'2001-08-08',   	0,  	0			),
                     ('Username9',	'2001-09-09',   	1,		0			),
                     ('Username10',	'2001-01-01',   	NULL,	NULL		);
-- SELECT * FROM Exercise3;
                     


