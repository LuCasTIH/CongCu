Create Database [FastFood]
go
USE [FastFood]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] NOT NULL,
	[TenDangNhapAdmin] [varchar](50) NULL,
	[MatKhauAdmin] [varchar](50) NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [int] NOT NULL,
	[MaTA] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DauBep]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DauBep](
	[MaDB] [int] IDENTITY(1,1) NOT NULL,
	[TenDB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_DauBep] PRIMARY KEY CLUSTERED 
(
	[MaDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [nchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiMon]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMon](
	[MaMon] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiMon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaTA] [int] NOT NULL,
	[MaDB] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NULL,
	[ViTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[MaTA] ASC,
	[MaDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThucAn]    Script Date: 24/12/2017 10:59:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucAn](
	[MaTA] [int] IDENTITY(1,1) NOT NULL,
	[TenTA] [nvarchar](50) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaNSX] [int] NULL,
	[Moi] [int] NULL,
	[MaMon] [int] NULL,
 CONSTRAINT [PK_ThucAn] PRIMARY KEY CLUSTERED 
(
	[MaTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([AdminID], [TenDangNhapAdmin], [MatKhauAdmin], [HoTenAdmin]) VALUES (1, N'tienloile', N'123456', N'Lê Tiến Lợi')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (25, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (26, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (27, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (28, 12, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (28, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (29, 11, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (29, 12, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (29, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (30, 11, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (30, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (31, 11, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (32, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (33, 19, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (34, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (35, 17, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (36, 11, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (37, 18, 12, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (38, 16, 12, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (39, 11, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (39, 16, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (40, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (41, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (42, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (43, 10, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (43, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (44, 10, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (45, 12, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (45, 13, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (46, 6, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (47, 11, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (47, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (48, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (48, 17, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1038, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1039, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1040, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1041, 2, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1041, 18, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1042, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1043, 16, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1044, 16, 10, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1045, 16, 10, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1046, 16, 10, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1047, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1048, 1, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1049, 11, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1050, 16, 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1051, 16, 20, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1052, 57, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (1053, 56, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (2038, 4, 12, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3038, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3039, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3040, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3041, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3042, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3043, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3044, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3045, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3046, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3047, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3048, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3049, 57, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3050, 30, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3051, 30, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3052, 13, 10, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3053, 56, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3054, 24, 10, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3057, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3059, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3061, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3063, 18, 10, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3065, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3071, 12, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (3073, 18, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (4053, 11, 11, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (5053, 18, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (5054, 1, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (5054, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (5055, 1, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (5055, 16, 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaTA], [SoLuong], [DonGia]) VALUES (5055, 18, 1, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1, NULL, NULL, CAST(0x0000A8150011ADD4 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (2, NULL, NULL, CAST(0x0000A8150013B56E AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3, NULL, NULL, CAST(0x0000A8150016D170 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (4, NULL, NULL, CAST(0x0000A81500189601 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (5, NULL, NULL, CAST(0x0000A815002BAC3B AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (6, NULL, NULL, CAST(0x0000A815002C0719 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (7, NULL, NULL, CAST(0x0000A81500330064 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (8, NULL, NULL, CAST(0x0000A81500343A86 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (9, NULL, NULL, CAST(0x0000A81500344EF5 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (10, NULL, NULL, CAST(0x0000A8150035AA2F AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (11, NULL, NULL, CAST(0x0000A815003C7400 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (12, NULL, NULL, CAST(0x0000A81500C0DEA7 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (13, NULL, NULL, CAST(0x0000A81500D07045 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (14, NULL, NULL, CAST(0x0000A81500DA8383 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (15, NULL, NULL, CAST(0x0000A81500DAF7E1 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (16, NULL, NULL, CAST(0x0000A81500E37333 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (17, NULL, NULL, CAST(0x0000A81500E3AFDE AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (18, NULL, NULL, CAST(0x0000A81500E494B3 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (19, NULL, NULL, CAST(0x0000A81500E51E61 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (20, NULL, NULL, CAST(0x0000A81500E5F9B7 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (21, NULL, NULL, CAST(0x0000A81501713C5E AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (22, NULL, NULL, CAST(0x0000A81501714940 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (23, NULL, NULL, CAST(0x0000A81501715CB4 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (24, NULL, NULL, CAST(0x0000A81501718A45 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (25, NULL, NULL, CAST(0x0000A81600FAD863 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (26, NULL, NULL, CAST(0x0000A81601666F36 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (27, NULL, NULL, CAST(0x0000A81601668BC2 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (28, NULL, NULL, CAST(0x0000A81601670EAB AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (29, NULL, NULL, CAST(0x0000A816016797AD AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (30, NULL, NULL, CAST(0x0000A8160167F245 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (31, NULL, NULL, CAST(0x0000A8160168CA94 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (32, NULL, NULL, CAST(0x0000A816016B072A AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (33, NULL, NULL, CAST(0x0000A816016B8B09 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (34, NULL, NULL, CAST(0x0000A816016BD810 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (35, NULL, NULL, CAST(0x0000A816016CB72C AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (36, NULL, NULL, CAST(0x0000A816016D5CE8 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (37, NULL, NULL, CAST(0x0000A8160177E365 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (38, NULL, NULL, CAST(0x0000A816017D688C AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (39, NULL, NULL, CAST(0x0000A817007A7C97 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (40, NULL, NULL, CAST(0x0000A817007C5A58 AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (41, NULL, NULL, CAST(0x0000A817007D0AAF AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (42, NULL, NULL, CAST(0x0000A817007DD2D3 AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (43, NULL, NULL, CAST(0x0000A817008254C7 AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (44, NULL, NULL, CAST(0x0000A81700829A53 AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (45, NULL, NULL, CAST(0x0000A81700832690 AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (46, NULL, NULL, CAST(0x0000A81700846D13 AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (47, NULL, NULL, CAST(0x0000A81700854D8C AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (48, NULL, NULL, CAST(0x0000A8170087359D AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1038, NULL, NULL, CAST(0x0000A817009E8EEC AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1039, NULL, NULL, CAST(0x0000A817009F26B7 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1040, NULL, NULL, CAST(0x0000A81700A9BBB6 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1041, NULL, NULL, CAST(0x0000A81700BCB570 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1042, NULL, NULL, CAST(0x0000A81700CF8933 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1043, NULL, NULL, CAST(0x0000A818013A056E AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1044, NULL, NULL, CAST(0x0000A81900824E4A AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1045, NULL, NULL, CAST(0x0000A81A01564C94 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1046, NULL, NULL, CAST(0x0000A81A01568F76 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1047, NULL, NULL, CAST(0x0000A81A015863D4 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1048, NULL, NULL, CAST(0x0000A81A0159AF67 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1049, NULL, NULL, CAST(0x0000A81A015A3B2C AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1050, NULL, NULL, CAST(0x0000A81A015D4C36 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1051, NULL, NULL, CAST(0x0000A81A015E99E1 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1052, NULL, NULL, CAST(0x0000A81D014FE705 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1053, NULL, NULL, CAST(0x0000A81E008D8F33 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (2038, NULL, NULL, CAST(0x0000A82B016425BF AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3038, NULL, NULL, CAST(0x0000A82D015A8B64 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3039, NULL, NULL, CAST(0x0000A82D015ABB8C AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3040, NULL, NULL, CAST(0x0000A82D015AEAB5 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3041, NULL, NULL, CAST(0x0000A82D015B141F AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3042, NULL, NULL, CAST(0x0000A82D015BA28D AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3043, NULL, NULL, CAST(0x0000A82D015BAC74 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3044, NULL, NULL, CAST(0x0000A82D015BC7B3 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3045, NULL, NULL, CAST(0x0000A82D015BE77B AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3046, NULL, NULL, CAST(0x0000A82D015C7867 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3047, NULL, NULL, CAST(0x0000A82D015CC5EC AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3048, NULL, NULL, CAST(0x0000A82D015D0FA9 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3049, NULL, NULL, CAST(0x0000A82D015D3955 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3050, NULL, NULL, CAST(0x0000A83100DDEAE9 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3051, NULL, NULL, CAST(0x0000A83100DE379E AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3052, NULL, NULL, CAST(0x0000A838008C58DF AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3053, NULL, NULL, CAST(0x0000A83A01216874 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3054, NULL, NULL, CAST(0x0000A83B008D032C AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3055, NULL, NULL, CAST(0x0000A83B00B9980B AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3056, NULL, NULL, CAST(0x0000A83B00B9E3EB AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3057, NULL, NULL, CAST(0x0000A83B00B9E3F4 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3058, NULL, NULL, CAST(0x0000A83B00B9F967 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3059, NULL, NULL, CAST(0x0000A83B00B9F969 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3060, NULL, NULL, CAST(0x0000A83B00BBA05F AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3061, NULL, NULL, CAST(0x0000A83B00BBA061 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3062, NULL, NULL, CAST(0x0000A83B00BD3320 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3063, NULL, NULL, CAST(0x0000A83B00BD3326 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3064, NULL, NULL, CAST(0x0000A83B00BDAF1C AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3065, NULL, NULL, CAST(0x0000A83B00BDAF23 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3066, NULL, NULL, CAST(0x0000A83B00BE7296 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3067, NULL, NULL, CAST(0x0000A83B00BE729E AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3068, NULL, NULL, CAST(0x0000A83B00BEF474 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3069, NULL, NULL, CAST(0x0000A83B00BEF477 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3070, NULL, NULL, CAST(0x0000A83B00BFBA60 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3071, NULL, NULL, CAST(0x0000A83B00BFBA6B AS DateTime), NULL, 1)
GO
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3072, NULL, NULL, CAST(0x0000A83B00C12BE0 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3073, NULL, NULL, CAST(0x0000A83B00C1D406 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (4053, NULL, NULL, CAST(0x0000A83E00D99FAA AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (5053, NULL, NULL, CAST(0x0000A8420005A223 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (5054, NULL, NULL, CAST(0x0000A8420013A723 AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (5055, NULL, NULL, CAST(0x0000A8420013C7B8 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (1, N'LeTienLoi', N'tienloile', N'123456                                            ', N'loiltl1196@gmail.com', N'Ho Chi Minh', N'01688749866', N'Nam', CAST(0x000088F700000000 AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (6, N'LeTienLoc', N'tienlocle', N'123456                                            ', N'tienloc@gmail.com', N'Ha Noi', N'01699699996', N'Nam', CAST(0x000088C400000000 AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (7, N'Tam Phú Minh', N'tamphuminh', N'123456789                                         ', N'minh@gmail.com', N'Ho Chi Minh', N'113', N'Nam', CAST(0x000088C400000000 AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (13, N'Pham Thao', N'phuongthao', N'123456                                            ', N'thaopham@gmail.com', N'Hồ Chí Minh', N'01688789999', N'Nữ', CAST(0x0000890000000000 AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (1013, N'cristiano', N'ronaldo', N'123456                                            ', N'ronaldo@gmail.com', N'Tây Ban Nha', N'01234567899', N'Nam', CAST(0x00060C7A00000000 AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (1014, N'cristiano', N'ronaldo', N'1234567                                           ', N'ronaldo@gmail.com', N'Tây Ban Nha', N'01688789999', N'Nam', CAST(0x00060C7A00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[LoaiMon] ([MaMon], [TenLoai]) VALUES (1, N'Món Mặn')
INSERT [dbo].[LoaiMon] ([MaMon], [TenLoai]) VALUES (2, N'Món Chay')
INSERT [dbo].[LoaiMon] ([MaMon], [TenLoai]) VALUES (3, N'Món Huế')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (1, N'Hàn Quốc', N'45-Nguyễn Du-Hà Nội', N'01688749866')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (2, N'Nhật Bản', N'56-Nguyễn Hữu Cảnh-TPHCM', N'01234567899')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (3, N'Việt Nam', N'15-Quận 2-TPHCM', N'01233456987')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (4, N'Thái Lan', N'34-Quận 1-TPHCM', N'01696969696')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (5, N'Lào', N'25-Quận 3-TPHCM', N'01687878787')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (6, N'Campuchia', N'12-Quận 4-TPHCM', N'01686868686')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (7, N'Singapo', N'89-Quận 5-TPHCM', N'01234353637')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (8, N'Indonesia', N'07-Quận 6-TPHCM', N'01691234567')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[ThucAn] ON 

INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (1, N'Bimbimbap', CAST(100000 AS Decimal(18, 0)), N'Ngon bổ rẻ chất lượng', N'1.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 1, 1, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (2, N'Gimbap', CAST(200000 AS Decimal(18, 0)), N'Chất lượng cao ngon tuyệt', N'2.jpg', CAST(0x0000A7CB00000000 AS DateTime), 50, 1, 1, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (3, N'Hobakjuk', CAST(120000 AS Decimal(18, 0)), N'Ngon tuyệt vời', N'3.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 1, 1, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (4, N'Naengmyeon', CAST(130000 AS Decimal(18, 0)), N'Ngon Kinh khủng', N'4.jpg', CAST(0x0000A7CB00000000 AS DateTime), 50, 1, 1, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (5, N'Samgyetang', CAST(140000 AS Decimal(18, 0)), N'Ngon quá trời', N'5.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 1, 1, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (6, N'Soondubu jjigae', CAST(150000 AS Decimal(18, 0)), N'Ngon tuyệt hảo', N'6.jpg', CAST(0x0000A7CB00000000 AS DateTime), 50, 1, 1, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (7, N'Japchae', CAST(160000 AS Decimal(18, 0)), N'Ngon lắm', N'7.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 1, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (8, N'Galbi', CAST(170000 AS Decimal(18, 0)), N'Ngon mà rẻ', N'8.jpg', CAST(0x0000A7CB00000000 AS DateTime), 50, 1, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (9, N'Bánh mì', CAST(180000 AS Decimal(18, 0)), N'Tuyệt đỉnh', N'9.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 3, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (10, N'Bánh cuốn', CAST(190000 AS Decimal(18, 0)), N'Ngon lắm', N'10.jpg', CAST(0x0000A7CB00000000 AS DateTime), 200, 3, 1, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (11, N'Hủ tiếu', CAST(30000 AS Decimal(18, 0)), N'Quá ngon', N'11.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 3, 1, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (12, N'Cá kho tộ', CAST(40000 AS Decimal(18, 0)), N'Quá chất', N'12.jpg', CAST(0x0000A7CB00000000 AS DateTime), 50, 3, 1, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (13, N'Bún bò huế', CAST(35000 AS Decimal(18, 0)), N'Quá tuyệt', N'13.jpg', CAST(0x0000A7CB00000000 AS DateTime), 100, 3, 1, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (14, N'Gỏi cuốn', CAST(50000 AS Decimal(18, 0)), N'Quá đẳng cấp', N'14.jpg', CAST(0x0000A7EA00000000 AS DateTime), 20, 3, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (15, N'Nộm gà', CAST(60000 AS Decimal(18, 0)), N'number1', N'15.jpg', CAST(0x0000A7EA00000000 AS DateTime), 100, 3, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (16, N'Chè', CAST(20000 AS Decimal(18, 0)), N'tuyệt', N'16.jpg', CAST(0x0000A7EA00000000 AS DateTime), 30, 3, 1, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (17, N'Pad Thái', CAST(140000 AS Decimal(18, 0)), N'ngon', N'17.jpg', CAST(0x0000A7EA00000000 AS DateTime), 40, 4, 1, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (18, N'Gỏi đu đủ', CAST(12000 AS Decimal(18, 0)), N'rẻ', N'18.jpg', CAST(0x0000A7EA00000000 AS DateTime), 50, 3, 1, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (19, N'Tom Yum', CAST(125000 AS Decimal(18, 0)), N'bổ', N'19.jpg', CAST(0x0000A7EA00000000 AS DateTime), 70, 4, 1, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (20, N'Cà ri xanh đỏ', CAST(190000 AS Decimal(18, 0)), N'good', N'20.jpg', CAST(0x0000A7EA00000000 AS DateTime), 40, 6, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (21, N'Lẩu thái', CAST(210000 AS Decimal(18, 0)), N'good', N'21.jpg', CAST(0x0000A80800000000 AS DateTime), 50, 4, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (22, N'Xôi xoài', CAST(100000 AS Decimal(18, 0)), N'chất', N'22.jpg', CAST(0x0000A80800000000 AS DateTime), 60, 6, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (23, N'Dùa nướng', CAST(10000 AS Decimal(18, 0)), N'bổ ', N'23.jpg', CAST(0x0000A80800000000 AS DateTime), 40, 3, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (24, N'Bánh dừa', CAST(10000 AS Decimal(18, 0)), N'ngon ', N'24.jpg', CAST(0x0000A80800000000 AS DateTime), 50, 4, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (25, N'Edo-mae zushi', CAST(10000 AS Decimal(18, 0)), N'đẹp', N'25.jpg', CAST(0x0000A80800000000 AS DateTime), 20, 2, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (26, N'Yudofu', CAST(100000 AS Decimal(18, 0)), N'cay', N'26.jpg', CAST(0x0000A80800000000 AS DateTime), 50, 2, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (27, N'Takoyaki', CAST(200000 AS Decimal(18, 0)), N'chất', N'27.jpg', CAST(0x0000A82700000000 AS DateTime), 60, 2, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (28, N'Okonomiyaki', CAST(300000 AS Decimal(18, 0)), N'rẻ', N'28.jpg', CAST(0x0000A84500000000 AS DateTime), 30, 2, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (29, N'Chanpuru', CAST(40000 AS Decimal(18, 0)), N'ngon', N'29.jpg', CAST(0x0000A82700000000 AS DateTime), 70, 2, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (30, N'Khao Niaw', CAST(50000 AS Decimal(18, 0)), N'bổ', N'30.jpg', CAST(0x0000A82700000000 AS DateTime), 30, 2, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (31, N'Khao Jee', CAST(60000 AS Decimal(18, 0)), N'tốt cho sức khỏe', N'31.jpg', CAST(0x0000A82700000000 AS DateTime), 60, 4, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (32, N'Tam Mak Houng', CAST(70000 AS Decimal(18, 0)), N'ngon lắm', N'32.jpg', CAST(0x0000A82700000000 AS DateTime), 30, 4, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (33, N'Larb', CAST(80000 AS Decimal(18, 0)), N'cay quá', N'33.jpg', CAST(0x0000A82700000000 AS DateTime), 30, 4, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (34, N'Or Lam', CAST(90000 AS Decimal(18, 0)), N'ngọt lắm', N'34.jpg', CAST(0x0000A82700000000 AS DateTime), 50, 5, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (35, N'Sindad', CAST(100000 AS Decimal(18, 0)), N'đẳng cấp', N'35.jpg', CAST(0x0000A84500000000 AS DateTime), 100, 5, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (36, N'Sai Oua', CAST(50000 AS Decimal(18, 0)), N'tuyệt vời', N'36.jpg', CAST(0x0000A84500000000 AS DateTime), 100, 5, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (37, N' Ping Kai ', CAST(60000 AS Decimal(18, 0)), N'good', N'37.jpg', CAST(0x0000A84500000000 AS DateTime), 190, 5, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (38, N'Cà ri đỏ Khmer', CAST(70000 AS Decimal(18, 0)), N'perfect', N'38.jpg', CAST(0x0000A84500000000 AS DateTime), 10, 6, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (39, N'Kiến đỏ xào thịt bò', CAST(65000 AS Decimal(18, 0)), N'good', N'39.jpg', CAST(0x0000A84500000000 AS DateTime), 20, 6, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (40, N'Cá amok', CAST(75000 AS Decimal(18, 0)), N'ngon', N'40.jpg', CAST(0x0000A80D00000000 AS DateTime), 30, 6, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (41, N'Lạp Khmer', CAST(85000 AS Decimal(18, 0)), N'bổ', N'41.jpg', CAST(0x0000A80D00000000 AS DateTime), 50, 6, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (42, N'Cơm gà', CAST(85000 AS Decimal(18, 0)), N'rẻ', N'42.jpg', CAST(0x0000A80D00000000 AS DateTime), 100, 7, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (43, N'Cua sốt ớt', CAST(200000 AS Decimal(18, 0)), N'ngon ', N'43.jpg', CAST(0x0000A80D00000000 AS DateTime), 90, 7, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (44, N'Laksa', CAST(120000 AS Decimal(18, 0)), N'bổ ', N'44.jpg', CAST(0x0000A80D00000000 AS DateTime), 80, 7, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (45, N'Cháo ếch', CAST(50000 AS Decimal(18, 0)), N'rẻ', N'45.jpg', CAST(0x0000A80D00000000 AS DateTime), 70, 7, NULL, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (46, N'Nasi Goreng', CAST(130000 AS Decimal(18, 0)), N'ngon ', N'46.jpg', CAST(0x0000A80C00000000 AS DateTime), 60, 7, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (47, N'Soto Betawi', CAST(140000 AS Decimal(18, 0)), N'bổ ', N'47.jpg', CAST(0x0000A80C00000000 AS DateTime), 50, 8, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (48, N'Rengdang', CAST(130000 AS Decimal(18, 0)), N'rẻ', N'48.jpg', CAST(0x0000A80C00000000 AS DateTime), 40, 8, NULL, 2)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (49, N'Soto Mie', CAST(150000 AS Decimal(18, 0)), N'ngon', N'49.jpg', CAST(0x0000A80E00000000 AS DateTime), 30, 8, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (50, N'Satay Ayam', CAST(65000 AS Decimal(18, 0)), N'rẻ', N'50.jpg', CAST(0x0000A80E00000000 AS DateTime), 100, 8, NULL, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (56, N'Saculy', CAST(100 AS Decimal(18, 0)), N'Easy! You should check out MoxieManager!', N'img2.jpg', CAST(0x0000A80800000000 AS DateTime), 10, 8, 1, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (57, N'chinsu ', CAST(1000 AS Decimal(18, 0)), N'Easy! You should check out MoxieManager!', N'img7.jpg', CAST(0x0000A80800000000 AS DateTime), 12, 8, 1, 3)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (1054, N'Bánh plan', CAST(20000 AS Decimal(18, 0)), N'<p>Easy! Wish you delicious ahihi!</p>', N'images.jpg', CAST(0x0000A83C00000000 AS DateTime), 6, 3, 1, 1)
INSERT [dbo].[ThucAn] ([MaTA], [TenTA], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [Moi], [MaMon]) VALUES (1058, N'Hamburger', CAST(20000 AS Decimal(18, 0)), N'<p>Easy! Wish you delicious ahihi!</p>', N'ham.jpg', CAST(0x0000A84100000000 AS DateTime), 4, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[ThucAn] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_ThucAn] FOREIGN KEY([MaTA])
REFERENCES [dbo].[ThucAn] ([MaTA])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_ThucAn]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_DauBep] FOREIGN KEY([MaDB])
REFERENCES [dbo].[DauBep] ([MaDB])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_DauBep]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_ThucAn] FOREIGN KEY([MaTA])
REFERENCES [dbo].[ThucAn] ([MaTA])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_ThucAn]
GO
ALTER TABLE [dbo].[ThucAn]  WITH CHECK ADD  CONSTRAINT [FK_ThucAn_LoaiMon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[LoaiMon] ([MaMon])
GO
ALTER TABLE [dbo].[ThucAn] CHECK CONSTRAINT [FK_ThucAn_LoaiMon]
GO
ALTER TABLE [dbo].[ThucAn]  WITH CHECK ADD  CONSTRAINT [FK_ThucAn_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[ThucAn] CHECK CONSTRAINT [FK_ThucAn_NhaSanXuat]
GO
