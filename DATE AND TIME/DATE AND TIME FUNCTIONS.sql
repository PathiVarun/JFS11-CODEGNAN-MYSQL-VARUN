CREATE DATABASE DATEANDTIME;
USE DATEANDTIME;
-- DATE FUNCTIONS
CREATE TABLE EMP(
	ID INT,
    JOINDATE DATE
);

INSERT INTO EMP VALUES(1,"2024-02-21"),(2,"2024-03-01");
SELECT * FROM EMP;

-- TO KNOW THE CURRENT DATE 
SELECT CURRENT_DATE();
	-- OR --
SELECT CURDATE();

-- ADD THE NEW DATE TO THE GIVEN DATE
SELECT DATE_ADD("2024-01-01",INTERVAL 3 YEAR) AS NEWDATE;
SELECT DATE_ADD("2024-01-01",INTERVAL 3 MONTH) AS NEWDATE;
SELECT DATE_ADD("2024-01-01",INTERVAL 3 DAY) AS NEWDATE;

-- DIFF
SELECT DATEDIFF("2024-01-01","2023-12-31") AS DIFFERENCE;

                                               -- TIME FUNCTIONS --
ALTER TABLE EMP ADD COLUMN TIMEE TIME;

-- TO KNOW THE CURRENT TIME
SELECT CURTIME();

INSERT INTO EMP VALUES(3,"2024-02-22","12:20:04");
SELECT* FROM EMP;

-- ADDTIME 
SELECT ADDTIME("12:20:04","00:39:56") AS NEWTIME;
-- DIFFERENCE TIME
SELECT TIMEDIFF("12:40:00","12:30:00") AS NEWTIME;
                -- OR --
SELECT SUBTIME("12:40:00","12:30:00") AS NEWTIME;
-- CONVERSION
SELECT TIME_TO_SEC("00:01:00") AS SECONDS;

                                            -- TIMESTAMP --

-- TO KNOW THE CURRENT DATE AND TIME
SELECT CURRENT_TIMESTAMP();
SELECT TIMESTAMPDIFF(MONTH,"2024-01-01 10:10:10","2024-02-01 10:10:10") AS MONTHSDIFFERENCE;
SELECT TIMESTAMPDIFF(DAY,"2024-01-01 10:10:10","2024-02-01 10:10:10") AS DAYDIFFERENCE;
SELECT TIMESTAMPDIFF(YEAR,"2024-01-01 10:10:10","2024-02-01 10:10:10") AS YEARDIFFERENCE;

CREATE TABLE EMP2(
	ID INT,
    TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO EMP2 VALUES(1,"2024-07-22 10:24:00");
SELECT * FROM EMP2;
INSERT INTO EMP2(ID) VALUES(2);

CREATE TABLE EMP3(
	ID INT,
    TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO EMP3 VALUES(1,"2024-07-22 10:24:00");
SELECT * FROM EMP3;
INSERT INTO EMP3(ID) VALUES(2);

SET SQL_SAFE_UPDATES=0;
UPDATE EMP3 SET ID=3;


SELECT TIMESTAMPDIFF(YEAR,"2002-06-05","2024-07-22") AS YEARS,
DATEDIFF("2024-07-22",DATE_ADD("2002-06-05", INTERVAL TIMESTAMPDIFF(YEAR,"2002-06-05","20 24-07-22") YEAR)) AS DAYS,
DATEDIFF("2024-07-22",DATE_ADD("2002-06-05", INTERVAL TIMESTAMPDIFF(MONTH,"2002-06-05","2024-07-22") MONTH)) AS MONTHS;







