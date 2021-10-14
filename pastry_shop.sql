#Question 3. CREATING pastry_shop DATABASE

CREATE DATABASE pastry_shop;
SHOW DATABASES;
USE pastry_shop;

# creating TABLE menu

CREATE TABLE menu
(
    s_no INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(s_no),
    pastry_name VARCHAR(30) NOT NULL DEFAULT 'UNAVAILABLE',
    price INT NOT NULL DEFAULT 9999
);
DESC menu;

#Entering data into TABLE menu

INSERT INTO
menu(pastry_name,price) 
VALUES
('Vanilla pastry',70),('Butter cookie pastry',78),('Chocolate pastry',88),('Cream & nut pastry',99),('Light vegan pastry',99),('Red velvet pastry',89);

INSERT INTO
menu(s_no,pastry_name,price)
VALUES
(100,'Fruit & nut pastry',88),(150,'Mixed fruit pastry ',85),(9,'Honey cream pastry',76);

INSERT INTO
menu(pastry_name,price) 
VALUES
('Dark forest pastry',89),('mango pastry',75);

INSERT INTO
menu(price) 
VALUES
(88),(90),(76);

INSERT INTO
menu(pastry_name) 
VALUES
('Strawberry pastry'),('Ice cream and pastry combo');
  
# displaying TABLE menu  

SELECT *FROM menu;