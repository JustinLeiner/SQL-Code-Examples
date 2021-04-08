DROP DATABASE IF EXISTS my_web_db;
CREATE DATABASE IF NOT EXISTS my_web_db;
USE my_web_db;

DROP TABLE IF EXISTS downloads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS products;

CREATE DATABASE IF NOT EXISTS my_web_db;
USE my_web_db;

CREATE TABLE IF NOT EXISTS users (
user_id INT PRIMARY KEY AUTO_INCREMENT,
email_address VARCHAR(100) ,
first_name VARCHAR(45) ,
last_name VARCHAR(45)
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS products (
product_id INT PRIMARY KEY,
product_name VARCHAR(45)
) ENGINE = InnoDB;

 CREATE TABLE IF NOT EXISTS downloads (
download_id INT PRIMARY KEY ,
user_id INT,
download_date DATETIME,
filename VARCHAR(50),
product_id INT,
CONSTRAINT fk_downloads_users
FOREIGN KEY (user_id)
REFERENCES Users(user_id),
CONSTRAINT fk_downloads_products
FOREIGN KEY (product_id)
REFERENCES PRODUCTS(product_id)
) ENGINE = InnoDB;

INSERT INTO users VALUES (1,'saraa.riazi@gmail.com', 'Sara', 'Riazi');
INSERT INTO users VALUES (2,'johnsmith@gmail.com', 'John', 'Smith');
INSERT INTO users (email_address,first_name,last_name)
VALUES ('janedoe@yahoo.com', 'Jane', 'Doe');
INSERT INTO users (email_address,first_name)
VALUES ('jackbown@msn.com', 'Jack');

INSERT INTO products VALUES (1, 'Local Music Vol. 1');
INSERT INTO products VALUES (2, 'Local Music Vol. 2');
INSERT INTO downloads VALUES (1, 1, NOW(), 'pedals_are_falling.mp3', 1),
(2, 2, NOW(), 'turn_signal.mp3', 1),
(3, 2, NOW(), 'one_horse_town.mp3', 2);

UPDATE users set email_address = 'john.smith@yahoo.com'
where email_address = 'johnsmith@gmail.com';

DELETE FROM users WHERE user_id=1;
DELETE FROM downloads WHERE user_id=1;
DELETE FROM users WHERE user_id=1;

select * from users;
select * from downloads;
select * from products;