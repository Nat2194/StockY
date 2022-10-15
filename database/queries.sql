SELECT * FROM sells;

SELECT shoes FROM shoes
WHERE shoes.brandName = 'Itta';

SELECT tShirts FROM tShirts
WHERE tShirts.size = 'M' AND tShirts.brandName = 'Itta';

SELECT sells, customers FROM sells
INNER JOIN customers ON sells.customerID = customers.customerID
ORDER BY customers;

SELECT DISTINCT ON (sells) customers, sells, shoes FROM 
((sells INNER JOIN customers ON sells.customerID = customers.customerID)
INNER JOIN shoes ON shoes.shoeID = sells.shoeID)
WHERE shoes.brandName = 'Itta'
ORDER BY sells;

SELECT DISTINCT ON (sells) sells, sweats, customers
FROM ((sells
INNER JOIN customers ON sells.customerID = customers.customerID)
INNER JOIN sweats ON sweats.sweatID = sells.sweatID)
WHERE sweats.price < 200
ORDER BY sells;

SELECT DISTINCT ON (sells) sells, tShirts, customers
FROM ((sells
INNER JOIN customers ON sells.customerID = customers.customerID)
INNER JOIN tShirts ON tShirts.tShirtID = sells.tShirtID)
WHERE tShirts.quantity < 200
ORDER BY sells;