-- tạo bảng NguoiDung
create table NguoiDung(
    UserID int primary key not null,
    Email varchar(50) not null,
    Matkhau varchar(20) not null,
    Vaitro varchar(20) not null
);

-- tạo bảng NhanVien
create table NhanVien(
    MaNV int primary key not null,
    TenNV varchar(50) not null,
    NgayVaoLam DATE ,
    SDT char(10) not null,
    Chucvu varchar(50),
    UserID int      
);

--Them khoa ngoai trong bảng NhanVien
ALTER TABLE NhanVien
    ADD CONSTRAINT NV_ND FOREIGN KEY (UserID) 
        REFERENCES NguoiDung(UserID)

-- Tạo bảng SanPham
create table SanPham(
    MaSP varchar(10) primary key,
    TenSP varchar(50) not null, 
    Gia int,
    MaNCC int,             
    TrangThai bit(1)
);

-- Thêm khóa ngoài trong bảng SanPham
ALter table SanPham
    Add CONSTRAINT SP_NCC FOREIGN KEY (MaNCC)
        REFERENCES NhaCungCap(MaNCC)

-- Tạo bảng KhachHang
create table KhachHang(
    MaKH int primary key ,
    TenKH varchar(50) not null,
    NgayThamGia date  not null,
    DoanhSo int not null,
    DiemTichLuy int not null,
    UserID int not null,
    MaLKH int not null
)

-- thêm khóa ngoài cho bảng KhachHang
ALter table KhachHang
    Add CONSTRAINT KH_ND FOREIGN KEY (UserID)
        REFERENCES NguoiDung(UserID),
    Add CONSTRAINT Kh_LKH FOREIGN KEY (MaLKH)
        REFERENCES LoaiKH(MaLKH)

-- Tạo bảng LoaiKH
create table LoaiKH(
    MaLKH int primary key not null
)

-- tạo bảng NhaCungCap
create table NhaCungCap(
    MaNCC int primary key,
    TenNCC varchar(50) not null,
    DiaChi varchar(50) not null,
    SDT char(10) not null,
    TG_HopTac date not null
);

-- Tạo bảng HoaDon
create table HoaDon(
    MaHD varchar(10) primary key not null,
    NgayLapHD date not null,
    TrangThai bit(1) not null,
    Code_Voucher varchar(10),
    MaKH int not null,
    SoBan int
)

-- Thêm kháo ngoài bảng HoaDon
ALter table HoaDon
    Add CONSTRAINT HD_V FOREIGN KEY (Code_Voucher)
        REFERENCES Voucher(Code_Voucher),
    Add CONSTRAINT HD_KH FOREIGN KEY (MaKH)
        REFERENCES KhachHang(MaKH),
    Add CONSTRAINT HD_B FOREIGN KEY (SoBan)
        REFERENCES Ban(SoBan)

-- tạo bảng voucher
create table Voucher(
    Code_Voucher varchar(10) primary key not null,
    Mota varchar(50) not null,
    Phantram int,		
    SoLuong int,
    Diem int not null
);

-- Tạo khóa ngoài cho bảng Voucher
ALter table Voucher
    Add constraint V_PhanTram check (Phantram > 0 AND Phantram <= 100)

-- Tạo bảng Ban
create table Ban(
    SoBan int primary key not null,
    ViTri varchar(50) not null,
    TrangThai bit(1) not null
)

-- tạo bảng Đặt bàn
create table DatBan(
    SoBan int not null,
    MaKH int not null,
    GioBD datetime not null,
    GioKT datetime  not null 
)

-- Tạo khóa chính, khóa ngoài cho bảng DatBan
ALter table DatBan
    Add Constraint pk_DB PRIMARY KEY (SoBan, MaKH),
    Add CONSTRAINT DB_B FOREIGN KEY (SoBan)
        REFERENCES Ban(SoBan),
    Add CONSTRAINT DB_KH FOREIGN KEY (MaKH)
        REFERENCES KhachHang(MaKH)

-- Tạo bảng ChiTietHD
create table ChiTietHD(
    MaHD varchar(10)  not null,
    MaSP varchar(10)  not null,
    SoLuong int not null		
)

-- Tạo khóa chính, khóa ngoài cho bang CHiTietHD
Alter table ChiTietHD
    Add constraint pk_CTHD PRIMARY KEY (MaHD, MaSP),
    Add CONSTRAINT CTHD_HD FOREIGN KEY (MaHD)
        REFERENCES HoaDon(MaHD),
    Add CONSTRAINT CTHD_SP FOREIGN KEY (MaSP)
        REFERENCES SanPham(MaSP)





