USE [booking]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/27/2024 9:32:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppointmentHistory]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppointmentHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[AppointmentID] [int] NOT NULL,
	[Action] [nvarchar](max) NOT NULL,
	[ActionDate] [datetime2](7) NOT NULL,
	[DoctorsDoctorId] [int] NULL,
	[SpecialtiesSpecialtyID] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_AppointmentHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[AppointmentsId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DoctorID] [int] NOT NULL,
	[ClinicID] [int] NOT NULL,
	[AppointmentDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[SpecialtiesSpecialtyID] [int] NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[AppointmentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppointmentsServices]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppointmentsServices](
	[AppointmentsId] [int] NOT NULL,
	[ServicesServiceId] [int] NOT NULL,
 CONSTRAINT [PK_AppointmentsServices] PRIMARY KEY CLUSTERED 
(
	[AppointmentsId] ASC,
	[ServicesServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clinics]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clinics](
	[ClinicID] [int] IDENTITY(1,1) NOT NULL,
	[ClinicName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Clinics] PRIMARY KEY CLUSTERED 
(
	[ClinicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[DoctorName] [nvarchar](max) NOT NULL,
	[SpecialtyID] [int] NOT NULL,
	[SpecialtyName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Schedule] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[AppointmentsId] [int] NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecords]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecords](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DoctorID] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MedicalRecords] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](max) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ClinicsClinicID] [int] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialties](
	[SpecialtyID] [int] IDENTITY(1,1) NOT NULL,
	[SpecialtyName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Specialties] PRIMARY KEY CLUSTERED 
(
	[SpecialtyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/27/2024 9:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [SpecialtyName]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [Email]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [Schedule]
GO
ALTER TABLE [dbo].[AppointmentHistory]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentHistory_Appointments_AppointmentID] FOREIGN KEY([AppointmentID])
REFERENCES [dbo].[Appointments] ([AppointmentsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppointmentHistory] CHECK CONSTRAINT [FK_AppointmentHistory_Appointments_AppointmentID]
GO
ALTER TABLE [dbo].[AppointmentHistory]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentHistory_Doctors_DoctorsDoctorId] FOREIGN KEY([DoctorsDoctorId])
REFERENCES [dbo].[Doctors] ([DoctorId])
GO
ALTER TABLE [dbo].[AppointmentHistory] CHECK CONSTRAINT [FK_AppointmentHistory_Doctors_DoctorsDoctorId]
GO
ALTER TABLE [dbo].[AppointmentHistory]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentHistory_Specialties_SpecialtiesSpecialtyID] FOREIGN KEY([SpecialtiesSpecialtyID])
REFERENCES [dbo].[Specialties] ([SpecialtyID])
GO
ALTER TABLE [dbo].[AppointmentHistory] CHECK CONSTRAINT [FK_AppointmentHistory_Specialties_SpecialtiesSpecialtyID]
GO
ALTER TABLE [dbo].[AppointmentHistory]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentHistory_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AppointmentHistory] CHECK CONSTRAINT [FK_AppointmentHistory_Users_UserId]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Clinics_ClinicID] FOREIGN KEY([ClinicID])
REFERENCES [dbo].[Clinics] ([ClinicID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Clinics_ClinicID]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Doctors_DoctorID] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctors] ([DoctorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Doctors_DoctorID]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Specialties_SpecialtiesSpecialtyID] FOREIGN KEY([SpecialtiesSpecialtyID])
REFERENCES [dbo].[Specialties] ([SpecialtyID])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Specialties_SpecialtiesSpecialtyID]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Users_UserID]
GO
ALTER TABLE [dbo].[AppointmentsServices]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentsServices_Appointments_AppointmentsId] FOREIGN KEY([AppointmentsId])
REFERENCES [dbo].[Appointments] ([AppointmentsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppointmentsServices] CHECK CONSTRAINT [FK_AppointmentsServices_Appointments_AppointmentsId]
GO
ALTER TABLE [dbo].[AppointmentsServices]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentsServices_Services_ServicesServiceId] FOREIGN KEY([ServicesServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppointmentsServices] CHECK CONSTRAINT [FK_AppointmentsServices_Services_ServicesServiceId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Specialties_SpecialtyID] FOREIGN KEY([SpecialtyID])
REFERENCES [dbo].[Specialties] ([SpecialtyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Specialties_SpecialtyID]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Appointments_AppointmentsId] FOREIGN KEY([AppointmentsId])
REFERENCES [dbo].[Appointments] ([AppointmentsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Appointments_AppointmentsId]
GO
ALTER TABLE [dbo].[MedicalRecords]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecords_Doctors_DoctorID] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctors] ([DoctorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicalRecords] CHECK CONSTRAINT [FK_MedicalRecords_Doctors_DoctorID]
GO
ALTER TABLE [dbo].[MedicalRecords]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecords_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicalRecords] CHECK CONSTRAINT [FK_MedicalRecords_Users_UserID]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Clinics_ClinicsClinicID] FOREIGN KEY([ClinicsClinicID])
REFERENCES [dbo].[Clinics] ([ClinicID])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Clinics_ClinicsClinicID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
