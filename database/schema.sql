CREATE TYPE brand as ENUM  ('Ground Jordan', 'Abibas', 'Itta', 'Yard', 'Manuel Vans', 'Wlone',
'Monsombre', 'Kanye East', 'Infime', 'Ybox');

CREATE TYPE shoeSize as ENUM  ('3.5', '4', '4.5', '5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5',
    '10', '10.5', '11', '11.5', '12', '12.5', '13', '13.5', '14', '14.5', '15', '15.5', '16', '16.5', '17',' 17.5', '18');

CREATE TYPE clotheSize as ENUM  ('XXS', 'XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXXL');

CREATE TYPE gender as ENUM  ('M', 'F');

CREATE TABLE items (
    brandName brand,
    model varchar(255),
    barCode varchar(255),
    price float,
    quantity int,
    gender gender
);

CREATE TABLE shoes (
    shoeID serial primary key,
    size shoeSize
) INHERITS (items);

CREATE TABLE tShirts (
    tShirtID serial primary key,
    size clotheSize
) INHERITS (items);

CREATE TABLE sweats (
    sweatID serial primary key,
    size clotheSize
) INHERITS (items);

CREATE TABLE customers (
    customerID SERIAL PRIMARY KEY,
    lastName varchar(255),
    firstName varchar(255),
    mail varchar(255),
    phoneNumber varchar(255)
);

CREATE TABLE sells (
    sellID SERIAL PRIMARY KEY,
    shoeID int,
    sweatID int,
    tShirtID int,
    customerID int,
    sellDate timestamp,
    constraint fkCustomer
      foreign key(customerID) 
	  references customers(customerID),
    constraint fkShoe
      foreign key(shoeID) 
	  references shoes(shoeID),
    constraint fkSweat
      foreign key(sweatID) 
	  references sweats(sweatID),
    constraint fkTShirt
      foreign key(tShirtID) 
	  references tShirts(tShirtID)

);