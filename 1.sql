USE [D:\R54_M5_PROJECTS\1\SMALL_LOAN_MANAGEMENT\SMALL_LOAN_MANAGEMENT\SMALLLOANDB.MDF]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 14/07/2023 6:23:03 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loans](
	[LoanId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Guarantor] [nvarchar](50) NOT NULL,
	[GuarantorAddress] [nvarchar](150) NOT NULL,
	[LoanAmount] [money] NOT NULL,
	[ApprovalDate] [date] NOT NULL,
	[Tenure] [int] NOT NULL,
	[TotalPayable] [money] NOT NULL,
	[CustomerPicture] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 14/07/2023 6:23:03 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[LoanId] [int] NOT NULL,
	[PaymentDate] [date] NOT NULL,
	[Amount] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([LoanId])
REFERENCES [dbo].[Loans] ([LoanId])
GO
