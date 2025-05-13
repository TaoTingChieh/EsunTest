USE [esunbank]
GO
SET IDENTITY_INSERT [dbo].[LikeList] ON 
GO
INSERT [dbo].[LikeList] ([LikeListNo], [ProductNo], [ProductName], [ProductCount], [UserID], [Email], [Account], [Price], [FeeRate], [TotalPrice], [TotalFee], [TotalAmount], [CreateId], [CreateTime], [UpdateID], [UpdateTime]) VALUES (2, 2, N'元大高股息', 2, 1, N'123asd@gmail.com', N'77777', CAST(50.00 AS Decimal(18, 2)), CAST(0.0050 AS Decimal(10, 4)), CAST(100.00 AS Decimal(18, 2)), CAST(0.5000 AS Decimal(10, 4)), CAST(100.50 AS Decimal(18, 2)), 1, CAST(N'2025-05-13T18:46:16.760' AS DateTime), 1, CAST(N'2025-05-13T19:04:52.690' AS DateTime))
GO
INSERT [dbo].[LikeList] ([LikeListNo], [ProductNo], [ProductName], [ProductCount], [UserID], [Email], [Account], [Price], [FeeRate], [TotalPrice], [TotalFee], [TotalAmount], [CreateId], [CreateTime], [UpdateID], [UpdateTime]) VALUES (3, 1, N'台積電ETF', 4, 1, N'123asd@gmail.com', N'77777', CAST(150.00 AS Decimal(18, 2)), CAST(0.0100 AS Decimal(10, 4)), CAST(600.00 AS Decimal(18, 2)), CAST(6.0000 AS Decimal(10, 4)), CAST(606.00 AS Decimal(18, 2)), 1, CAST(N'2025-05-13T20:51:39.207' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[LikeList] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (1, N'台積電ETF', CAST(150.00 AS Decimal(18, 2)), CAST(0.0100 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (2, N'元大高股息', CAST(50.00 AS Decimal(18, 2)), CAST(0.0050 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (3, N'富邦科技', CAST(100.00 AS Decimal(18, 2)), CAST(0.0150 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (4, N'國泰永續高股息', CAST(45.50 AS Decimal(18, 2)), CAST(0.0075 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (5, N'兆豐藍籌30', CAST(68.20 AS Decimal(18, 2)), CAST(0.0065 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (6, N'統一黑馬基金', CAST(32.00 AS Decimal(18, 2)), CAST(0.0080 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (7, N'群益科技新趨勢', CAST(87.75 AS Decimal(18, 2)), CAST(0.0120 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (8, N'台新中國通基金', CAST(56.40 AS Decimal(18, 2)), CAST(0.0140 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (9, N'元大美債20年', CAST(75.30 AS Decimal(18, 2)), CAST(0.0090 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (10, N'凱基新興市場債', CAST(101.00 AS Decimal(18, 2)), CAST(0.0110 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (11, N'富邦台50', CAST(89.60 AS Decimal(18, 2)), CAST(0.0060 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (12, N'國泰全球品牌', CAST(112.80 AS Decimal(18, 2)), CAST(0.0130 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (13, N'第一金全球AI', CAST(133.50 AS Decimal(18, 2)), CAST(0.0145 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (14, N'新光新興債券', CAST(69.90 AS Decimal(18, 2)), CAST(0.0070 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (15, N'元大電動車ETF', CAST(118.00 AS Decimal(18, 2)), CAST(0.0095 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (16, N'中信綠能環保', CAST(105.40 AS Decimal(18, 2)), CAST(0.0105 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (17, N'永豐ESG永續', CAST(79.30 AS Decimal(18, 2)), CAST(0.0060 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (18, N'台新全球5G', CAST(96.70 AS Decimal(18, 2)), CAST(0.0115 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (19, N'群益高收益債', CAST(88.20 AS Decimal(18, 2)), CAST(0.0085 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
INSERT [dbo].[Products] ([ProductNo], [ProductName], [Price], [FeeRate], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (20, N'元大台灣高息低波', CAST(67.40 AS Decimal(18, 2)), CAST(0.0075 AS Decimal(10, 4)), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime), 1, CAST(N'2025-05-12T21:29:05.013' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([No], [UserID], [UserName], [Email], [Account], [CreateID], [CreateTime], [UpdateID], [UpdateTime]) VALUES (2, 1, N'測試員', N'123asd@gmail.com', N'8888888', 1, CAST(N'2025-05-13T15:24:54.880' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
