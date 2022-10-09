CREATE DATABASE StackProject;
USE StackProject;
CREATE TABLE Customers(
CUS_CODE int NOT NULL,
CUS_LNAME varchar(10) DEFAULT NULL,
CUS_FNAM varchar(10) DEFAULT NULL,
CUS_INITIAL varchar(1) DEFAULT NULL,
CUS_AREACODE varchar(3) DEFAULT NULL,
CUS_PHONE varchar(9) DEFAULT NULL,
CUS_BALANCE float DEFAULT NULL,
  PRIMARY KEY (CUS_CODE)
);

CREATE TABLE order_history (
    id INT(30) NOT NULL,
    user_id INT(15),
    total DECIMAL(15) NOT NULL,
    payment_id INT(25) NOT NULL,
    created_Date TIMESTAMP NOT NULL,
    modified_Date TIMESTAMP,
    UNIQUE KEY order_index (id) ,
    UNIQUE KEY customer_order_index (id,user_id) ,
    PRIMARY KEY (id)
) ;

CREATE TABLE shopping_cart (
    id int(15) NOT NULL,
    Product VARCHAR(50) NOT NULL,
    SKU VARCHAR(25) NOT NULL,
    category VARCHAR(25) NOT NULL,
    price DECIMAL(5) NOT NULL,
    discount_id int(6) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    modified_date TIMESTAMP,
    UNIQUE KEY prod_index (id) ,
    UNIQUE KEY sku_index (id, SKU),
    PRIMARY KEY (id)
) ;

INSERT INTO Customers VALUES (10010,'Adam','William','S','407','444-5698',0),
(10011,'Maria','Benjamin','A','917','458-4787',0),
(10012,'Emma','James','W','615','894-2285',255.36),
(10013,'Hassan','Paul','G','212','894-2180',458.75),
(10014,'Orlando','Ryan','F','718','222-1672',0),
(10015,'O\'Paul','Amy','C','321','442-3381',0),
(10016,'Katy','James','G','321','297-1228',221.19),
(10017,'Williams','George','','615','290-2556',768.93),
(10018,'Farriss','Anne','G','713','382-7185',216.55),
(10019,'Smith','Olette','K','615','297-3809',0);




