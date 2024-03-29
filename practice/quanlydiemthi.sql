create database QuanLyDiemThi;
use QuanLyDiemThi;

create table HocSinh(
	MaHS varchar(20) primary key,
    TenHS varchar(50),
    NgaySinh DATETIME,
    Lop varchar(20),
    GT varchar(20)
);

create table MonHoc(
	MaMH varchar(20) primary key,
    TenMH varchar(50)
);

create table BangDiem(
	MaHS varchar(20),
    MaMH varchar(20),
    DiemThi int,
    NgayKT DATETIME,
    Primary key (MaHS, MaMH),
    foreign key (MaHS) references HocSinh(MaHS),
    foreign key (MaMH) references MonHoc(MaMH)
);

create table GiaoVien(
	MaGV varchar(20) primary key,
    TenGV varchar(20),
    SDT varchar(10)
);

alter table MonHoc add MaGV varchar(20);
alter table MonHoc
add foreign key (MaGV) references GiaoVien(MaGV);
