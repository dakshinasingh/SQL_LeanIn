# creating DATABASE dakshina_db

CREATE DATABASE dakshina_db;

SHOW DATABASES;

USE dakshina_db;

# creating TABLE students_data

CREATE TABLE shirts
(
    shirt_id INT(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(shirt_id),
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT(11)
);

DESC shirts;

INSERT INTO 
shirts(article, color, shirt_size, last_worn) 
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15),
('purple', 'polo shirt', 'medium', 50);

SELECT *FROM shirts;

# codes by looking at the tables
# 1.
SELECT article,color FROM shirts;

# 2.
SELECT * FROM shirts WHERE shirt_size='M';

# 3.
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';
 
 
 
#UPDATE table shirts
# 1.
UPDATE shirts SET shirt_size='L' WHERE article= 'polo shirt';
 
# 2.
SELECT * FROM shirts WHERE article= 'polo shirt';

# 3.
UPDATE shirts SET last_worn='0' WHERE last_worn= '15';

# 4.
SELECT * FROM shirts WHERE last_worn='0';

# 5.
UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white';

# 6.
SELECT * FROM shirts WHERE color='off white';


#complete updated shirts table:
SELECT *FROM shirts;

#DELETE

# 1.
DELETE FROM shirts WHERE last_worn >='200';
SELECT *FROM shirts;

# 2.
DELETE FROM shirts WHERE article='tank top';
SELECT *FROM shirts;
  
# 3.
DELETE FROM shirts;
SELECT *FROM shirts;
  
