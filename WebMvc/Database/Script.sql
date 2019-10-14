USE [BIDCUserCenter]
GO
/****** Object:  Table [dbo].[ApplicationErrors]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationErrors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationErrors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetUserChanges]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationUserId] [nvarchar](max) NOT NULL,
	[ReasonChange] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Birthday] [datetime] NULL,
	[Gender] [int] NOT NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[UploadFolder] [nvarchar](max) NULL,
	[Points] [int] NULL,
	[CountViews] [int] NULL,
	[About] [nvarchar](max) NULL,
	[IsCanLogin] [bit] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUserChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetProjects]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetProjects](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetProjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetGroups]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetGroups](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ApplicationProjectId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[GroupName] [nvarchar](max) NULL,
	[ApplicationProjectId] [nvarchar](128) NULL,
	[Description] [nvarchar](250) NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserHistories]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserHistories](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationUserId] [nvarchar](max) NOT NULL,
	[ApplicationUserChangeId] [uniqueidentifier] NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Birthday] [datetime] NULL,
	[Gender] [int] NOT NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[UploadFolder] [nvarchar](max) NULL,
	[Points] [int] NULL,
	[CountViews] [int] NULL,
	[About] [nvarchar](max) NULL,
	[IsCanLogin] [bit] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUserHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Birthday] [datetime] NULL,
	[Gender] [int] NOT NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[UploadFolder] [nvarchar](max) NOT NULL,
	[Points] [int] NULL,
	[CountViews] [int] NULL,
	[About] [nvarchar](max) NULL,
	[IsCanLogin] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[ApplicationUserChangeId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserGroups]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserGroups](
	[ApplicationUserId] [nvarchar](128) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserGroups] PRIMARY KEY CLUSTERED 
(
	[ApplicationUserId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserGroupHistories]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserGroupHistories](
	[ApplicationUserHistoryId] [uniqueidentifier] NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserGroupHistories] PRIMARY KEY CLUSTERED 
(
	[ApplicationUserHistoryId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserGroupChanges]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserGroupChanges](
	[ApplicationUserChangeId] [uniqueidentifier] NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserGroupChanges] PRIMARY KEY CLUSTERED 
(
	[ApplicationUserChangeId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetGroupRoles]    Script Date: 10/14/2019 09:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetGroupRoles](
	[ApplicationRoleId] [nvarchar](128) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetGroupRoles] PRIMARY KEY CLUSTERED 
(
	[ApplicationRoleId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetGroupRoles_dbo.AspNetGroups_ApplicationGroupId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetGroupRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetGroupRoles_dbo.AspNetGroups_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[AspNetGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetGroupRoles] CHECK CONSTRAINT [FK_dbo.AspNetGroupRoles_dbo.AspNetGroups_ApplicationGroupId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetGroupRoles_dbo.AspNetRoles_ApplicationRoleId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetGroupRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetGroupRoles_dbo.AspNetRoles_ApplicationRoleId] FOREIGN KEY([ApplicationRoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetGroupRoles] CHECK CONSTRAINT [FK_dbo.AspNetGroupRoles_dbo.AspNetRoles_ApplicationRoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetGroups_dbo.AspNetProjects_ApplicationProjectId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetGroups_dbo.AspNetProjects_ApplicationProjectId] FOREIGN KEY([ApplicationProjectId])
REFERENCES [dbo].[AspNetProjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetGroups] CHECK CONSTRAINT [FK_dbo.AspNetGroups_dbo.AspNetProjects_ApplicationProjectId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetRoles_dbo.AspNetProjects_ApplicationProjectId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetRoles_dbo.AspNetProjects_ApplicationProjectId] FOREIGN KEY([ApplicationProjectId])
REFERENCES [dbo].[AspNetProjects] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoles] CHECK CONSTRAINT [FK_dbo.AspNetRoles_dbo.AspNetProjects_ApplicationProjectId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserGroupChanges_dbo.AspNetGroups_ApplicationGroupId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserGroupChanges]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserGroupChanges_dbo.AspNetGroups_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[AspNetGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserGroupChanges] CHECK CONSTRAINT [FK_dbo.AspNetUserGroupChanges_dbo.AspNetGroups_ApplicationGroupId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserGroupChanges_dbo.AspNetUserChanges_ApplicationUserChangeId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserGroupChanges]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserGroupChanges_dbo.AspNetUserChanges_ApplicationUserChangeId] FOREIGN KEY([ApplicationUserChangeId])
REFERENCES [dbo].[AspNetUserChanges] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserGroupChanges] CHECK CONSTRAINT [FK_dbo.AspNetUserGroupChanges_dbo.AspNetUserChanges_ApplicationUserChangeId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserGroupHistories_dbo.AspNetGroups_ApplicationGroupId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserGroupHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserGroupHistories_dbo.AspNetGroups_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[AspNetGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserGroupHistories] CHECK CONSTRAINT [FK_dbo.AspNetUserGroupHistories_dbo.AspNetGroups_ApplicationGroupId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserGroupHistories_dbo.AspNetUserHistories_ApplicationUserHistoryId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserGroupHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserGroupHistories_dbo.AspNetUserHistories_ApplicationUserHistoryId] FOREIGN KEY([ApplicationUserHistoryId])
REFERENCES [dbo].[AspNetUserHistories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserGroupHistories] CHECK CONSTRAINT [FK_dbo.AspNetUserGroupHistories_dbo.AspNetUserHistories_ApplicationUserHistoryId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserGroups_dbo.AspNetGroups_ApplicationGroupId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserGroups_dbo.AspNetGroups_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[AspNetGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserGroups] CHECK CONSTRAINT [FK_dbo.AspNetUserGroups_dbo.AspNetGroups_ApplicationGroupId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserGroups_dbo.AspNetUsers_ApplicationUserId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserGroups_dbo.AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserGroups] CHECK CONSTRAINT [FK_dbo.AspNetUserGroups_dbo.AspNetUsers_ApplicationUserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserHistories_dbo.AspNetUserChanges_ApplicationUserChangeId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserHistories_dbo.AspNetUserChanges_ApplicationUserChangeId] FOREIGN KEY([ApplicationUserChangeId])
REFERENCES [dbo].[AspNetUserChanges] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserHistories] CHECK CONSTRAINT [FK_dbo.AspNetUserHistories_dbo.AspNetUserChanges_ApplicationUserChangeId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUsers_dbo.AspNetUserChanges_ApplicationUserChangeId]    Script Date: 10/14/2019 09:13:36 ******/
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.AspNetUserChanges_ApplicationUserChangeId] FOREIGN KEY([ApplicationUserChangeId])
REFERENCES [dbo].[AspNetUserChanges] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.AspNetUserChanges_ApplicationUserChangeId]
GO
