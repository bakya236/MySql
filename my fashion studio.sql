Create Database if not exists myfashionstudio;
USE myfashionstudio;

CREATE TABLE IF NOT EXISTS users(
user_id int  PRIMARY KEY auto_increment,
email_address VARCHAR (100),
fullname VARCHAR(50),
gender VARCHAR(25),
mobile_number INT(50),
password VARCHAR(50),
dob DATE,
hint_name VARCHAR(50),
address VARCHAR(100)
); 

alter table users
modify email_address VARCHAR (100) not null;

alter table users
modify fullname VARCHAR(50) not null;

INSERT INTO users (email_address,fullname,gender,mobile_number,password,dob,hint_name,address)
VALUES 
('gshdgh@gmail.com','bakya','female','9789853625','87duwy8','23-06-2023','bb','gfgdgs');

select*
from users;
describe users;


-- CREATE TABLE IF NOT EXISTS category(
-- category_id VARCHAR (100) PRIMARY KEY,
-- category_name VARCHAR(50)
-- );

-- CREATE TABLE IF NOT EXISTS products(
-- product_id VARCHAR (100) PRIMARY KEY,
-- product_name VARCHAR(50),
-- product_brand VARCHAR(25),
-- product_size INT(25),
-- product_color VARCHAR(50),
-- product_mrp INT(25),
-- product_offer INT(25)
-- );

-- CREATE TABLE IF NOT EXISTS orders(
-- order_id VARCHAR (100) PRIMARY KEY,
-- order_size INT(25),
-- order_color  VARCHAR(25),
-- order_quantity INT(25),
-- order_date DATE
-- );

describe orders;

describe products;

-- ALTER TABLE users
-- ALTER COLUMN
-- email_address VARCHAR (100) PRIMARY KEY,
-- fullname VARCHAR(50) NOT NULL,
-- gender VARCHAR(25),
-- mobile_number INT(50) NOT NULL,
-- password VARCHAR(50) NOT NULL,
-- dob DATE,
-- hint_name VARCHAR(50),
-- address VARCHAR(100);






