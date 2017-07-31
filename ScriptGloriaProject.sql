CREATE DATABASE GloriaProject;

USE GloriaProject;

DROP TABLE users;
DROP TABLE user_profiles;

CREATE TABLE user_profiles(
	id INT IDENTITY,
	libelle NVARCHAR(50) NOT NULL,
	CONSTRAINT pk_profiles PRIMARY KEY(id),
);

CREATE TABLE users(
	id INT IDENTITY,
	lastName NVARCHAR(100) NOT NULL,
	firstName NVARCHAR(100) NOT NULL,
	email NVARCHAR(100) NOT NULL,
	password NVARCHAR(50) NOT NULL,
	birthdate DATETIME,
	phone INT,
	profile INT NOT NULL,
	CONSTRAINT pk_users PRIMARY KEY(id),
	CONSTRAINT fk_users_profiles FOREIGN KEY(profile) REFERENCES user_profiles (id)
);