SELECT p.Name,c.Name FROM [ProductCategory] pc
JOIN [Categories] c ON pc.CategoryId = c.CategoryId 
RIGHT JOIN [Products] p ON pc.ProductId = p.ProductId