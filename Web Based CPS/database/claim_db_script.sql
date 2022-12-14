GO
CREATE TABLE [dbo].[designation](
	[des_no] [int] NOT NULL,
	[des_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_designation] PRIMARY KEY CLUSTERED 
(
	[des_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (1, N'TRAINEE')
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (2, N'EXECUTIVE')
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (3, N'SR. EXECUTIVE')
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (4, N'MANAGER')
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (5, N'SR. MANAGER')
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (6, N'GM')
INSERT [dbo].[designation] ([des_no], [des_name]) VALUES (7, N'MD')
/****** Object:  Table [dbo].[department]    Script Date: 09/12/2022 21:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[dept_no] [int] NOT NULL,
	[dept_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_deparment] PRIMARY KEY CLUSTERED 
(
	[dept_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[department] ([dept_no], [dept_name]) VALUES (1, N'CPD')
INSERT [dbo].[department] ([dept_no], [dept_name]) VALUES (2, N'IT')
INSERT [dbo].[department] ([dept_no], [dept_name]) VALUES (3, N'PURCHASE')
INSERT [dbo].[department] ([dept_no], [dept_name]) VALUES (4, N'SALES')
INSERT [dbo].[department] ([dept_no], [dept_name]) VALUES (5, N'ADMIN')
INSERT [dbo].[department] ([dept_no], [dept_name]) VALUES (6, N'BILLING')
/****** Object:  Table [dbo].[emp_master]    Script Date: 09/12/2022 21:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp_master](
	[em_no] [int] NOT NULL,
	[em_name] [varchar](50) NOT NULL,
	[em_dept_no] [int] NOT NULL,
	[em_des_no] [int] NOT NULL,
	[em_email] [varchar](50) NOT NULL,
	[em_dob] [datetime] NOT NULL,
	[em_address] [varchar](250) NOT NULL,
	[em_home_no] [varchar](50) NOT NULL,
	[em_office_no] [varchar](50) NOT NULL,
	[em_mobile] [varchar](50) NOT NULL,
	[em_password] [varchar](50) NOT NULL,
	[em_create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_emp_master] PRIMARY KEY CLUSTERED 
(
	[em_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[emp_master] ([em_no], [em_name], [em_dept_no], [em_des_no], [em_email], [em_dob], [em_address], [em_home_no], [em_office_no], [em_mobile], [em_password], [em_create_date]) VALUES (1001, N'ATANU MAITY', 1, 4, N'atanu.maity@rediffmail.com', CAST(0x00006B0100000000 AS DateTime), N'MUMBAI', N'255555663', N'658758222', N'9999898998', N'123456', CAST(0x00008EAC00000000 AS DateTime))
INSERT [dbo].[emp_master] ([em_no], [em_name], [em_dept_no], [em_des_no], [em_email], [em_dob], [em_address], [em_home_no], [em_office_no], [em_mobile], [em_password], [em_create_date]) VALUES (1002, N'RAJ KUMAR', 2, 2, N'raj.kumar@rediffmail.com', CAST(0x000055B900000000 AS DateTime), N'MUMBAI', N'326566666', N'562332633', N'9985623333', N'123456', CAST(0x00008EAC00000000 AS DateTime))
INSERT [dbo].[emp_master] ([em_no], [em_name], [em_dept_no], [em_des_no], [em_email], [em_dob], [em_address], [em_home_no], [em_office_no], [em_mobile], [em_password], [em_create_date]) VALUES (1003, N'Sunil', 2, 2, N'sunil@abc.com', CAST(0x0000724200000000 AS DateTime), N'Mumbai', N'21312313', N'', N'98992333', N'123456', CAST(0x00009C56000714E4 AS DateTime))
INSERT [dbo].[emp_master] ([em_no], [em_name], [em_dept_no], [em_des_no], [em_email], [em_dob], [em_address], [em_home_no], [em_office_no], [em_mobile], [em_password], [em_create_date]) VALUES (1004, N'KADAM', 2, 3, N'kadam@gmail.com', CAST(0x0000722300000000 AS DateTime), N'', N'', N'', N'99999999', N'123456', CAST(0x0000A41D00DABBB4 AS DateTime))
/****** Object:  Table [dbo].[emp_security]    Script Date: 09/12/2022 21:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_security](
	[es_id] [int] NOT NULL,
	[es_em_no] [int] NOT NULL,
	[es_last_login1] [datetime] NULL,
	[es_last_login2] [datetime] NULL,
	[es_pass_change] [datetime] NULL,
 CONSTRAINT [PK_emp_security] PRIMARY KEY CLUSTERED 
(
	[es_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[emp_security] ([es_id], [es_em_no], [es_last_login1], [es_last_login2], [es_pass_change]) VALUES (1, 1001, CAST(0x0000A41D00DB189C AS DateTime), CAST(0x0000A41D00DA8593 AS DateTime), NULL)
INSERT [dbo].[emp_security] ([es_id], [es_em_no], [es_last_login1], [es_last_login2], [es_pass_change]) VALUES (2, 1002, CAST(0x00009C55017EC156 AS DateTime), CAST(0x00009C55017DE409 AS DateTime), NULL)
INSERT [dbo].[emp_security] ([es_id], [es_em_no], [es_last_login1], [es_last_login2], [es_pass_change]) VALUES (3, 1003, CAST(0x00009C5600072014 AS DateTime), NULL, NULL)
INSERT [dbo].[emp_security] ([es_id], [es_em_no], [es_last_login1], [es_last_login2], [es_pass_change]) VALUES (4, 1004, CAST(0x0000A41D00DAE876 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[emp_claims]    Script Date: 09/12/2022 21:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp_claims](
	[ec_id] [int] NOT NULL,
	[ec_type] [varchar](50) NOT NULL,
	[ec_amount] [int] NOT NULL,
	[ec_desc] [varchar](250) NOT NULL,
	[ec_apply_date] [datetime] NOT NULL,
	[ec_em_no] [int] NOT NULL,
	[ec_approve_by] [int] NULL,
	[ec_approve_status] [varchar](50) NULL,
	[ec_approve_date] [datetime] NULL,
	[ec_approve_remarks] [varchar](250) NULL,
 CONSTRAINT [PK_emp_claims] PRIMARY KEY CLUSTERED 
(
	[ec_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (1, N'Medicines', 10, N'test', CAST(0x0000901A00000000 AS DateTime), 1001, NULL, N'Approved', CAST(0x00009C5500076606 AS DateTime), N'Not sufficent details')
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (2, N'Medicines', 100, N'test', CAST(0x00009C540165F9CC AS DateTime), 1001, 1001, N'Approved', CAST(0x00009B8400000000 AS DateTime), N'ok')
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (3, N'Surgery', 5000, N'Operation Exp', CAST(0x00009C54018AFB3C AS DateTime), 1002, NULL, N'Approved', CAST(0x00009C550007408B AS DateTime), N'Ok')
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (4, N'Laboratory Tests', 4000, N'For Blood test', CAST(0x00009C550007EEDC AS DateTime), 1002, NULL, N'Rejected', CAST(0x00009C5500083E16 AS DateTime), N'Not sufficent details')
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (5, N'Laboratory Tests', 500, N'Test', CAST(0x00009C550008B4E8 AS DateTime), 1002, NULL, NULL, NULL, NULL)
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (6, N'Surgery', 20000, N'Leg Fracture', CAST(0x00009C55017E28D0 AS DateTime), 1002, NULL, N'Approved', CAST(0x00009C55017E9FB3 AS DateTime), N'Ok.')
INSERT [dbo].[emp_claims] ([ec_id], [ec_type], [ec_amount], [ec_desc], [ec_apply_date], [ec_em_no], [ec_approve_by], [ec_approve_status], [ec_approve_date], [ec_approve_remarks]) VALUES (7, N'Medicines', 2500, N'Medicine', CAST(0x0000A41D00DB00D8 AS DateTime), 1004, NULL, N'Approved', CAST(0x0000A41D00DB3FB9 AS DateTime), N'OK')
/****** Object:  ForeignKey [FK_emp_master_deparment]    Script Date: 09/12/2022 21:59:32 ******/
ALTER TABLE [dbo].[emp_master]  WITH CHECK ADD  CONSTRAINT [FK_emp_master_deparment] FOREIGN KEY([em_dept_no])
REFERENCES [dbo].[department] ([dept_no])
GO
ALTER TABLE [dbo].[emp_master] CHECK CONSTRAINT [FK_emp_master_deparment]
GO
/****** Object:  ForeignKey [FK_emp_master_designation]    Script Date: 09/12/2022 21:59:32 ******/
ALTER TABLE [dbo].[emp_master]  WITH CHECK ADD  CONSTRAINT [FK_emp_master_designation] FOREIGN KEY([em_des_no])
REFERENCES [dbo].[designation] ([des_no])
GO
ALTER TABLE [dbo].[emp_master] CHECK CONSTRAINT [FK_emp_master_designation]
GO
/****** Object:  ForeignKey [FK_emp_security_emp_master]    Script Date: 09/12/2022 21:59:32 ******/
ALTER TABLE [dbo].[emp_security]  WITH NOCHECK ADD  CONSTRAINT [FK_emp_security_emp_master] FOREIGN KEY([es_em_no])
REFERENCES [dbo].[emp_master] ([em_no])
GO
ALTER TABLE [dbo].[emp_security] CHECK CONSTRAINT [FK_emp_security_emp_master]
GO
/****** Object:  ForeignKey [FK_emp_claims_emp_master]    Script Date: 09/12/2022 21:59:32 ******/
ALTER TABLE [dbo].[emp_claims]  WITH NOCHECK ADD  CONSTRAINT [FK_emp_claims_emp_master] FOREIGN KEY([ec_em_no])
REFERENCES [dbo].[emp_master] ([em_no])
GO
ALTER TABLE [dbo].[emp_claims] CHECK CONSTRAINT [FK_emp_claims_emp_master]
GO
