INSERT INTO Products (Name, Price)
VALUES ('Piasek', 100);

INSERT INTO Products (Name, Price)
VALUES ('¯wir', 150);

INSERT INTO Products (Name, Price)
VALUES ('Granulat', 75);

DELETE FROM Products
WHERE Id IN (2,3)

UPDATE Products
SET Name = '¯wir'
WHERE Id = 1;

INSERT INTO Clients (FirstName, LastName, City, PhoneNumber, Email)
VALUES ('Marian', 'Dziwol¹g', 'Szczecin', '321123963', 'iii@iii.pl')

INSERT INTO Invoices(Number, ClientNumber, CreatedDate)
VALUES ('203312', 7, '2024-09-14')

DELETE FROM Clients
WHERE Id IN (5,6)

UPDATE Invoices
SET Number = '1/2024'
WHERE Id = 4

INSERT INTO Invoices(Number, ClientNumber, CreatedDate)
VALUES ('2/2024', 7, '2024-09-14')

INSERT INTO InvoicePositions (InvoiceId,ProductId, Quantity)
VALUES (4,1,1)

INSERT INTO InvoicePositions (InvoiceId,ProductId, Quantity)
VALUES (6,1,2)