Create Database if not exists myfashionstudio;
USE myfashionstudio;

CREATE TABLE IF NOT EXISTS users(
user_id int  PRIMARY KEY AUTO_INCREMENT,
email_address VARCHAR (100) NOT NULL,
fullname VARCHAR(50) NOT NULL,
gender VARCHAR(25),
mobile_number INT(50) NOT NULL,
password VARCHAR(50) NOT NULL,
dob DATE,
hint_name VARCHAR(50),
address VARCHAR(100)
); 

select*
from users;


-- INSERT INTO users (email_address,fullname,gender,mobile_number,password,dob,hint_name,address)
-- VALUES 
-- ('gshdgh@gmail.com','bakya','female','9789853625','87duwy8','23-06-2023','bb','gfgdgs');

CREATE TABLE IF NOT EXISTS gender(
gender_id INT (100) PRIMARY KEY AUTO_INCREMENT,
gender_name VARCHAR(50) NOT NULL
);

INSERT INTO gender (gender_name)
VALUES 
('men'),('women'),('kids');

select*
from gender;

CREATE TABLE IF NOT EXISTS category(
category_id INT (100) PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(50) NOT NULL,
gender_id INT (100),
FOREIGN KEY (gender_id) REFERENCES gender(gender_id)
);

CREATE TABLE IF NOT EXISTS product(
product_id INT (100) PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50) NOT NULL,
product_brand VARCHAR(25) NOT NULL,
product_size INT(25) NOT NULL,
product_color VARCHAR(50) NOT NULL,
product_mrp INT(25) NOT NULL,
product_offer INT(25)  NOT NULL,
gender_id int(100),
FOREIGN KEY (gender_id) REFERENCES gender(gender_id),
category_id int(100),
FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE IF NOT EXISTS orders(
order_id INT (100) PRIMARY KEY AUTO_INCREMENT,
order_size INT(25),
order_color  VARCHAR(25),
order_quantity INT(25),
order_date DATE,
product_id int(100),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

DESCRIBE orders;







