DROP SCHEMA IF EXISTS JFog;
CREATE SCHEMA JFog;
USE JFog;

CREATE TABLE employee(
id INT(5) PRIMARY KEY,
ename VARCHAR(45),
ephone INT(8)
);

CREATE TABLE customer(
id INT(5) PRIMARY KEY,
fname VARCHAR(45),
lname VARCHAR(45),
adress VARCHAR(100),
cphone INT(8),
mail VARCHAR(50)
);

CREATE TABLE wood(
wname VARCHAR(50) PRIMARY KEY,
width INT(5),
length INT(5),
qty INT(50)
);

CREATE TABLE screw(
sname VARCHAR(30) PRIMARY KEY,
size int(2),
qty int(50)
);

CREATE TABLE roof(
rname VARCHAR(50) PRIMARY KEY,
qty INT(5)
);

CREATE TABLE orders(
ono int(5) PRIMARY KEY,
FK_employeeid INT(5),
FOREIGN KEY (FK_employeeid) REFERENCES employee (id),
FK_customerid INT(5),
FOREIGN KEY (FK_customerid) REFERENCES customer (id),
FK_wname VARCHAR(50),
FOREIGN KEY (FK_wname) REFERENCES wood (wname),
FK_sname VARCHAR(30),
FOREIGN KEY (FK_sname) REFERENCES screw (sname),
FK_rname VARCHAR(50),
FOREIGN KEY (FK_rname) REFERENCES roof (rname)
);

INSERT INTO employee(id, ename, ephone) VALUES(1, 'Jeppe', 34558367);
INSERT INTO employee(id, ename, ephone) VALUES(2, 'Kasper', 65729544);

INSERT INTO customer(id, fname, lname, adress, cphone, mail)
VALUES(1, 'Martin', 'Jespersen', 'Lyngby', 66478851, 'MJespersen@live.dk');
INSERT INTO customer(id, fname, lname, adress, cphone, mail)
VALUES(2, 'Martin', 'Johannes', 'Ishøj', 42338857, 'Johannes85@gmail.com');

INSERT INTO wood(wname, width, length, qty) VALUES('trykimp. Bræt', 25, 150, 2);
INSERT INTO wood(wname, width, length, qty) VALUES('trykimp. Stolpe', 97, 97, 9);

INSERT INTO screw(sname, size, qty) VALUES('universal højre', 190, 8);
INSERT INTO screw(sname, size, qty) VALUES('universal venstre', 190, 8);

INSERT INTO roof(rname, qty) VALUES('B & C Dobbelt -s sort', 300);
INSERT INTO roof(rname, qty) VALUES('B & C Toplægte holder', 8);

INSERT INTO orders(ono, FK_employeeid, FK_customerid, FK_wname, FK_sname, FK_rname)
VALUES(12, 1, 1, 'trykimp. Bræt', 'universal højre', 'B & C Dobbelt -s sort');
INSERT INTO orders(ono, FK_employeeid, FK_customerid, FK_wname, FK_sname, FK_rname)
VALUES(28, 2, 2, 'trykimp. Stolpe', 'universal venstre', 'B & C Toplægte holder');