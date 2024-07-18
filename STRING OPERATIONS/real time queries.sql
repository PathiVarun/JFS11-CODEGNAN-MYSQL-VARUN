-- Email Validation and Extraction:

-- Problem: You have a table USERS with a column EMAIL. Write a query to find all email addresses that are incorrectly formatted (i.e., do not contain an '@' symbol or do not have a domain part).
-- Task: Identify incorrectly formatted email addresses and extract the domain part from valid email addresses.

CREATE DATABASE STRING_QUESTIONS;
USE STRING_QUESTIONS;
CREATE TABLE USERS(
	USER_NAME VARCHAR(10),
    EMAIL VARCHAR(50)
    );
INSERT INTO USERS VALUES("VARUN","varun05@gmail.com"),("DINESH","dinesh1235%gmail.com");
SELECT * FROM USERS;
SELECT * FROM USERS WHERE EMAIL NOT LIKE "%@%";

SELECT 
    EMAIL,
    CASE
        WHEN EMAIL NOT LIKE '%@%' OR LENGTH(SUBSTRING(EMAIL, INSTR(EMAIL, '@') + 1)) = 0 THEN 'Invalid'
        ELSE SUBSTRING(EMAIL, INSTR(EMAIL, '@') + 1)
    END AS Domain
FROM 
    USERS;
    

-- Standardize Names:

-- Problem: In the CUSTOMER table, the FIRST_NAME and LAST_NAME columns have inconsistent casing (some are all uppercase, some are all lowercase, some are mixed case). Write a query to standardize the casing so that the first letter of each name is uppercase and the rest are lowercase.
-- Task: Standardize the names to proper case.
CREATE TABLE CUSTOMERS(
	FIRST_NAME VARCHAR(100) ,
    LAST_NAME VARCHAR(100)
    );
    
INSERT INTO CUSTOMERS VALUES("patHI","vARUN"),("KurellA","RajeSH");

SELECT * FROM CUSTOMERS;
SELECT CONCAT(UPPER(SUBSTRING(FIRST_NAME,1,1)),LOWER(SUBSTRING(FIRST_NAME,2))) AS FIRST_NAME,
		CONCAT(UPPER(SUBSTRING(LAST_NAME,1,1)),LOWER(SUBSTRING(LAST_NAME,2))) AS LAST_NAME
FROM CUSTOMERS;

-- Phone Number Formatting:

-- Problem: The CONTACTS table contains a PHONE column with phone numbers stored in different formats (e.g., 1234567890, (123) 456-7890, 123-456-7890). Write a query to convert all phone numbers to a standardized format of (XXX) XXX-XXXX.
-- Task: Reformat all phone numbers to the standard format.

CREATE TABLE CONTACTS(
PHONE BIGINT
);
ALTER TABLE CONTACTS MODIFY COLUMN PHONE VARCHAR(100);
SELECT* FROM CONTACTS;
TRUNCATE CONTACTS;
INSERT INTO CONTACTS (PHONE) VALUES
    ("32975710734"),
    ("384-(732)"),
    ("326-830-723");
    
SELECT
    REPLACE(REPLACE(REPLACE(TRIM(BOTH '()-' FROM PHONE), '(', ''), ')', ''), '-', '') AS CLEAN_PHONE
FROM
    CONTACTS;

SELECT REPLACE(REPLACE(REPLACE(PHONE,"(",""),")",""),"-","") AS CLEANPHONE FROM CONTACTS;


