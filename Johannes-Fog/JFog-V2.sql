DROP SCHEMA IF EXISTS JFog;
CREATE SCHEMA JFog;
USE JFog;

CREATE TABLE product(
id INT(5) PRIMARY KEY,
name VARCHAR(50),
measure DOUBLE NOT NULL,
price DOUBLE NOT NULL
);

CREATE TABLE orderline(
id INT(5) PRIMARY KEY,
product_id INT(5),
FOREIGN KEY(product_id) REFERENCES product(id),
wood_qty INT(10),
screw_qty INT(5),
roof_qty INT(5),
roof_pitch VARCHAR(45),
bracket INT(10)
);

CREATE TABLE orders(
ono INT(5) PRIMARY KEY AUTO_INCREMENT,
checkout_time DATETIME(6),
delivery_time DATETIME(6),
shipping_price DOUBLE,
orderline_id INT(5),
FOREIGN KEY(orderline_id) REFERENCES orderline(id)
);

CREATE TABLE employee(
id INT(5) PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(45),
ephone INT(8),
password VARCHAR(50),
FK_ono INT(5),
FOREIGN KEY(FK_ono) REFERENCES orders(ono)
);

CREATE TABLE customer(
id INT(5) PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(45),
lname VARCHAR(45),
adress VARCHAR(100),
cphone INT(8),
mail VARCHAR(50),
FK_ono INT(5),
FOREIGN KEY(FK_ono) REFERENCES orders(ono)
);