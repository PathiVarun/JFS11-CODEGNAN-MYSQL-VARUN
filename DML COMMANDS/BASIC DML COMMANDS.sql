-- USE DML;
-- SHOW TABLES;
-- INSERT INTO EMPLOYEE (ID,NAME,SALARY) VALUES(1,"VARUN",500000);
-- INSERT INTO EMPLOYEE VALUES(2,"SAI",400000),(3,"SIDDHU",600000);
-- SELECT * FROM EMPLOYEE;
-- INSERT INTO EMPLOYEE VALUES(4,"DINESH",900000),(5,"MAHESH",1000000),(6,"IMRAN",800000);
-- CREATE TABLE MAX_SAL(ID INT,NAME VARCHAR(100));
-- INSERT INTO MAX_SAL(ID,NAME) SELECT ID,NAME FROM EMPLOYEE;
-- SELECT * FROM MAX_SAL;
-- INSERT INTO MAX_SAL(ID,NAME) SELECT ID,NAME FROM EMPLOYEE WHERE SALARY>=600000;
-- SELECT ID,NAME FROM MAX_SAL;
-- TRUNCATE MAX_SAL;
-- INSERT INTO EMPLOYEE VALUES(550000,"RAJESH",7);
-- UPDATE EMPLOYEE SET SALARY=550000 WHERE NAME="RAJESH";
-- SET SQL_SAFE_UPDATES=0;
-- UPDATE EMPLOYEE SET NAME="RAVI" WHERE ID=4;
-- DELETE FROM EMPLOYEE WHERE NAME="RAVI";
-- DELETE FROM EMPLOYEE WHERE ID=1;
-- DELETE FROM EMPLOYEE WHERE SALARY=1000000;
-- SET SQL_SAFE_UPDATES=0;
CREATE TABLE PRODUCTS (
	ID INT,
    NAME VARCHAR(20) NOT NULL ,
    PRICE INT NOT NULL DEFAULT 0
    );
    SELECT * FROM PRODUCTS;
    INSERT INTO PRODUCTS VALUES(1,"RAJU",500);
    INSERT INTO PRODUCTS(ID,PRICE) VALUES(2,200);
	INSERT INTO PRODUCTS(ID,NAME) VALUES(3,"VARUN");
    




