GO
CREATE TABLE [Products] ( 
	[ProductId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL
	CONSTRAINT [PK_ProductId] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)) ON [PRIMARY] 

GO
CREATE TABLE [Categories](	
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL
	CONSTRAINT [PK_CategoryId] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)) ON [PRIMARY] 

GO
CREATE TABLE [ProductCategory](
	[ProductId] [bigint] NOT NULL,
	[CategoryId] [int] NOT NULL)

GO
ALTER TABLE [ProductCategory] WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [Products] ([ProductId])
ON DELETE CASCADE

GO
ALTER TABLE [ProductCategory] WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [Categories] ([CategoryId])
ON DELETE CASCADE


