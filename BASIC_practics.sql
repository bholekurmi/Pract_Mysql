drop table customer;

CREATE TABLE customers                                                    

(  

    customer_id INT,  

    first_name varchar(255),  

    last_name varchar(255),  

    email_address varchar(255),   

    number_of_complaints int,   

primary key (customer_id)   

);  


drop table sales;

create table sales(
purchase_number INT auto_increment,
date_of_purchase DATE,
customer_id int,
item_code varchar(10),
Primary key(purchase_number) 
);
ALTER table sales 
ADD foreign key (customer_id) references customers (customer_id) on delete cascade;



CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);


ALTER table customers ADD column gender ENUM ('m','f') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender,  email_address, number_of_complaints)
VALUES ('bk','km','M','bk.sgk@career.com', 0);

CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'x',
    headquater_phone_number VARCHAR(255),
    PRIMARY KEY (company_id),
    UNIQUE KEY (headquater_phone_number)
);





drop table companies;

CREATE TABLE companies

(

    company_id VARCHAR(255),

    company_name VARCHAR(255) DEFAULT 'X',

    headquarters_phone_number VARCHAR(255),

PRIMARY KEY (company_id),

UNIQUE KEY (headquarters_phone_number)

);
