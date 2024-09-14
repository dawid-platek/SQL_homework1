SELECT i.Number AS [Numer faktury], c.FirstName AS Imiê, c.LastName AS Nazwisko
FROM Invoices i
INNER JOIN Clients c ON c.Id = i.ClientNumber

SELECT i.Number AS [Numer faktury], p.Name AS Nazwa, p.Price AS Cena
FROM InvoicePositions ip
INNER JOIN Products p ON p.Id = ip.ProductId
INNER JOIN Invoices i ON i.Id = ip.InvoiceId
ORDER BY i.Number

SELECT i.Number AS [Numer faktury], SUM(ip.Quantity) AS [Suma Iloœci]
FROM InvoicePositions ip
INNER JOIN Invoices i ON i.Id = ip.InvoiceId
GROUP BY i.Number

SELECT i.Number AS [Numer faktury], SUM(ip.Quantity * p.Price) AS [Cena ca³kowita]
FROM InvoicePositions ip
INNER JOIN Invoices i ON i.Id = ip.InvoiceId
INNER JOIN Products p ON p.Id = ip.ProductId
GROUP BY i.Number