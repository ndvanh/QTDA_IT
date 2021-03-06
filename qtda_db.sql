USE [master]
GO
/****** Object:  Database [CNPM]    Script Date: 05/28/2022 5:30:08 PM ******/
CREATE DATABASE [CNPM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CNPM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CNPM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CNPM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CNPM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CNPM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CNPM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CNPM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CNPM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CNPM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CNPM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CNPM] SET ARITHABORT OFF 
GO
ALTER DATABASE [CNPM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CNPM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CNPM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CNPM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CNPM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CNPM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CNPM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CNPM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CNPM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CNPM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CNPM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CNPM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CNPM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CNPM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CNPM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CNPM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CNPM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CNPM] SET RECOVERY FULL 
GO
ALTER DATABASE [CNPM] SET  MULTI_USER 
GO
ALTER DATABASE [CNPM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CNPM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CNPM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CNPM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CNPM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CNPM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CNPM', N'ON'
GO
ALTER DATABASE [CNPM] SET QUERY_STORE = OFF
GO
USE [CNPM]
GO
/****** Object:  Table [dbo].[Dangnhap]    Script Date: 05/28/2022 5:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dangnhap](
	[Taikhoan] [nvarchar](50) NOT NULL,
	[Matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dangnhap] PRIMARY KEY CLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 05/28/2022 5:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Mahd] [nvarchar](50) NOT NULL,
	[Masp] [nvarchar](50) NULL,
	[Tensp] [nvarchar](50) NULL,
	[Dongia] [float] NULL,
	[Thanhtien] [float] NULL,
	[Ngay] [nvarchar](50) NULL,
	[Tenkh] [nvarchar](50) NULL,
	[Tennv] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaQly]    Script Date: 05/28/2022 5:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaQly](
	[Maqly] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaQly] PRIMARY KEY CLUSTERED 
(
	[Maqly] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 05/28/2022 5:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[Manv] [nvarchar](50) NULL,
	[Tennv] [nvarchar](50) NOT NULL,
	[Ngaysinh] [nvarchar](50) NULL,
	[Chucvu] [nvarchar](50) NULL,
	[Luong] [float] NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[Tennv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 05/28/2022 5:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [nvarchar](50) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Loaisp] [nvarchar](50) NULL,
	[Thuonghieu] [nvarchar](50) NULL,
	[Giaban] [float] NULL,
	[Vitri] [nvarchar](50) NULL,
	[Khuyenmai] [nvarchar](50) NULL,
	[Trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuonghieu]    Script Date: 05/28/2022 5:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuonghieu](
	[Thuonghieu] [nvarchar](50) NOT NULL,
	[Math] [nvarchar](50) NULL,
 CONSTRAINT [PK_Thuonghieu] PRIMARY KEY CLUSTERED 
(
	[Thuonghieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Dangnhap] ([Taikhoan], [Matkhau]) VALUES (N'admin', N'123')
INSERT [dbo].[Dangnhap] ([Taikhoan], [Matkhau]) VALUES (N'nhanvien', N'456')
GO
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD01', N'Ma01', N'Tivi LG', 2000000, 2000000, N'17/09/2021', N'Nguyen Van An', N'Nguyen Van Anh')
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD02', N'Ma02', N'TiviSony', 2000000, 2000000, N'17/09/2021', N'Nguy?n Ba', N'Nguyen Van Anh')
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD03', N'Ma02', N'TiviSony', 3000000, 3000000, N'17/09/2021', N'Nguyenn Ba', N'Nguyen Van Anh')
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD04', N'Ma03', N'Tivi Samsung 4K 50 inch', 4500000, 4500000, N'20/09/2021', N'Không de cap', N'Nguyen Van Anh')
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD05', N'Ma03', N'Tivi Samsung 4K 50 inch', 4500000, 4500000, N'20/09/2021', N'Không de cap', N'Nguyen Van Anh')
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD06', N'Ma03', N'Tivi Samsung 4K 50 inch', 4500000, 4500000, N'20/09/2021', N'Không de cap', N'Nguyen The Anh')
INSERT [dbo].[Hoadon] ([Mahd], [Masp], [Tensp], [Dongia], [Thanhtien], [Ngay], [Tenkh], [Tennv]) VALUES (N'HD07', N'Ma03', N'Tivi Samsung 4K 50 inch', 4500000, 4500000, N'20/09/2021', N'Không de cap', N'Nguyen The Anh')
GO
INSERT [dbo].[MaQly] ([Maqly]) VALUES (N'qly01')
GO
INSERT [dbo].[Nhanvien] ([Manv], [Tennv], [Ngaysinh], [Chucvu], [Luong], [Gioitinh], [Diachi], [Trangthai]) VALUES (N'QL01', N'Nguyen Anh Quân', N'01/12/2001', N'Qu?n lý', 20000000, N'Nam', N'Hà Noi', N'Ðang làm viec')
INSERT [dbo].[Nhanvien] ([Manv], [Tennv], [Ngaysinh], [Chucvu], [Luong], [Gioitinh], [Diachi], [Trangthai]) VALUES (N'BV01', N'Nguyen Huu Ða', N'01/06/2000', N'Bao ve', 5000000, N'Nam', N'Hà Noi', N'Ðang làm vi?c')
INSERT [dbo].[Nhanvien] ([Manv], [Tennv], [Ngaysinh], [Chucvu], [Luong], [Gioitinh], [Diachi], [Trangthai]) VALUES (N'TN02', N'Nguyen The Anh', N'02/06/2002', N'Thu ngân', 9000000, N'Nam', N'Hà Noi', N'Ðang làm vi?c')
INSERT [dbo].[Nhanvien] ([Manv], [Tennv], [Ngaysinh], [Chucvu], [Luong], [Gioitinh], [Diachi], [Trangthai]) VALUES (N'TN01', N'Nguyen Van Anh', N'02/06/2002', N'Thu ngân', 9000000, N'Nam', N'Hà N?i', N'Ðang làm vi?c')
GO
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Loaisp], [Thuonghieu], [Giaban], [Vitri], [Khuyenmai], [Trangthai]) VALUES (N'Ma01', N'tivi LG', N'Tivi', N'LG', 2000000, N'Gian 1', N'Không', N'Còn hàng')
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Loaisp], [Thuonghieu], [Giaban], [Vitri], [Khuyenmai], [Trangthai]) VALUES (N'Ma02', N'TiviSony', N'tivi', N'Sony', 2000000, N'Gian 1', N'Không', N'Còn hàng')
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Loaisp], [Thuonghieu], [Giaban], [Vitri], [Khuyenmai], [Trangthai]) VALUES (N'Ma03', N'Tivi Samsung 4K 50 inch', N'Tivi', N'Samsung', 4500000, N'Gian 1', N'10%', N'Còn hàng')
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Loaisp], [Thuonghieu], [Giaban], [Vitri], [Khuyenmai], [Trangthai]) VALUES (N'Ma04', N'TiviSony', N'Tivi', N'Sony', 2200000, N'Gian 1', N'Có-10%', N'H?t hàng')
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Loaisp], [Thuonghieu], [Giaban], [Vitri], [Khuyenmai], [Trangthai]) VALUES (N'Ma05', N'Iphone 13 Pro Max', N'Ðien thoai', N'Apple', 37000000, N'Gian 2', N'Không', N'Còn hàng')
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Loaisp], [Thuonghieu], [Giaban], [Vitri], [Khuyenmai], [Trangthai]) VALUES (N'Ma06', N'Iphone 13 Pro Max', N'Ðien thoai', N'Apple', 37000000, N'Gian 2', N'Co', N'Còn hàng')
GO
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Apple', N'ap')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Daikin', N'dk')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Dalton', N'dn')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Dell', N'dl')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Electrolux', N'el')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Hitachi', N'ht')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'HP', N'hp')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'JBL', N'jl')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Lenovo', N'lv')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'LG', N'lg')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Logitech', N'lh')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Misubishi', N'mb')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Oppo', N'op')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Panasonic', N'pn')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Realme', N'rm')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Samsung', N'ss')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Sharp', N'sp')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Sony', N'sn')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Toshiba', N'tb')
INSERT [dbo].[Thuonghieu] ([Thuonghieu], [Math]) VALUES (N'Xiaomi', N'xm')
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_Nhanvien] FOREIGN KEY([Tennv])
REFERENCES [dbo].[Nhanvien] ([Tennv])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_Nhanvien]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Thuonghieu] FOREIGN KEY([Thuonghieu])
REFERENCES [dbo].[Thuonghieu] ([Thuonghieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Thuonghieu]
GO
USE [master]
GO
ALTER DATABASE [CNPM] SET  READ_WRITE 
GO
