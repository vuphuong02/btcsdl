create database QuanLyBanHang
use QuanLyBanHang

create table TinhTP(
	MaTP char(2) primary key not null,
	TenTP VARCHAR(30) not null Default ' '
)

create table DonVi(
	MaDV CHAR(2) Primary key Not Null,
	TenDV VARCHAR(30) Not Null Unique
)

create table NhaCungCap(
	MaNCC INT Primary key Not Null,
	TenNCC VARCHAR(30) Not Null Unique,
	DiaChi VARCHAR(60) Not Null Default ' ',
	DienThoai VARCHAR(11) Not Null Default ' '
)

create table MatHang(
	MaMH INT Primary key Not Null,
	TenMH VARCHAR(30) Not Null Unique,
	DonViTinh VARCHAR(20) Not Null Default ' ',
	DonGia INT Not Null Default 0,
	HinhSP TEXT Null,
	MaNCC INT Not Null
)

create table KhachHang(
	MaKH VARCHAR(10) Primary key Not Null,
	TenKH VARCHAR(40) Not Null Unique Default ' ',
	DiaChi VARCHAR(60) Not Null Default ' ',
	DienThoai VARCHAR(11) Not Null Default ' ',
	MaTP CHAR(2) Not Null
)

CREATE TABLE NhanVien(
    MaNV INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    HoLot VARCHAR(30) NOT NULL DEFAULT ' ',
    TenNV VARCHAR(20) NOT NULL DEFAULT ' ',
    Phai CHAR(1) CHECK (Phai IN ('F', 'M')) NOT NULL DEFAULT 'F',
    LuongCB INT CHECK (LuongCB >= 0) NOT NULL DEFAULT 0,
    NgayNViec DATE NOT NULL,
    DiaChiNV VARCHAR(60) NOT NULL DEFAULT ' ',
    DienThoaiNV VARCHAR(11) NULL DEFAULT ' ',
    HinhNV TEXT NULL
)

create table DonDatHang(
MaDDH CHAR(5) Primary key Not Null,
MaKH VARCHAR(10) Not Null,
MaNV INT Not Null,
NgayDH DATE Not Null,
NgayGiao DATE,
)

create table ChiTietDDH(
MaDDH CHAR(5) Not Null,
MaMH INT Not Null,
PRIMARY KEY(MaMH, MaDDH),
SoLuong INT Not Null,
GiamGia DATE
)

create table ChamCong(
Thang TINYINT Not Null,
Nam SMALLINT Not Null,
MaNV INT Not Null,
PRIMARY KEY(Thang, Nam, MaNV),
NgayCong TINYINT Default 0
)
