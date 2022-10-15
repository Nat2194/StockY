INSERT INTO shoes (size, brandName, model, barCode, price, quantity, gender)
VALUES ('10', 'Itta', 'Layup Low Championship Purple', 'DH7138-006', 160.0, 761, 'M'),
('12.5', 'Ground Jordan', '4 Retro Military Red', 'CW0898-400', 190.0, 78, 'M'),
('10', 'Itta', 'Ground Weak 1 Low 07', 'CW2288-001', 132.0, 263, 'M'),
('7', 'Itta', 'Layup Mid Fossile', 'DH6927-140', 629.0, 14, 'F'),
('11.5', 'Ground Jordan', '11 Retro Tanking', 'SA7638-019', 487.0, 26, 'M');

INSERT INTO tShirts (size, brandName, model, barCode, price, quantity, gender)
VALUES ('M', 'Wlone', 'Juice Wrld x Wlone 999', 'SS2073-000', 89.0, 23, 'F'),
('S', 'Infime', 'Ralph Steadman Box', 'QR0283-750', 52.0, 158, 'M'),
('XS', 'Itta', 'ACG Jersey', 'DX4589-000', 172.0, 547, 'M'),
('M', 'Itta', '8 Ball', 'DH4692-001', 113.0, 265, 'M'),
('M', 'Itta', 'Big Swoosh', 'AR4481-440', 161.0, 759, 'M'),
('M', 'Itta', 'NOCTA Basketball', 'DM1724-010', 75.0, 356, 'M');

INSERT INTO sweats (size, brandName, model, barCode, price, quantity, gender)
VALUES ('XXL', 'Abibas', 'Ivy Park Hoodie', 'FW1936-901', 67.0, 12, 'F'),
('XS', 'Yard', 'Gap Dove Hoodie', 'CZ4072-107', 249.0, 53, 'M'),
('M', 'Itta', 'Tech Fleece Full Zip Hoodie', 'CU4489-010', 109.0, 258, 'M'),
('M', 'Itta', 'Cactus Corp Hoodie', 'DV0659-001', 238.0, 76, 'M'),
('M', 'Itta', 'Therma-FIT Synthetic Phil Reversible Bomber Jacket', 'AQ0581-011', 161.0, 693, 'M');

INSERT INTO customers (lastName, firstName, mail, phoneNumber)
VALUES ('Doe', 'John', 'johndoe@gmail.com', '202-555-0125'),
('Smith', 'Morty', 'mortysmith@live.com', '617-555-0189'),
('James', 'LeBron', 'kingjames@nba.com', '404-776-2323');

INSERT INTO sells (customerID, shoeID, sweatID, tShirtID, sellDate)
VALUES (2, 2, 5, 3, CURRENT_TIMESTAMP),
(3, 1, 3, 1, CURRENT_TIMESTAMP),
(3, 4, 2, 3, CURRENT_TIMESTAMP),
(2, 1, 3, 2, CURRENT_TIMESTAMP),
(1, 2, 1, 3, CURRENT_TIMESTAMP),
(1, null, 3, 1, CURRENT_TIMESTAMP);