CREATE DATABASE AMAZON;
USE AMAZON;

CREATE TABLE USER_ACCOUNTS(
		ID INT PRIMARY KEY NOT NULL,
        NAME VARCHAR(10) NOT NULL,
        MOBILE BIGINT UNIQUE,
        EMAIL VARCHAR(100)
        );
        
        
CREATE TABLE USER_ORDERS (
	UID INT,
    PRODUCT_NAME VARCHAR(100),
    PRICE INT,
    FOREIGN KEY (UID) REFERENCES USER_ACCOUNTS(ID)
    );

INSERT INTO USER_ACCOUNTS VALUES(1,"VARUN",9988665544,"varun@gmail.com");

INSERT INTO USER_ACCOUNTS VALUES(2,"SHEERISH",87346534265,"SHEERISH@GAMIL.COM");

INSERT INTO USER_ORDERS VALUES(1,"SHIRT",800),(1,"PANT",1200);

SELECT * FROM USER_ORDERS;
SELECT * FROM USER_ACCOUNTS;

CREATE TABLE PRIME_ACCOUNTS (
	ID INT PRIMARY KEY NOT NULL,
    NAME VARCHAR(100) NOT NULL,
    MOBILE BIGINT UNIQUE,
    EMAIL VARCHAR(100)
    );
    
CREATE TABLE PRIME_ORDERS (
	ORDER_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(100),
    PRICE INT,
    UID INT NOT NULL,
    FOREIGN KEY (UID) REFERENCES PRIME_ACCOUNTS(ID)
);

INSERT INTO PRIME_ACCOUNTS VALUES(1,"MANOJ",87326586,"MANOJ@GMAIL.COM");
SELECT * FROM PRIME_ACCOUNTS;
SELECT * FROM PRIME_ORDERS;
INSERT INTO PRIME_ORDERS VALUES(101,"WATCH",8000,1),(102,"TABLEMATE",10000,1);

DELETE FROM PRIME_ACCOUNTS WHERE ID=101;
DELETE FROM PRIME_ACCOUNTS WHERE ID=102;




