/* Create Table for Office Supply */

Use OfficeSupply

USE [OfficeSupply]
GO
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard] ALTER COLUMN OrderDate Date
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard] ALTER COLUMN [Units] Float
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard] ALTER COLUMN [Unit Price] Float

ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard] ADD TotalSales AS ([Units] * [Unit Price])
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard] ADD Years AS (Year([OrderDate]))
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard] ADD Months AS (Month([OrderDate]))

SELECT YEAR([OrderDate]) as Years FROM [dbo].[P1-OfficeSupplies Dashboard]

USE [OfficeSupply]
GO

select * from [dbo].[tblBlinder]
select * from [dbo].[tblDesk]
select * from [dbo].[tblPen]
select * from [dbo].[tblPencil]
select * from [dbo].[tblPenSet]
select * from [dbo].[P1-OfficeSupplies Dashboard]

/****** Object:  Table [dbo].[P1-OfficeSupplies Dashboard]    Script Date: 27/12/2021 4:38:44 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE tblPencil(
	[OrderDate] [date] NULL,
	[Region] [varchar](50) NULL,
	[Rep] [varchar](50) NULL,
	[Item] [varchar](50) NULL,
	[Units] [varchar](50) NULL,
	[Unit Price] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

