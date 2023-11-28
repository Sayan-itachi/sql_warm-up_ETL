CREATE DATABASE SALES_DETAIL;
USE SALES_DETAIL;
CREATE TABLE LOCATION(
LKey INT PRIMARY KEY,
City VARCHAR(50)
);

INSERT INTO LOCATION VALUES (1,'Stockholm'),
(2,'London'),
(3,'Paris');

CREATE TABLE PRODUCT(
PKey INT PRIMARY KEY,
Name VARCHAR(50)
);
INSERT INTO PRODUCT VALUES (1,'#5'),
(2,'Noah'),
(3,'Opium');


CREATE TABLE TIME(
TKey INT PRIMARY KEY,
Month VARCHAR(50)
);

INSERT INTO TIME VALUES (1,'Jan'),
(2,'Feb'),
(3,'Mar'),
(4, 'Apr');

CREATE TABLE SALES(
LKey INT FOREIGN KEY REFERENCES LOCATION(LKey),
PKey INT FOREIGN KEY REFERENCES PRODUCT(PKey),
TKey INT FOREIGN KEY REFERENCES TIME(TKey),
Qnt INT
);

INSERT INTO SALES VALUES(1,1,1,5),
(1,2,1,7),
(1,3,1,4),
(2,1,1,8),
(2,2,1,3),
(2,3,1,5),
(3,1,1,20),
(3,2,1,10),
(3,3,1,30),
(1,1,2,10),
(1,2,2,9),
(1,3,2,7),
(2,1,2,5),
(2,2,2,10),
(2,3,2,8),
(3,1,2,20),
(3,2,2,50);

SELECT * FROM LOCATION;
SELECT * FROM PRODUCT;
SELECT * FROM TIME;
SELECT * FROM SALES;

--10)DISPLAY NO. OF OPIUM PRODUCT QTY SOLD IN LONDON IN MONTH OF JANUARY
SELECT SUM(Qnt) from SALES S
JOIN PRODUCT P
ON S.PKey = P.PKey
JOIN TIME T ON T.TKey = S.TKey
JOIN LOCATION L ON L.LKey = S.LKey
WHERE P.PKey = 3 AND T.TKey = 1 AND L.LKey = 2;


--2) DISPLAY NO. OF QTY SOLD IN MONTH OF MARCH
SELECT SUM(Qnt) from SALES S
JOIN TIME T ON T.TKey = S.TKey
WHERE T.TKey = 3;

--3) DISPLAY NO. OF PRODUCT SOLD IN FIRST QUARTER IN CITY PARIS

--4) DISPLAY NO. OF NOAH PRODUCT SOLD IN THE MONTH OF FEBRUARY
SELECT SUM(QNT) FROM SALES S
JOIN PRODUCT P
ON S.PKey = P.PKey
JOIN TIME T ON T.TKey = S.TKey
WHERE P.PKey = 2 AND T.TKey = 2;
