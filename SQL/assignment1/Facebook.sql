-- tạo databse:

DROP DATABASE IF EXISTS Facebook_DB;
CREATE DATABASE Facebook_DB;
USE Facebook_DB;

-- tạo table:

DROP TABLE IF EXISTS `National`;
CREATE TABLE `National`(
	National_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    National_Name		VARCHAR(50) NOT NULL UNIQUE KEY,
    Language_Main		VARCHAR(50) NOT NULL		
);

DROP TABLE IF EXISTS Office;
CREATE TABLE Office(
	Office_id 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Street_Address		VARCHAR(50) NOT NULL UNIQUE KEY,
    National_id			TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (National_id) REFERENCES `National`(National_id)
);

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff(
	Staff_id 		SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    First_Name		VARCHAR(50) NOT NULL,
    Last_Name		VARCHAR(50) NOT NULL,
    Email			VARCHAR(50) NOT NULL UNIQUE KEY,
    Office_id		TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (Office_id) REFERENCES Office(Office_id)
);

-- Insert dữ liệu:

INSERT INTO `National`(National_Name,	Language_Main)
VALUES				('Viet Nam',		'Vietnamese');