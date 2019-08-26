-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.0.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table barjas.accesspage
CREATE TABLE IF NOT EXISTS `accesspage` (
  `Pk_AccessPage_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_GroupMenu_ID` int(11) DEFAULT NULL,
  `PageName` varchar(100) DEFAULT NULL,
  `PageLink` varchar(100) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_AccessPage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.accesspage: ~38 rows (approximately)
/*!40000 ALTER TABLE `accesspage` DISABLE KEYS */;
INSERT INTO `accesspage` (`Pk_AccessPage_ID`, `Fk_GroupMenu_ID`, `PageName`, `PageLink`, `Status`, `Icon`) VALUES
	(11, 4, 'Usulan', 'UsulanView', 0, 'fa fa-bank'),
	(12, 4, 'Perencanaan', 'PerencanaanView', 0, 'fa fa-line-chart'),
	(13, 4, 'Pengadaan', 'PengadaanView', 1, 'fa fa-stack-overflow'),
	(14, 4, 'Gudang', 'GudangView', 0, 'fa fa-cubes'),
	(15, 4, 'Keuangan', 'KeuanganView', 0, 'fa fa-money'),
	(16, 6, 'Usulan', 'UsulanView', 0, 'fa fa-bank'),
	(17, 6, 'Perencanaan', 'PerencanaanView', 0, 'fa fa-line-chart'),
	(18, 6, 'Pengadaan', 'PengadaanView', 0, 'fa fa-stack-overflow'),
	(19, 6, 'Gudang', 'GudangView', 1, 'fa fa-cubes'),
	(20, 6, 'Keuangan', 'KeuanganView', 0, 'fa fa-money'),
	(21, 9, 'Usulan', 'UsulanView', 0, 'fa fa-bank'),
	(22, 9, 'Perencanaan', 'PerencanaanView', 0, 'fa fa-line-chart'),
	(23, 9, 'Pengadaan', 'PengadaanView', 0, 'fa fa-stack-overflow'),
	(24, 9, 'Gudang', 'GudangView', 0, 'fa fa-cubes'),
	(25, 9, 'Keuangan', 'KeuanganView', 1, 'fa fa-money'),
	(26, 10, 'Usulan', 'UsulanView', 0, 'fa fa-bank'),
	(27, 10, 'Perencanaan', 'PerencanaanView', 1, 'fa fa-line-chart'),
	(28, 10, 'Pengadaan', 'PengadaanView', 1, 'fa fa-stack-overflow'),
	(29, 10, 'Gudang', 'GudangView', 1, 'fa fa-cubes'),
	(30, 10, 'Keuangan', 'KeuanganView', 0, 'fa fa-money'),
	(36, 11, 'Usulan', 'UsulanView', 1, 'fa fa-bank'),
	(37, 11, 'Perencanaan', 'PerencanaanView', 1, 'fa fa-line-chart'),
	(38, 11, 'Pengadaan', 'PengadaanView', 1, 'fa fa-stack-overflow'),
	(39, 11, 'Gudang', 'GudangView', 1, 'fa fa-cubes'),
	(40, 11, 'Keuangan', 'KeuanganView', 1, 'fa fa-money'),
	(46, 2, 'Usulan', 'UsulanView', 0, 'fa fa-bank'),
	(47, 2, 'Perencanaan', 'PerencanaanView', 1, 'fa fa-line-chart'),
	(48, 2, 'Pengadaan', 'PengadaanView', 0, 'fa fa-stack-overflow'),
	(49, 2, 'Gudang', 'GudangView', 0, 'fa fa-cubes'),
	(50, 2, 'Keuangan', 'KeuanganView', 0, 'fa fa-money'),
	(96, 3, 'Usulan', 'UsulanView', 1, 'fa fa-bank'),
	(97, 3, 'Perencanaan', 'PerencanaanView', 0, 'fa fa-line-chart'),
	(98, 3, 'Pengadaan', 'PengadaanView', 0, 'fa fa-stack-overflow'),
	(99, 3, 'Gudang', 'GudangView', 0, 'fa fa-cubes'),
	(100, 3, 'Keuangan', 'KeuanganView', 0, 'fa fa-money'),
	(101, 3, 'Master Persediaan', 'persediaan/persediaan', 1, 'fa fa-cubes'),
	(102, 3, 'Persediaan Masuk', 'persediaan/persediaanmasuk', 1, 'fa fa-cubes'),
	(103, 3, 'Persediaan Keluar', 'persediaan/persediaankeluar', 0, 'fa fa-cubes');
/*!40000 ALTER TABLE `accesspage` ENABLE KEYS */;

-- Dumping structure for table barjas.bulan
CREATE TABLE IF NOT EXISTS `bulan` (
  `Pk_Bulan_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NoBulan` int(11) NOT NULL DEFAULT '0',
  `Bulan` varchar(50) DEFAULT '0',
  PRIMARY KEY (`Pk_Bulan_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.bulan: ~12 rows (approximately)
/*!40000 ALTER TABLE `bulan` DISABLE KEYS */;
INSERT INTO `bulan` (`Pk_Bulan_ID`, `NoBulan`, `Bulan`) VALUES
	(1, 1, 'Januari'),
	(2, 2, 'Februari'),
	(3, 3, 'Maret'),
	(4, 4, 'April'),
	(5, 5, 'Mei'),
	(6, 6, 'Juni'),
	(7, 7, 'Juli'),
	(8, 8, 'Agustus'),
	(9, 9, 'September'),
	(10, 10, 'Oktober'),
	(11, 11, 'November'),
	(12, 12, 'Desember');
/*!40000 ALTER TABLE `bulan` ENABLE KEYS */;

-- Dumping structure for table barjas.gudang
CREATE TABLE IF NOT EXISTS `gudang` (
  `Pk_Gudang_id` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Perencanaan_Id` int(11) NOT NULL DEFAULT '0',
  `StatusBrgMasuk` int(11) DEFAULT NULL,
  `TglBAST` date DEFAULT NULL,
  `NoBAST` varchar(50) DEFAULT NULL,
  `VolumeMasuk` int(11) DEFAULT NULL,
  `VolumeKeluar` int(11) DEFAULT NULL,
  `DibuatOleh` varchar(50) DEFAULT NULL,
  `DibuatTgl` datetime DEFAULT NULL,
  PRIMARY KEY (`Pk_Gudang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.gudang: ~1 rows (approximately)
/*!40000 ALTER TABLE `gudang` DISABLE KEYS */;
INSERT INTO `gudang` (`Pk_Gudang_id`, `Fk_Perencanaan_Id`, `StatusBrgMasuk`, `TglBAST`, `NoBAST`, `VolumeMasuk`, `VolumeKeluar`, `DibuatOleh`, `DibuatTgl`) VALUES
	(2, 32, NULL, '2018-08-09', '', 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `gudang` ENABLE KEYS */;

-- Dumping structure for table barjas.gudangkeluar
CREATE TABLE IF NOT EXISTS `gudangkeluar` (
  `PK_GudangKeluar_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Gudang_id` int(11) DEFAULT '0',
  `Fk_Perencanaan_Id` int(11) NOT NULL DEFAULT '0',
  `TglPengiriman` date DEFAULT NULL,
  `Volume` int(11) DEFAULT NULL,
  `NoBAPB` varchar(50) DEFAULT NULL,
  `NamaPenerima` varchar(50) DEFAULT NULL,
  `NIPPenerima` varchar(50) DEFAULT NULL,
  `NamaPenyerah` varchar(50) DEFAULT NULL,
  `NIPPenyerah` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`PK_GudangKeluar_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.gudangkeluar: ~0 rows (approximately)
/*!40000 ALTER TABLE `gudangkeluar` DISABLE KEYS */;
/*!40000 ALTER TABLE `gudangkeluar` ENABLE KEYS */;

-- Dumping structure for table barjas.gudangmasuk
CREATE TABLE IF NOT EXISTS `gudangmasuk` (
  `Pk_GudangMasuk_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Gudang_id` int(11) NOT NULL DEFAULT '0',
  `Fk_Perencanaan_Id` int(11) NOT NULL DEFAULT '0',
  `BarangDiterima` date DEFAULT NULL,
  `Jumlah` int(11) DEFAULT '0',
  `Keterangan` varchar(100) DEFAULT '0',
  `KesesuaianBarang` varchar(50) DEFAULT '0',
  `TglBAST` date DEFAULT NULL,
  `NoBAST` varchar(50) DEFAULT NULL,
  `TglSuratJalan` date DEFAULT NULL,
  `NoSuratJalan` varchar(50) DEFAULT NULL,
  `Barcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_GudangMasuk_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.gudangmasuk: ~1 rows (approximately)
/*!40000 ALTER TABLE `gudangmasuk` DISABLE KEYS */;
INSERT INTO `gudangmasuk` (`Pk_GudangMasuk_ID`, `Fk_Gudang_id`, `Fk_Perencanaan_Id`, `BarangDiterima`, `Jumlah`, `Keterangan`, `KesesuaianBarang`, `TglBAST`, `NoBAST`, `TglSuratJalan`, `NoSuratJalan`, `Barcode`) VALUES
	(1, 0, 32, '2018-08-09', 0, '', 'Sesuai', '2018-08-09', '', '2018-08-09', '', '');
/*!40000 ALTER TABLE `gudangmasuk` ENABLE KEYS */;

-- Dumping structure for table barjas.keuangan
CREATE TABLE IF NOT EXISTS `keuangan` (
  `Pk_Keuangan_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Perencanaan_Id` int(11) NOT NULL DEFAULT '0',
  `NoSPP` varchar(50) DEFAULT NULL,
  `TglSPP` date DEFAULT NULL,
  `NilaiSPP` int(11) DEFAULT NULL,
  `NoSPM` varchar(50) DEFAULT NULL,
  `TglSPM` date DEFAULT NULL,
  `NilaiSPM` int(11) DEFAULT NULL,
  `NoSP2D` varchar(50) DEFAULT NULL,
  `TglSP2D` date DEFAULT NULL,
  `NilaiSP2D` int(11) DEFAULT NULL,
  `DibuatOleh` varchar(50) DEFAULT NULL,
  `DibuatTgl` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Keuangan_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.keuangan: ~0 rows (approximately)
/*!40000 ALTER TABLE `keuangan` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan` ENABLE KEYS */;

-- Dumping structure for table barjas.msgroupapproval
CREATE TABLE IF NOT EXISTS `msgroupapproval` (
  `Pk_MsGroupApproval_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MsGroupApproval_Name` varchar(100) NOT NULL,
  `MsGroupApproval_Description` varchar(200) DEFAULT NULL,
  `MsGroupApproval_IsActive` bit(1) NOT NULL,
  `MsGroupApproval_CreatedDate` datetime DEFAULT NULL,
  `MsGroupApproval_CreatedBy` varchar(100) DEFAULT NULL,
  `MsGroupApproval_LastUpdatedDate` datetime DEFAULT NULL,
  `MsGroupApproval_LastUpdatedBy` varchar(100) DEFAULT NULL,
  `MsGroupApproval_ApprovedDate` datetime DEFAULT NULL,
  `MsGroupApproval_ApprovedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Pk_MsGroupApproval_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.msgroupapproval: ~0 rows (approximately)
/*!40000 ALTER TABLE `msgroupapproval` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgroupapproval` ENABLE KEYS */;

-- Dumping structure for table barjas.msgroupmenu
CREATE TABLE IF NOT EXISTS `msgroupmenu` (
  `Pk_MsGroupMenu_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MsGroupMenu_Name` varchar(100) NOT NULL,
  `MsGroupMenu_Description` varchar(200) DEFAULT NULL,
  `MsGroupMenu_IsActive` bit(1) NOT NULL,
  `MsGroupMenu_CreatedDate` datetime DEFAULT NULL,
  `MsGroupMenu_CreatedBy` varchar(100) DEFAULT NULL,
  `MsGroupMenu_LastUpdatedDate` datetime DEFAULT NULL,
  `MsGroupMenu_LastUpdatedBy` varchar(100) DEFAULT NULL,
  `MsGroupMenu_ApprovedDate` datetime DEFAULT NULL,
  `MsGroupMenu_ApprovedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Pk_MsGroupMenu_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.msgroupmenu: ~9 rows (approximately)
/*!40000 ALTER TABLE `msgroupmenu` DISABLE KEYS */;
INSERT INTO `msgroupmenu` (`Pk_MsGroupMenu_Id`, `MsGroupMenu_Name`, `MsGroupMenu_Description`, `MsGroupMenu_IsActive`, `MsGroupMenu_CreatedDate`, `MsGroupMenu_CreatedBy`, `MsGroupMenu_LastUpdatedDate`, `MsGroupMenu_LastUpdatedBy`, `MsGroupMenu_ApprovedDate`, `MsGroupMenu_ApprovedBy`) VALUES
	(1, 'Admin', 'Bisa buka semua User', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Perencanaan', 'Perencanaan', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'Usulan', 'input data barang untuk diajukan keperencanaan', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'Pengadaan', 'Pengadaan', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Gudang', 'Gudang', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'Perencanaan Approval', 'Perencanaan Approval', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'Keuangan', 'Keuangan', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'Head Pengadaan', 'Head Pengadaan', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'Admin Pengadaan', 'Admin Pengadaan', b'1', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `msgroupmenu` ENABLE KEYS */;

-- Dumping structure for table barjas.mskategori
CREATE TABLE IF NOT EXISTS `mskategori` (
  `Pk_Kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `NamaKategori` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Pk_Kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.mskategori: ~32 rows (approximately)
/*!40000 ALTER TABLE `mskategori` DISABLE KEYS */;
INSERT INTO `mskategori` (`Pk_Kategori_id`, `NamaKategori`) VALUES
	(1, 'Obat'),
	(2, 'Alkes Pakai Habis'),
	(3, 'Barang Pakai Habis'),
	(4, 'Lab'),
	(5, 'Kebersihan'),
	(6, 'Seragam'),
	(7, 'ATK'),
	(8, 'Cetakan'),
	(9, 'Modal'),
	(10, 'Cetakan Khusus'),
	(11, 'Cetakan Umum'),
	(12, 'Bahan Medis Gigi'),
	(13, 'Bahan dan Pangan'),
	(14, 'Belanja Alat Listrik'),
	(15, 'Belanja Umum'),
	(16, 'Modal Kedokteran Umum'),
	(17, 'Modal Kedokteran Gigi'),
	(18, 'Modal Alat Ruang Kamar Perawatan'),
	(19, 'Modal Alat Kebidanan & Penyakit Kandungan'),
	(20, 'Modal Kursi'),
	(21, 'Modal Meja'),
	(22, 'Modal Meubelair'),
	(23, 'Modal Lemari'),
	(24, 'Modal Printer'),
	(25, 'Modal Komputer'),
	(26, 'Modal Laptop'),
	(27, 'Modal Tablet'),
	(28, 'Modal Alat Pendingin'),
	(29, 'Modal Dispenser'),
	(30, 'Modal Kulkas'),
	(31, 'Modal Speaker'),
	(32, 'Pemeliharaan');
/*!40000 ALTER TABLE `mskategori` ENABLE KEYS */;

-- Dumping structure for table barjas.mssatuan
CREATE TABLE IF NOT EXISTS `mssatuan` (
  `Pk_MsSatuan_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaSatuan` varchar(20) NOT NULL,
  PRIMARY KEY (`Pk_MsSatuan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.mssatuan: 21 rows
/*!40000 ALTER TABLE `mssatuan` DISABLE KEYS */;
INSERT INTO `mssatuan` (`Pk_MsSatuan_ID`, `NamaSatuan`) VALUES
	(1, 'Unit'),
	(2, 'Buah'),
	(3, 'Set'),
	(4, 'Pcs'),
	(5, 'Box'),
	(6, 'Dus'),
	(7, 'Botol'),
	(8, 'Tube'),
	(9, 'Pot'),
	(10, 'Tablet'),
	(11, 'Kapsul'),
	(12, 'Sirup'),
	(13, 'Liter'),
	(14, 'Pack'),
	(15, 'Ampul'),
	(16, 'Plakon'),
	(17, 'Lembar'),
	(18, 'Lusin'),
	(20, 'Rim'),
	(21, 'Roll'),
	(22, 'meter');
/*!40000 ALTER TABLE `mssatuan` ENABLE KEYS */;

-- Dumping structure for table barjas.msstatus
CREATE TABLE IF NOT EXISTS `msstatus` (
  `Pk_Status_Id` int(11) NOT NULL AUTO_INCREMENT,
  `NamaStatus` varchar(50) NOT NULL,
  `NamaTable` varchar(100) NOT NULL,
  PRIMARY KEY (`Pk_Status_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.msstatus: 4 rows
/*!40000 ALTER TABLE `msstatus` DISABLE KEYS */;
INSERT INTO `msstatus` (`Pk_Status_Id`, `NamaStatus`, `NamaTable`) VALUES
	(1, 'Setuju', ''),
	(2, 'Belum Disetujui', ''),
	(3, 'Respon', 'Pengadaan'),
	(4, 'Submit', 'Pengadaan');
/*!40000 ALTER TABLE `msstatus` ENABLE KEYS */;

-- Dumping structure for table barjas.msuser
CREATE TABLE IF NOT EXISTS `msuser` (
  `Pk_MsUser_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MsUser_NIP` varchar(100) NOT NULL,
  `MsUser_StaffName` varchar(100) NOT NULL,
  `MsUser_EmailAddress` varchar(1000) NOT NULL,
  `Fk_MsGroupMenu_Id` int(11) NOT NULL,
  `Fk_MsGroupApproval_Id` int(11) NOT NULL,
  `MsUser_Password` varchar(50) DEFAULT NULL,
  `MsUser_PasswordSalt` varchar(255) DEFAULT NULL,
  `MsUser_LastChangePassword` datetime DEFAULT NULL,
  `MsUser_UsedInIPAddress` varchar(20) DEFAULT NULL,
  `MsUser_IsInUsed` bit(1) DEFAULT NULL,
  `MsUser_IsDisabled` bit(1) DEFAULT NULL,
  `MsUser_LastLogin` datetime DEFAULT NULL,
  `MsUser_IsSysAdmin` bit(1) DEFAULT NULL,
  `MsUser_IsBankWide` bit(1) DEFAULT NULL,
  `MsUser_IsActive` bit(1) DEFAULT NULL,
  `MsUser_CreatedDate` datetime DEFAULT NULL,
  `MsUser_CreatedBy` varchar(100) DEFAULT NULL,
  `MsUser_LastUpdatedDate` datetime DEFAULT NULL,
  `MsUser_LastUpdatedBy` varchar(100) DEFAULT NULL,
  `MsUser_ApprovedDate` datetime DEFAULT NULL,
  `MsUser_ApprovedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Pk_MsUser_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.msuser: ~13 rows (approximately)
/*!40000 ALTER TABLE `msuser` DISABLE KEYS */;
INSERT INTO `msuser` (`Pk_MsUser_Id`, `MsUser_NIP`, `MsUser_StaffName`, `MsUser_EmailAddress`, `Fk_MsGroupMenu_Id`, `Fk_MsGroupApproval_Id`, `MsUser_Password`, `MsUser_PasswordSalt`, `MsUser_LastChangePassword`, `MsUser_UsedInIPAddress`, `MsUser_IsInUsed`, `MsUser_IsDisabled`, `MsUser_LastLogin`, `MsUser_IsSysAdmin`, `MsUser_IsBankWide`, `MsUser_IsActive`, `MsUser_CreatedDate`, `MsUser_CreatedBy`, `MsUser_LastUpdatedDate`, `MsUser_LastUpdatedBy`, `MsUser_ApprovedDate`, `MsUser_ApprovedBy`) VALUES
	(1, 'sysadmin', 'Super User or System', 'nugraha.hidayatulloh@danamon.co.id', 1, 1, 'P@ssw0rd', 'Admin1234', '2018-01-02 08:11:28', '::1', b'1', b'0', '2018-01-02 08:11:28', b'1', b'1', b'1', '2018-01-02 08:11:28', '2/19/2009 2:42:51 PM', NULL, NULL, NULL, NULL),
	(2, 'nugraha', 'Nugraha Rahmat H', 'nugraha.pkctanahabang@gmail.com', 3, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-31 06:19:23', 'Super User or System', NULL, NULL),
	(3, 'meli', 'Meliance Hexamono.A', 'nugraha.pkctanahabang@gmail.com', 2, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-31 06:19:43', 'Super User or System', NULL, NULL),
	(4, 'tia', 'Tia Utaminingrum', 'nugraha.pkctanahabang@gmail.com', 4, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 12:04:52', 'Nugraha Rahmat H', NULL, NULL),
	(5, 'yayan', 'Yayan', 'nugraha.pkctanahabang@gmail.com', 6, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 12:05:09', 'Nugraha Rahmat H', NULL, NULL),
	(6, 'fauziah', 'Fauziah', 'nugraha.pkctanahabang@gmail.com', 3, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 10:18:41', 'Nugraha Rahmat H', NULL, NULL),
	(7, 'feby.luzia', 'Feby Dwi Luzia', 'nugraha.pkctanahabang@gmail.com', 9, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 08:08:35', 'Nugraha Rahmat H', NULL, NULL),
	(8, 'Febrina.sari', 'Febrina Puspita Sari, A. Md. Prs.', 'nugraha.pkctanahabang@gmail.com', 4, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-05 14:30:27', 'Nugraha Rahmat H', '2018-07-11 08:41:19', 'Nugraha Rahmat H', NULL, NULL),
	(9, 'ayu', 'Ayu Permatasari', 'nugraha.pkctanahabang@gmail.com', 4, 0, 'rindumadinah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-05 15:01:03', 'Nugraha Rahmat H', '2018-05-23 09:35:12', 'Ayu Permatasari', NULL, NULL),
	(10, 'dr.fitria', 'dr Fitria Jusri', 'nugraha.rahmat16@gmail.com', 10, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 11:04:43', 'Nugraha Rahmat H', '2018-04-17 11:37:28', 'Nugraha Rahmat H', NULL, NULL),
	(11, 'andi', 'Andi', 'info@puskesmastanahabang.id', 3, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-21 13:01:53', 'Nugraha Rahmat H', NULL, NULL, NULL, NULL),
	(12, 'idham.gudanginduk', 'Idham', 'system@puskesmastanahabang.id', 6, 0, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-23 09:18:34', 'Nugraha Rahmat H', NULL, NULL, NULL, NULL),
	(13, 'azhari.gudanginduk', 'M Azhari', 'Test', 6, 0, 'azhari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08 10:43:56', 'Super User or System', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `msuser` ENABLE KEYS */;

-- Dumping structure for table barjas.pending
CREATE TABLE IF NOT EXISTS `pending` (
  `Pk_Pending_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Perencanaan_ID` int(11) DEFAULT NULL,
  `Fk_MsGroupMenu_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Pending_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.pending: ~0 rows (approximately)
/*!40000 ALTER TABLE `pending` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending` ENABLE KEYS */;

-- Dumping structure for table barjas.pengadaan
CREATE TABLE IF NOT EXISTS `pengadaan` (
  `Pk_Pengadaan` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Perencanaan_Id` int(11) NOT NULL DEFAULT '0',
  `Fk_Status_Id` int(11) NOT NULL,
  `TglSuratPesananKeRekan` date DEFAULT NULL,
  `NoSP` varchar(50) DEFAULT NULL,
  `JangkaHari` int(11) DEFAULT NULL,
  `NamaPT` varchar(50) DEFAULT NULL,
  `HargaKontrak` int(11) DEFAULT NULL,
  `VolumeKontrak` int(11) DEFAULT NULL,
  `TotalKontrak` int(11) DEFAULT NULL,
  `Keterangan` varchar(150) DEFAULT NULL,
  `DibuatTgl` datetime DEFAULT NULL,
  `DibuatOleh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Pk_Pengadaan`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.pengadaan: ~53 rows (approximately)
/*!40000 ALTER TABLE `pengadaan` DISABLE KEYS */;
INSERT INTO `pengadaan` (`Pk_Pengadaan`, `Fk_Perencanaan_Id`, `Fk_Status_Id`, `TglSuratPesananKeRekan`, `NoSP`, `JangkaHari`, `NamaPT`, `HargaKontrak`, `VolumeKontrak`, `TotalKontrak`, `Keterangan`, `DibuatTgl`, `DibuatOleh`) VALUES
	(1, 7, 4, '2018-04-10', '1053', 30, 'PT. Pradana Estiara Medical', 4840000, 1, 4840000, '     Meja Eksaminasi MEX-01 Stainless Steel', '2018-04-24 08:28:18', 'Ayu Permatasari'),
	(2, 5, 3, '2018-04-18', '000', 0, '00000', 0, 3, 0, '  Proses pemesanan belum bisa diproses karena belum terima daftar barang alat listrik lainnya dari Andi/Nugi', '2018-04-19 11:53:25', 'Ayu Permatasari'),
	(3, 4, 3, '2018-04-18', '001', 0, '0000', 0, 1, 0, '  Belum terima daftar belanja alat listrik lainnya dari Nugi/Andi, sehingga belum bisa dilaksanakan.. ', '2018-04-19 11:53:36', 'Ayu Permatasari'),
	(4, 11, 4, '2018-05-22', '1404', 15, 'CV.BUMI METRO RAYA', 39000, 15, 585000, 'ATK 4 AKRE', '2018-05-23 08:31:08', 'Ayu Permatasari'),
	(5, 14, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 25000, 60, 1500000, '', '2018-05-23 08:32:08', 'Ayu Permatasari'),
	(6, 15, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 25000, 60, 1500000, '', '2018-05-23 08:32:41', 'Ayu Permatasari'),
	(7, 16, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 25000, 60, 1500000, '', '2018-05-23 08:33:03', 'Ayu Permatasari'),
	(8, 17, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 130000, 27, 3510000, '', '2018-05-23 08:33:38', 'Ayu Permatasari'),
	(9, 18, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 22000, 90, 1980000, '', '2018-05-23 08:34:34', 'Ayu Permatasari'),
	(10, 19, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 33000, 30, 990000, '', '2018-05-23 08:35:12', 'Ayu Permatasari'),
	(11, 20, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 33000, 30, 990000, '', '2018-05-23 08:35:46', 'Ayu Permatasari'),
	(12, 21, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 33000, 30, 990000, '', '2018-05-23 08:36:20', 'Ayu Permatasari'),
	(13, 22, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 70000, 9, 630000, '', '2018-05-23 08:37:20', 'Ayu Permatasari'),
	(14, 23, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 52800, 90, 4752000, '', '2018-05-23 08:39:57', 'Ayu Permatasari'),
	(15, 24, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 14300, 100, 1430000, '', '2018-05-23 08:52:07', 'Ayu Permatasari'),
	(16, 25, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 5500, 90, 495000, '', '2018-05-23 08:53:15', 'Ayu Permatasari'),
	(17, 26, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 7700, 30, 231000, '', '2018-05-23 08:53:47', 'Ayu Permatasari'),
	(18, 27, 4, '2018-05-18', '1343', 15, 'CV. BUMI METRO RAYA', 86400, 20, 1728000, '', '2018-05-23 08:56:15', 'Ayu Permatasari'),
	(19, 28, 4, '2018-05-18', '1343', 15, 'CV. BUMI METRO RAYA', 86400, 8, 691200, '', '2018-05-23 08:57:13', 'Ayu Permatasari'),
	(20, 29, 4, '2018-05-18', '1343', 15, 'CV. BUMI METRO RAYA', 86400, 8, 691200, '', '2018-05-23 08:57:51', 'Ayu Permatasari'),
	(21, 30, 4, '2018-05-18', '1343', 15, 'CV. BUMI METRO RAYA', 86400, 8, 691200, '', '2018-05-23 08:58:17', 'Ayu Permatasari'),
	(22, 31, 4, '2018-05-18', '1341', 15, 'CV. BUMI METRO RAYA', 972400, 6, 5834400, '', '2018-05-23 08:58:53', 'Ayu Permatasari'),
	(23, 50, 4, '2018-05-16', '000', 7, 'PT. POLYNDO NIPAR JAYA', 11000, 60, 660000, 'Belanja di bawah Rp. 1.000.000 tidak menggunakan SP', '2018-05-23 09:02:52', 'Ayu Permatasari'),
	(24, 51, 3, '2018-02-19', '576', 30, 'CV. AFKARINDO PERKASA', 18150, 3, 54450, 'Sudah terpesan sebanyak 15 roll', '2018-05-23 09:27:04', 'Ayu Permatasari'),
	(25, 52, 4, '2018-01-29', '347', 30, 'PT. POLYNDO NIPAR JAYA', 8250, 10, 82500, 'PAKET ATK I', '2018-05-23 09:29:31', 'Ayu Permatasari'),
	(26, 53, 4, '2018-02-19', '576', 30, 'PT. POLYNDO NIPAR JAYA', 110000, 10, 1100000, 'sudah dipesan sebanyak 15 buah pada paket Belanja Umum I', '2018-05-23 09:31:34', 'Ayu Permatasari'),
	(27, 54, 4, '2018-02-19', '576', 30, 'PT. POLYNDO NIPAR JAYA', 71500, 10, 715000, '', '2018-05-23 09:32:22', 'Ayu Permatasari'),
	(28, 10, 4, '2018-04-13', '1075', 15, 'PT. Josua Agung Prasetyo', 18480, 100, 1848000, 'Sudah selesai ', '2018-05-31 09:37:15', 'Tia Utaminingrum'),
	(29, 49, 4, '2018-06-05', '1513', 30, 'PT. Access Lintas Solusi', 199290, 1, 199290, '', '2018-06-22 10:23:59', 'Ayu Permatasari'),
	(30, 67, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 89102, 1, 89100, '1 lusin', '2018-06-22 10:26:48', 'Ayu Permatasari'),
	(31, 56, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 16500, 30, 495000, '30pcs', '2018-06-22 10:27:55', 'Ayu Permatasari'),
	(32, 69, 4, '2018-05-22', '1404', 15, 'CV. BUMI METRO RAYA', 51480, 30, 1544400, '30 Rim', '2018-06-22 10:29:55', 'Ayu Permatasari'),
	(33, 55, 4, '2018-05-23', '1406', 30, 'PT. Rafa Topaz Utama', 334840, 15, 5022600, 'Barang sudah diterima gudang tanggal 25 Mei 2018 ', '2018-07-03 11:31:25', 'Tia Utaminingrum'),
	(34, 32, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 3751000, 4, 15004000, '', '2018-07-06 11:53:23', 'Tia Utaminingrum'),
	(35, 33, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 3751000, 4, 15004000, '', '2018-07-06 11:58:55', 'Tia Utaminingrum'),
	(36, 34, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 30250, 4, 121000, ' ', '2018-07-06 12:20:31', 'Tia Utaminingrum'),
	(37, 35, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 47300, 4, 189200, ' ', '2018-07-06 12:20:13', 'Tia Utaminingrum'),
	(38, 36, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 47300, 4, 189200, ' ', '2018-07-06 12:19:36', 'Tia Utaminingrum'),
	(39, 37, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 54450, 4, 217800, ' ', '2018-07-06 12:18:51', 'Tia Utaminingrum'),
	(40, 38, 3, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 78650, 4, 314600, '', '2018-07-06 12:14:08', 'Tia Utaminingrum'),
	(41, 39, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 151250, 4, 605000, '', '2018-07-06 12:21:12', 'Tia Utaminingrum'),
	(42, 40, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 63250, 4, 253000, '', '2018-07-06 12:21:45', 'Tia Utaminingrum'),
	(43, 41, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 78650, 4, 314600, '', '2018-07-06 12:22:17', 'Tia Utaminingrum'),
	(44, 42, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 157300, 4, 629200, '', '2018-07-06 12:22:45', 'Tia Utaminingrum'),
	(45, 43, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 151250, 4, 605000, '', '2018-07-06 12:23:15', 'Tia Utaminingrum'),
	(46, 44, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 30250, 4, 121000, '', '2018-07-06 12:23:44', 'Tia Utaminingrum'),
	(47, 45, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 37400, 4, 149600, '', '2018-07-06 12:24:15', 'Tia Utaminingrum'),
	(48, 46, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 110000, 4, 440000, '', '2018-07-06 12:24:50', 'Tia Utaminingrum'),
	(49, 47, 4, '2018-07-06', '1619', 15, 'PT. Mitra Putra Jayapratama', 220000, 4, 880000, '', '2018-07-06 12:25:18', 'Tia Utaminingrum'),
	(50, 1, 3, '2018-07-09', '.', 0, '.', 1, 30, 30, 'test', '2018-07-09 11:59:13', 'Nugraha Rahmat H'),
	(51, 13, 4, '2018-07-04', '1620', 15, 'PT. Sali Polapa Bersama', 527670, 90, 47490300, '', '2018-07-09 12:26:51', 'Tia Utaminingrum'),
	(52, 2, 4, '2018-05-02', '1585', 30, 'CV. Laxana', 33000, 100, 3300000, '', '2018-07-11 16:05:21', NULL),
	(53, 3, 4, '2018-05-02', '1585', 30, 'CV. Laxana', 1100, 250, 275000, '', '2018-07-11 16:06:02', NULL);
/*!40000 ALTER TABLE `pengadaan` ENABLE KEYS */;

-- Dumping structure for table barjas.perencanaan
CREATE TABLE IF NOT EXISTS `perencanaan` (
  `Pk_Perencanaan_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TglPengajuanPermintaan` date DEFAULT NULL,
  `Foto` varchar(100) NOT NULL,
  `Perencanaan` varchar(50) DEFAULT NULL,
  `KategoriBarang` varchar(50) DEFAULT NULL,
  `NamaBarang` varchar(100) DEFAULT NULL,
  `KodeBarang` varchar(100) DEFAULT NULL,
  `Merk` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `SpesifikasiLainnya` varchar(100) DEFAULT NULL,
  `HargaPerkiraan` int(11) DEFAULT NULL,
  `Volume` int(11) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `TotalPerkiraan` int(11) DEFAULT NULL,
  `Permintaan` varchar(100) DEFAULT NULL,
  `Peruntukan` varchar(100) DEFAULT NULL,
  `DisetujuiAtauTidak` int(1) DEFAULT NULL,
  `SumberDana` varchar(100) DEFAULT NULL,
  `NamaKegiatan` varchar(50) DEFAULT NULL,
  `KodeRekening` varchar(50) DEFAULT NULL,
  `HargaJadi` int(11) DEFAULT NULL,
  `VolumeJadi` int(11) DEFAULT NULL,
  `SatuanJadi` varchar(50) DEFAULT NULL,
  `TotalJadi` int(11) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `DibuatTgl` datetime DEFAULT NULL,
  `DibuatOleh` varchar(50) DEFAULT NULL,
  `DisetujuiTgl` date DEFAULT NULL,
  `DisetujuiOleh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Perencanaan_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.perencanaan: ~125 rows (approximately)
/*!40000 ALTER TABLE `perencanaan` DISABLE KEYS */;
INSERT INTO `perencanaan` (`Pk_Perencanaan_ID`, `TglPengajuanPermintaan`, `Foto`, `Perencanaan`, `KategoriBarang`, `NamaBarang`, `KodeBarang`, `Merk`, `Type`, `SpesifikasiLainnya`, `HargaPerkiraan`, `Volume`, `Satuan`, `TotalPerkiraan`, `Permintaan`, `Peruntukan`, `DisetujuiAtauTidak`, `SumberDana`, `NamaKegiatan`, `KodeRekening`, `HargaJadi`, `VolumeJadi`, `SatuanJadi`, `TotalJadi`, `Keterangan`, `Status`, `DibuatTgl`, `DibuatOleh`, `DisetujuiTgl`, `DisetujuiOleh`) VALUES
	(1, '2018-04-05', '', 'Insidentil', '8', 'Poster Panduan Piring Makan', '.', '.', '.', '40 x 60 cm', 0, 30, 'Lembar', 0, 'Imas Destiara (Poli Gizi)', 'Media Penyuluhan di PKM Kec. & Kel', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 80300, 30, NULL, 2409000, '', '4', '2018-04-05 11:37:04', 'Fauziah', '2018-04-25', 'Meliance Hexamono.A'),
	(2, '2018-04-17', '', 'Insidentil', '8', 'Balok SKDN', '.', '.', '.', '50 x 70 cm, Bahan art karton', 0, 100, 'Lembar', 0, 'Imas Destiara (Poli Gizi)', 'Perlengkapan untuk Posyandu', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 3300, 100, 'lembar', 330000, '', '8', '2018-04-17 10:35:34', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(3, '2018-04-05', '', 'Insidentil', '8', 'Brosur Stunting', '.', '.', '.', 'Ukuran A4', 0, 250, 'Lembar', 0, 'Imas Destiara (Poli Gizi)', 'Media penyuluhan di Posyandu', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-05 11:38:06', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(4, '2018-04-06', '', 'RKBU', '14', 'Kabel ', '.', 'Eterna', 'NYM', 'Ukuran 2 x 1.5 , 1 Roll 50 mtr', 400000, 1, 'Roll', 400000, 'Bd. Leli Kurniani (Unit Persalinan)', 'Pemasangan stop kontak  1 unit Mesin Cuci dan 2 Unit Kulkas di Unit Persalinan', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 400000, 1, 'roll', 400000, '', '4', '2018-04-06 11:28:34', 'Fauziah', '2018-04-05', 'Meiliance'),
	(5, '2018-04-05', '', 'Insidentil', '14', 'Stop Kontak', '.', 'Philips', '.', '1 Lubang', 20000, 3, 'Buah', 60000, 'Bd. Leli Kurniani (Unit Persalinan)', 'Pemasangan stop kontak untuk 1 unit Mesin Cuci dan 2 Unit Kulkas di Unit Persalinan', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 20000, 3, 'buah', 60000, '', '4', '2018-04-05 11:52:01', 'Fauziah', '2018-04-05', 'Meiliance'),
	(7, '2018-04-06', '', 'Insidentil', '2', 'Tempat Tidur Pasien', '02060201008', 'Gesunde', '.', '190 cm x 65 cm x 85 cm, Head Rest 60 Derajat', 4200000, 1, 'Buah', 4200000, 'Ismail Soleh (PKL Petamburan)', 'Memenuhi standard akreditasi di  ruang tindakan tempat tidur pasein harus ada 2 unit', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 4840000, 1, 'unit', 4840000, '', '4', '2018-04-20 15:00:01', 'Fauziah', '2018-04-17', 'Meliance Hexamono.A'),
	(8, '2018-04-06', '', 'Insidentil', '15', 'Kaca Lemari ', '.', '.', '.', 'Ukuran 41 cm x 64 cm', 0, 2, 'Buah', 0, 'Ismail Soleh (PKL Petamburan)', 'Mengganti kaca lemari yang sudah pecah di Ruang Tindakan', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 495000, 2, 'buah', 990000, '', '8', '2018-04-20 14:57:19', 'Fauziah', '2018-04-17', 'Meliance Hexamono.A'),
	(9, '2018-04-06', '', 'Insidentil', '15', 'Kaca Lemari ', '.', '.', '.', 'Ukuran 39 cm x 115 cm', 0, 2, 'Buah', 0, 'Ismail Soleh (PKL Petamburan)', 'Pemasangan kaca lemari yang kacanya sudah tidak ada di ruang tindakan', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', 495000, 2, 'buah', 990000, '', '8', '2018-04-20 15:01:56', 'Fauziah', '2018-04-17', 'Meliance Hexamono.A'),
	(10, '2018-04-13', 'amies.jpg', 'Insidentil', '4', 'Amies Transport', '.', '.', '.', '1 Pcs berisi tabung cairan agar & Cotton Bud', 10000, 100, 'Pcs', 1000000, 'Andik Fajar Lantika (Surveilans)', 'KLB Difteri', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-23 10:08:59', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(11, '2018-04-17', 'download.jpg', 'Insidentil', '7', 'Kertas Sticker', '.', '.', 'F4', '1 Pak isi 40 Lembar', 40000, 15, 'Unit', 600000, 'Fauziah (Sarpras)', 'Print Barcode Sensus Barang 2018', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-03 10:57:17', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(12, '2018-04-20', '', 'Insidentil', '3', 'Travel First Aid Kit Bag', '.', '.', '.', '.', 110000, 3, 'Set', 330000, 'Theresia Nurhayati (Kesling)', 'Pembentukan Pos UKK pada pekerja informal', 0, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-04-20 14:47:43', 'Fauziah', '2018-05-28', 'Meliance Hexamono.A'),
	(13, '2018-04-25', 'error upload', 'Insidentil', '4', 'Hexagon Syphilis', '.', 'Human', '.', '.', 0, 180, 'Box', 0, 'dr.Herlina (Poli IMS)', ' Laboratorium Karena Stok reagen sudah habis (utk 6 bln)', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, 'disetujui 90 box', '4', '2018-05-16 11:55:08', 'Fauziah', '2018-05-25', 'Meliance Hexamono.A'),
	(14, '2018-04-27', '', 'Insidentil', '7', 'Map Ordner', '0', 'Bantex', '1465', 'Ukuran F4, Warna Hijau', 27500, 60, 'Pcs', 1650000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 15:12:30', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(15, '2018-04-27', '', 'Insidentil', '7', 'Map Ordner', '0', 'Bantex', '1465', 'Ukuran F4, Warna Merah', 27500, 60, 'Pcs', 1650000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 15:12:14', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(16, '2018-04-27', '', 'Insidentil', '7', 'Map Ordner', '0', 'Bantex', '1465', 'Ukuran F4, Warna Biru', 27500, 60, 'Pcs', 1650000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 15:13:59', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(17, '2018-04-27', '', 'Insidentil', '7', 'Sheet Protector ', '0', 'Bantex', '8843', 'Ukuran Folio, 1 Pak isi 100 Lembar', 160000, 27, 'Pack', 4320000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 15:59:23', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(18, '2018-04-27', '', 'Insidentil', '7', 'Box File', '0', 'Bindex', '1034', 'Warna Biru', 22000, 90, 'Buah', 1980000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 15:39:10', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(19, '2018-04-27', '', 'Insidentil', '7', 'Map Business File', '0', 'Felix', '940H-FC', 'Ukuran F4, Warna Biru', 60000, 30, 'Lusin', 1800000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:00:35', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(20, '2018-04-27', '', 'Insidentil', '7', 'Map Business File', '0', 'Felix', '940H-FC', 'Ukuran F4, Warna Merah', 60000, 30, 'Lusin', 1800000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:01:33', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(21, '2018-04-27', '', 'Insidentil', '7', 'Map Business File', '0', 'Felix', '940H-FC', 'Ukuran F4, Warna Hijau', 60000, 30, 'Lusin', 1800000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:02:16', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(22, '2018-04-27', '', 'Insidentil', '7', 'Flashdisk', '0', 'Sandisk', 'Cruzer Blade ', 'Ukuran 8GB', 90000, 9, 'Pcs', 810000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:07:48', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(23, '2018-04-27', 'f4.jpg', 'Insidentil', '7', 'Kertas HVS', '0', 'Bola Dunia', 'F4', '70 Gram', 39000, 150, 'Rim', 5850000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet &  PKM Kec.60 Rim', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-23 11:41:02', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(24, '2018-04-27', '', 'Insidentil', '7', 'Buku Folio', '0', 'Ria / Kuramas', 'Hardcover', 'Isi 100 Lembar', 20000, 100, 'Pcs', 2000000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:14:54', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(25, '2018-04-27', '', 'Insidentil', '7', 'Buku Tulis', '0', 'Sinar Dunia', '0', 'Isi 58 Lembar', 4000, 90, 'Pcs', 360000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:17:55', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(26, '2018-04-27', '', 'Insidentil', '7', 'Buku Expedisi', '0', 'Kuramas', 'Hardcover', 'Isi 100 Lembar', 7500, 30, 'Pcs', 225000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:19:48', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(27, '2018-04-27', '', 'Insidentil', '7', 'Tinta Printer', '0', 'Epson', 'T6641', 'Warna Hitam', 80000, 20, 'Botol', 1600000, 'Akreditasi ', 'PKL Petamburan, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:23:16', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(28, '2018-04-27', '', 'Insidentil', '7', 'Tinta Printer', '0', 'Epson', 'T6642', 'Warna Biru', 80000, 8, 'Botol', 640000, 'Akreditasi ', 'PKL Petamburan, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:27:15', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(29, '2018-04-27', '', 'Insidentil', '7', 'Tinta Printer', '0', 'Epson', 'T6643', 'Warna Magenta', 80000, 8, 'Botol', 640000, 'Akreditasi ', 'PKL Petamburan, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:28:48', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(30, '2018-04-27', '', 'Insidentil', '7', 'Tinta Printer', '0', 'Epson', 'T6644', 'Warna Kuning', 80000, 8, 'Botol', 640000, 'Akreditasi ', 'PKL Petamburan, Karet', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:29:53', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(31, '2018-04-27', '', 'Insidentil', '7', 'Toner', '0', 'HP', 'Black Toner 35A [CB435A]', '0', 1100000, 6, 'Buah', 6600000, 'Akreditasi ', 'PKL Gelora', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-04-27 16:34:43', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(32, '2018-05-08', 'error upload', 'Insidentil', '2', 'Analitical Balance', '.', '.', 'Miligram', '.', 4400000, 4, 'Pcs', 17600000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, 'di approve 1 pcs', '6', '2018-05-08 10:47:19', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(33, '2018-05-08', 'error upload', 'Insidentil', '2', 'Analitical Balance', '.', '.', 'Gram', '.', 4400000, 4, 'Pcs', 17600000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, 'di Approve 1 unit', '4', '2018-05-08 10:47:33', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(34, '2018-05-08', 'error upload', 'Insidentil', '2', 'Batang Pengaduk', '.', '.', '.', '.', 11000, 4, 'Pcs', 44000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:47:48', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(35, '2018-05-08', 'error upload', 'Insidentil', '2', 'Corong', '.', '.', '.', '.', 44000, 4, 'Pcs', 176000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:48:02', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(36, '2018-05-08', 'error upload', 'Insidentil', '2', 'Cawan Penguap', '.', '.', 'Porselen', '.', 33000, 4, 'Pcs', 132000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:49:06', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(37, '2018-05-08', 'error upload', 'Insidentil', '7', 'Gelas Pengukur', '.', '.', 'Ukuran 10 ml', '.', 77000, 4, 'Pcs', 308000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:47:06', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(38, '2018-05-08', 'error upload', 'Insidentil', '2', 'Gelas Pengukur', '.', '.', 'Ukuran 100 ml', '.', 99000, 4, 'Pcs', 396000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:51:22', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(39, '2018-05-08', 'error upload', 'Insidentil', '2', 'Gelas Pengukur', '.', '.', 'Ukuran 250 ml', '.', 231000, 4, 'Pcs', 924000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:53:45', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(40, '2018-05-08', 'error upload', 'Insidentil', '2', 'Gelas Piala', '.', '.', 'Ukuran 100 ml', '.', 99000, 4, 'Pcs', 396000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:53:31', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(41, '2018-05-08', 'error upload', 'Insidentil', '2', 'Gelas Piala', '.', '.', 'Ukuran 500 ml', '.', 165000, 4, 'Pcs', 660000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:57:23', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(42, '2018-05-08', 'error upload', 'Insidentil', '2', 'Gelas Piala', '.', '.', 'Ukuran 1000 ml', '.', 297000, 4, 'Pcs', 1188000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 10:59:46', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(43, '2018-05-08', 'error upload', 'Insidentil', '2', 'Pipet', '.', '.', 'Berskala', '.', 154000, 4, 'Pcs', 616000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 11:08:12', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(44, '2018-05-08', 'error upload', 'Insidentil', '2', 'Spatel logam', '.', '.', '.', '.', 33000, 4, 'Pcs', 132000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 11:09:00', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(45, '2018-05-08', 'error upload', 'Insidentil', '2', 'Thermometer', '.', '.', 'Skala 100', '.', 22000, 4, 'Pcs', 88000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 11:10:27', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(46, '2018-05-08', 'error upload', 'Insidentil', '2', 'Thermometer Digital ', '.', '.', '.', 'Untuk Kulkas', 104500, 4, 'Pcs', 418000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 11:13:48', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(47, '2018-05-08', 'error upload', 'Insidentil', '2', 'Hygrometer Digital', '.', '.', '.', 'Untuk Ruangan', 137500, 4, 'Pcs', 550000, 'Akreditasi ', 'PKL Petamburan, Gelora, Karet, Kp.Bali', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-08 11:14:04', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(48, '2018-05-08', 'Bestman-BF600.png', 'Insidentil', '2', 'Doppler (FHR Detector)', '02080109999', 'Bestman', 'BF-600+', '.', 3100000, 1, 'Unit', 3100000, 'KIA-KB (Sunarti)', 'Pemeriksaan detak jantung janin (Doppler di KIA saat ini hanya ada 1 & kondisi suara doppler tdk jel', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '10', '2018-05-23 11:35:22', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(49, '2018-05-11', '16464212_e2706551-1319-4b90-b6a1-e11ba4342c1e_700_700.jpg', 'Insidentil', '32', 'USB wifi Wireless', '.', 'TP-LINK', 'TL-WN722N', 'With Antenna', 132000, 1, 'Buah', 132000, 'Sarpras (Nugie)', 'Poli Umum (Socket LAN PC Rusak)', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-11 07:41:00', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(50, '2018-05-16', 'images.jpg', 'Insidentil', '15', 'Kardus besar', '.', '.', '.', '.', 15000, 60, 'Buah', 900000, 'PKM Karet Tengsin', 'Pindahan Gedung PKM Karet Tengsin', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-16 08:35:28', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(51, '2018-05-16', 'tali.jpg', 'Insidentil', '15', 'Tali Rafia', '.', '.', 'Gulungan  besar', '.', 25000, 3, 'Buah', 75000, 'PKM Karet Tengsin', 'Pindahan Gedung PKM Karet Tengsin', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-16 08:40:17', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(52, '2018-05-16', 'lakban.jpg', 'Insidentil', '15', 'Lakban Coklat', '.', '.', '.', 'uk. 2 inchi 90 yard', 12500, 10, 'Buah', 125000, 'PKM Karet Tengsin', 'Pindahan Gedung PKM Karet Tengsin', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-16 08:43:12', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(53, '2018-05-16', 'shinpo_150.jpg', 'Insidentil', '15', 'Container Box', '.', 'Shinpo', 'Shinpo  CB 150 ', '.', 275000, 10, 'Buah', 2750000, 'PKM Karet Tengsin', 'Pindahan Gedung PKM Karet Tengsin', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-16 08:49:43', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(54, '2018-05-16', 'shinpo_130.jpg', 'Insidentil', '15', 'Container Box', '.', 'Shinpo', 'Shinpo  CB 130', '.', 190000, 10, 'Buah', 1900000, 'PKM Karet Tengsin', 'Pindahan Gedung PKM Karet Tengsin', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-16 08:55:18', 'Fauziah', '2018-05-17', 'dr Fitria Jusri'),
	(55, '2018-05-18', 'error upload', 'Insidentil', '4', 'Test Strip Urine', '.', '.', '.', '10 L @100 pcs/box', 0, 15, 'Box', 0, 'Indah Fitriani Sari ( Laboratorium)', 'Persediaan stok di Lab', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-18 08:57:06', 'Fauziah', '2018-05-28', 'Meliance Hexamono.A'),
	(56, '2018-05-21', 'shopping.jpg', 'RKBU', '7', 'Refill Correction Tape', '.', 'Faber Castell', 'SR-506', '6m , 5mm', 15000, 30, 'Pcs', 450000, 'Fauziah (Sarpras)', 'Correction Tape Faber Castell tidak ada refilnya di sarpras', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-21 09:11:00', 'Fauziah', '2018-05-28', 'Meliance Hexamono.A'),
	(57, '2018-05-21', 'sketsel-rotan-2.jpg', 'Insidentil', '3', 'Partisi / Pembatas Ruangan', '.', '.', 'rotan sintetis', 'Uk. 80  x 200 cm', 0, 8, 'Buah', 0, 'drg. Warisan ', 'PKM Kebon Melati (depan toilet)', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-21 11:55:35', 'Fauziah', '2018-05-28', 'Meliance Hexamono.A'),
	(58, '2018-05-21', 'tm88v.jpg', 'Insidentil', '24', 'Printer Thermal', '02060305003', 'Epson', 'TM 88 V USB', '.', 5280000, 2, 'Unit', 10560000, 'drg. Warisan ', 'PKM Kebon Melati', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.3.33.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-21 12:20:48', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(59, '2018-05-21', 'spen.jpg', 'Insidentil', '27', 'Tablet', '02060301002', 'Samsung', 'P585Y', 'S Pen 10 inchi', 5865417, 7, 'Unit', 41057919, 'drg. Warisan ', 'PKM Kebon Melati', 0, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.3.33.01', NULL, NULL, NULL, NULL, 'Tidak disetujui karena menggunakan Tablet yg awalnya peruntukkan PKL Petamburan', '8', '2018-05-21 12:27:05', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(60, '2018-05-21', 'aubern.jpg', 'Insidentil', '15', 'Portable Amplifier Wireless', '02070201005', 'Aubern', 'PS-8', 'Dengan Bluetooth, USB dan 2 Mic wireless (Handheld dan Clip On)', 4277218, 10, 'Unit', 42772180, 'drg. Warisan ', 'PKM Kebon Melati', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.3.33.01', NULL, NULL, NULL, NULL, 'Harga satuan berubah agar menjadi barang pakai habis', '8', '2018-05-21 12:33:29', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(61, '2018-05-21', 'led_dell.jpg', 'Insidentil', NULL, 'Monitor ', '02060305002', 'Dell', 'P2314T ', 'LED  23" Touchscreen Monitor HDMI,DisplayPort,VGA', 5600640, 2, 'Unit', 11201280, 'drg. Warisan ', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-21 12:37:33', 'Fauziah', NULL, NULL),
	(62, '2018-05-21', 'ledcore.jpg', 'Insidentil', '9', 'Komputer Mini', '02060303006', 'Intel', 'NUC5CPYH-SW1', 'DUAL CORE LED 19.5"', 5780000, 2, 'Unit', 11560000, 'drg. Warisan ', 'PKM Kebon Melati', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.3.33.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-21 12:43:58', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(63, '2018-05-21', 'win_10.jpg', 'Insidentil', NULL, 'Software', '.', 'Microsoft', 'Windows 10 Pro', '64 BIT', 3300000, 2, 'Buah', 6600000, 'drg. Warisan ', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-21 12:47:04', 'Fauziah', NULL, NULL),
	(64, '2018-05-21', 'mic_pro.jpg', 'Insidentil', NULL, 'Software', '.', 'Microsoft', 'Office 2016 Pro', '.', 2400000, 2, 'Buah', 4800000, 'drg. Warisan ', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-21 12:49:15', 'Fauziah', NULL, NULL),
	(65, '2018-05-22', 'proj.jpg', 'Insidentil', '9', 'Screen Projector', '02070101003', '.', 'Motorized', '200 x 150 cm', 3465000, 1, 'Unit', 3465000, 'drg. Warisan ', 'PKM Kebon Melati', 0, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.3.33.01', NULL, NULL, NULL, NULL, 'Masuk ke rencana TA 2020', '8', '2018-05-23 09:04:39', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(66, '2018-05-22', 'inf.jpg', 'Insidentil', '9', 'Projector', '02070101003', 'Infocus', 'IN112X', '3D-Ready Projeck Blu-Ray & PC-Based 3D Content via HDMI', 5288800, 1, 'Unit', 5288800, 'drg. Warisan ', 'PKM Kebon Melati', 0, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.3.33.01', NULL, NULL, NULL, NULL, 'Masuk ke rencana TA 2020 RKBU', '8', '2018-05-22 07:51:26', '$this->session->MsUser_StaffName', '2018-07-13', 'Meliance Hexamono.A'),
	(67, '2018-05-23', 'ohp.jpg', 'RKBU', '7', 'Spidol ', '.', 'Snowman', 'OHP OPF', 'Warna Hitam', 85000, 1, 'Lusin', 85000, 'Yulia Asman (Imunisasi)', 'Menulis Sertifikat Imuniasi Lanjutan', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-23 11:02:15', '$this->session->MsUser_StaffName', '2018-05-28', 'Meliance Hexamono.A'),
	(68, '2018-05-23', 'Bestman-BF600.png', 'Insidentil', '2', 'Doppler (FHR Detector)', '02080109999', 'Bestman', 'BF-600+', '.', 3100000, 2, 'Unit', 6200000, 'Indah Wiyanti (KIA)', 'Pemeriksaan detak jantung janin (yang lama proofnya rusak)', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-23 11:25:29', '$this->session->MsUser_StaffName', '2018-07-13', 'Meliance Hexamono.A'),
	(69, '2018-05-23', 'a4.jpg', 'RKBU', '7', 'Kertas HVS', '.', 'Bola Dunia', 'A4', '70 Gram', 35000, 30, 'Rim', 1050000, 'Fauziah (Sarpras)', 'Stok Sarpras', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '4', '2018-05-23 11:56:04', '$this->session->MsUser_StaffName', '2018-05-28', 'Meliance Hexamono.A'),
	(70, '2018-05-28', 'error upload', 'Insidentil', '2', 'Bak instrumen', '.', '.', '.', 'uk 20 X 10 cm', 165000, 3, 'Buah', 495000, 'Azhari', 'PKM Kebon Melati', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-28 09:55:18', 'Fauziah', '2018-05-28', 'Meliance Hexamono.A'),
	(71, '2018-05-28', 'error upload', 'Insidentil', '2', 'Bak instrumen', '.', '.', '.', 'uk 30 x 20 cm', 220000, 3, 'Buah', 660000, 'Azhari', 'PKM Kebon Melati', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-05-28 09:55:29', 'Fauziah', '2018-05-28', 'Meliance Hexamono.A'),
	(72, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Baskom 2 buah', '.', '.', '.', 'Stainless Steel', 165000, 1, 'Buah', 165000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:55:45', 'Fauziah', NULL, NULL),
	(73, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Garputala', '.', '.', '.', 'Stainless Steel', 49500, 1, 'Buah', 49500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:55:54', 'Fauziah', NULL, NULL),
	(74, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Gunting Panjang', '.', '.', '.', 'Stainless Steel', 165000, 1, 'Buah', 165000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:56:08', 'Fauziah', NULL, NULL),
	(75, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Head Lamp', '.', '.', '.', '.', 280500, 3, 'Set', 841500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:56:19', 'Fauziah', NULL, NULL),
	(76, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Implan Set', '.', '.', '.', '.', 1650000, 1, 'Set', 1650000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:56:30', 'Fauziah', NULL, NULL),
	(77, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Ishihara Test', '.', '.', '.', '.', 137500, 1, 'Buah', 137500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:56:39', 'Fauziah', NULL, NULL),
	(78, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Iud Kit', '02080109999', '.', '.', '.', 1650000, 1, 'Set', 1650000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:56:48', 'Fauziah', NULL, NULL),
	(79, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Kom tutup', '.', '.', '.', '.', 20350, 1, 'Buah', 20350, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:56:57', 'Fauziah', NULL, NULL),
	(80, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Kom Besar', '.', '.', '.', 'Stainless Steel', 49500, 1, 'Buah', 49500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:57:13', 'Fauziah', NULL, NULL),
	(81, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Kom Kecil', '.', '.', '.', 'Stainless Steel', 38500, 1, 'Buah', 38500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:57:36', 'Fauziah', NULL, NULL),
	(82, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Kontainer ', '.', '.', '25 ltr ', 'Bahan Plastik', 60500, 2, 'Buah', 121000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 09:57:48', 'Fauziah', NULL, NULL),
	(83, '2018-05-28', 'examination-lamp-dyna-halogen-240x300.jpg', 'Insidentil', NULL, 'Lampu Sorot', '.', '.', '.', 'Lampu Halogen Dyna, ada handle tangan', 850000, 1, 'Unit', 850000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:05:52', '$this->session->MsUser_StaffName', NULL, NULL),
	(84, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Lemari arsip', '02060407006', '.', '.', 'dinding besi 4 bantalan besi dan pintu kaca dengan sistim sliding down', 3850000, 5, 'Buah', 19250000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:10:06', '$this->session->MsUser_StaffName', NULL, NULL),
	(85, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Meja Instrumen', '02080101031', '.', '.', 'Stainles Steel bantalan Kaca dan ada roda', 825000, 1, 'Buah', 825000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:11:54', '$this->session->MsUser_StaffName', NULL, NULL),
	(86, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Metlin', '.', '.', '.', '.', 49500, 1, 'Unit', 49500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:12:32', '$this->session->MsUser_StaffName', NULL, NULL),
	(87, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Minor Set', '.', '.', '.', '.', 137500, 1, 'Buah', 137500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:13:10', '$this->session->MsUser_StaffName', NULL, NULL),
	(88, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Nierbeken', '.', '.', '.', '.', 60500, 1, 'Buah', 60500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:14:05', '$this->session->MsUser_StaffName', NULL, NULL),
	(89, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Otoscope', '.', '.', '.', 'Stainless Steel', 1292500, 2, 'Buah', 2585000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:18:06', '$this->session->MsUser_StaffName', NULL, NULL),
	(90, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Spekulum Telinga', '.', '.', '.', 'Stainless Steel', 165000, 1, 'Buah', 165000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:28:22', '$this->session->MsUser_StaffName', NULL, NULL),
	(91, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Sterilisator', '02080101001', '.', '.', 'Stelillisator kering dengan lampu infra red', 3850000, 2, 'Unit', 7700000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:29:29', '$this->session->MsUser_StaffName', NULL, NULL),
	(92, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Tampon Tang', '.', '.', '.', 'Stainless Steel', 60500, 1, 'Buah', 60500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:30:11', '$this->session->MsUser_StaffName', NULL, NULL),
	(93, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Tenakulum', '.', '.', '.', 'Stainless Steel', 85000, 1, 'Buah', 85000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:31:55', '$this->session->MsUser_StaffName', NULL, NULL),
	(94, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Timbangan  Badan Dewasa', '.', '.', '.', 'Digital', 385000, 3, 'Buah', 1155000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:35:36', 'Fauziah', NULL, NULL),
	(95, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Timbangan Bayi', '.', '.', '.', 'Digital,  alas busa dengan pelapis kulit sintetik', 1595000, 1, 'Buah', 1595000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:36:18', '$this->session->MsUser_StaffName', NULL, NULL),
	(96, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Tong Spatel', '.', '.', '.', 'Untuk Dewasa', 60500, 1, 'Buah', 60500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:37:30', '$this->session->MsUser_StaffName', NULL, NULL),
	(97, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Tong Spatel', '.', '.', '.', 'Untuk Anak', 60500, 1, 'Buah', 60500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:38:10', '$this->session->MsUser_StaffName', NULL, NULL),
	(98, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Tromol', '.', '.', '.', 'Stainless Steel', 82500, 1, 'Buah', 82500, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:38:49', '$this->session->MsUser_StaffName', NULL, NULL),
	(99, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Blender Obat', '.', '.', '.', '.', 1925000, 1, 'Set', 1925000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:39:34', '$this->session->MsUser_StaffName', NULL, NULL),
	(100, '2018-05-28', 'error upload', 'Insidentil', NULL, 'Alat pembagi puyer', '.', '.', '.', 'Bahan Plastik', 165000, 1, 'Buah', 165000, 'Azhari', 'PKM Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-05-28 10:40:14', '$this->session->MsUser_StaffName', NULL, NULL),
	(101, '2018-06-04', 'durr_dental.jpg', 'Insidentil', NULL, 'Air Compressor', '02040101018', 'Durr dental', 'Tornado 1', '.', 54000000, 2, 'Unit', 108000000, 'drg. Asniati', 'Poli Gigi ( Kompresor existing sering mengalami kerusakan, dan sparepartnya sudah tidak tersedia)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-06-04 08:41:15', '$this->session->MsUser_StaffName', NULL, NULL),
	(102, '2018-06-28', 'error upload', 'Insidentil', NULL, 'Spanduk', '.', '.', '.', 'Ukuran 3x1 ( Dokcil 1 Buah, PKPR 1 Buah), File sudah di kirim ke email pengadaan.pkmtanahabang@gmail', 0, 2, 'Buah', 0, 'dr. Sandhy Zainal ( UKS)', 'Pembinaan UKS & PKPR Disekolah di bulan Juli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-06-28 09:50:51', 'Fauziah', NULL, NULL),
	(103, '2018-06-28', 'error upload', 'Insidentil', NULL, 'Spanduk', '.', '.', '.', 'Ukuran 4 x 1,5 Mtr ( 1 Buah,  utk PKM Kec ),  Ukuran 3 x 1,5 Mtr ( 5 Buah, utk PKM Kel ), File softc', 0, 6, 'Buah', 0, 'dr. Amalia Fiki (Promkes)', 'Dukungan untuk Asian Games', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-06-28 09:55:33', 'Fauziah', NULL, NULL),
	(104, '2018-07-05', 'error upload', 'Insidentil', NULL, 'Kotak Saran', '.', '.', 'Bahan Acrylic', 'P.25 cm x T.25 cm x L.12.5 cm', 0, 1, 'Buah', 0, 'Febriana Rinda', 'Ruang Tunggu Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-05 10:24:56', '$this->session->MsUser_StaffName', NULL, NULL),
	(105, '2018-07-10', 'Pemasangan-kaca-film-riben.jpg', 'Insidentil', NULL, 'Kaca Film', '.', '.', '80%', '.', 0, 3, 'meter', 0, 'dr.Dwi Maisa', 'Pintu Luar Layanan 24 Jam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-10 10:38:47', 'Fauziah', NULL, NULL),
	(106, '2018-07-10', 'Pemasangan-kaca-film-riben.jpg', 'Insidentil', NULL, 'Kaca Film', '.', '.', '80%', '.', 0, 8, 'meter', 0, 'dr.Dwi Maisa', 'Jendela Poli Tindakan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-10 10:38:56', 'Fauziah', NULL, NULL),
	(107, '2018-07-10', 'Pemasangan-kaca-film-riben.jpg', 'Insidentil', NULL, 'Kaca Film', '.', '.', '80%', '.', 0, 5, 'meter', 0, 'dr.Dwi Maisa', 'Jendela Poli Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-10 10:39:06', 'Fauziah', NULL, NULL),
	(108, '2018-07-10', 'Pemasangan-kaca-film-riben.jpg', 'Insidentil', NULL, 'Kaca Film', '.', '.', '80%', '.', 0, 5, 'meter', 0, 'drg. Asniati', 'Jendela Poli Gigi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-10 10:39:17', 'Fauziah', NULL, NULL),
	(109, '2018-07-10', 'Sertifikat_Caten.jpg', 'Insidentil', '8', 'Sertifkat Calon Pengantin', '.', '.', 'Kertas Buffalo', 'Ukuran A4 ( File Soft copy langsung ke pengadaan)', 0, 2000, 'Lembar', 0, 'Neta Aulia (KIA-KB)', 'Untuk Kelengkapan Persyaratan Calon Pengantin Instruksi Kepala Dinkes DKI No.12 Tahun 2018', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-07-12 10:50:01', 'Fauziah', '2018-07-13', 'Meliance Hexamono.A'),
	(110, '2018-07-10', 'BELDEN.jpg', 'Insidentil', '14', 'KABEL UTP', '.', 'BELDEN', 'CAT 5E', 'KABEL UTP CAT 5E 1 ROLL ', 1600000, 1, 'Unit', 1600000, 'ANDI', 'SARPRAS', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, 'masukan ke list rkbu apbd p 18', '8', '2018-07-10 14:16:59', '$this->session->MsUser_StaffName', '2018-08-02', 'Meliance Hexamono.A'),
	(112, '2018-07-10', 'KONEKTOR_RJ_45.jpg', 'Insidentil', NULL, 'KONKETOR RJ 45', '.', 'AMP ORIGINAL/ BELDEN USA ORIGINAL', 'RJ 45 CAT 5E', 'ISI PERPACK 50 PCS', 165000, 2, 'Pack', 330000, 'ANDI', 'SARPRAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-10 14:39:04', '$this->session->MsUser_StaffName', NULL, NULL),
	(113, '2018-07-19', 'error upload', 'RKBU', NULL, 'Braket Stainless stand LCD touchscreen', '.', '.', 'Standup', 'Stainless', 3200000, 1, 'Unit', 3200000, 'Nugraha', 'Loket', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-19 10:13:16', 'Nugraha Rahmat H', NULL, NULL),
	(114, '2018-07-23', 'error upload', 'Insidentil', NULL, 'Tablet Tambah Darah', '.', '.', '.', '.', 0, 180000, 'Tablet', 0, 'Azhari', 'Gudang Farmasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-23 09:44:08', '$this->session->MsUser_StaffName', NULL, NULL),
	(115, '2018-07-24', '146927213_085fece3-22df-4a66-ae32-de17a636568d_2048_0.jpg', 'Insidentil', '15', 'Timbangan Duduk', '02040310002', 'Crown', '.', 'Ukuran 10 Kg', 0, 1, 'Buah', 0, 'dr. Nina Zulviyanti ', 'Timbangan bahan pangan catering RB', 1, 'BLUD', 'Peningkatan Layanan Umum Daerah', '5.2.2.34.01', NULL, NULL, NULL, NULL, '', '8', '2018-07-24 14:39:21', '$this->session->MsUser_StaffName', '2018-08-21', 'dr Fitria Jusri'),
	(116, '2018-07-26', 'error upload', 'Insidentil', NULL, 'Pivodium Tintur', '.', '.', '20%', 'Cairan botol 200 ml', 0, 2, 'Botol', 0, 'Azhari', 'Gudang Farmasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-26 11:58:36', '$this->session->MsUser_StaffName', NULL, NULL),
	(117, '2018-07-26', 'error upload', 'Insidentil', NULL, 'Hand Sanitizer', '.', '.', '.', 'Cairan botol 250 ml', 0, 25, 'Botol', 0, 'Azhari', 'Gudang Farmasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-26 12:01:39', 'Fauziah', NULL, NULL),
	(118, '2018-07-26', 'error upload', 'Insidentil', NULL, 'Hand Sanitizer', '.', '.', '.', 'Dirigen Uk. 5 Liter', 0, 3, 'Buah', 0, 'Azhari', 'Gudang Farmasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-26 12:01:52', 'Fauziah', NULL, NULL),
	(119, '2018-07-26', 'Label.jpg', 'Insidentil', NULL, 'Label ', '.', 'Tom & Jerry', '114', 'Warna Kuning, Merah, Orange, Hijau , Masing2 warna 7 Pack', 0, 28, 'Pack', 0, 'Indah Wiyanti (KIA)', 'Peta ibu hamil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-07-26 12:12:37', 'Fauziah', NULL, NULL),
	(120, '2018-08-08', 'ikea-nattjasmin-sarung-bantal-50x80-cm-178932084.jpg', 'Insidentil', NULL, 'Sarung Bantal', '.', '.', '.', 'Ukuran 60 x 28 cm', 0, 6, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 15:34:58', 'Fauziah', NULL, NULL),
	(121, '2018-08-08', 'sheet.jpg', 'Insidentil', NULL, 'Pocket Sheet Protector', '.', 'Bantex', 'Ukuran F4', '1 Pack isi 100 Sheet', 0, 25, 'Pack', 0, 'Faizah (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 15:35:22', 'Fauziah', NULL, NULL),
	(122, '2018-08-08', 'plang.jpg', 'Insidentil', NULL, 'Plang Petunjuk Arah Puskesmas', '.', '.', '.', 'Bahan Besi / Stainless', 0, 3, 'Buah', 0, 'Cahya (PKL Kbn Melati)', 'Petunjuk arah agar masyarakat mengetahui lokasi Puskesmas Kebon Melati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 15:40:06', '$this->session->MsUser_StaffName', NULL, NULL),
	(123, '2018-08-08', 'apar.jpg', 'Insidentil', NULL, 'APAR CO2', '02060207001', '.', '.', 'Ukuran 3Kg', 0, 1, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 18:38:37', '$this->session->MsUser_StaffName', NULL, NULL),
	(124, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Lampu Exit Evakuasi', '.', '.', '.', '.', 0, 3, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 18:44:57', '$this->session->MsUser_StaffName', NULL, NULL),
	(125, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Triase', '.', '.', '.', '4 warna, Untuk 34 anak tangga @50 cm', 0, 70, 'meter', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 18:49:45', '$this->session->MsUser_StaffName', NULL, NULL),
	(126, '2018-08-08', 'titik.jpg', 'Insidentil', NULL, 'Plang Titik Kumpul', '.', '.', '.', 'Bahan Besi / Stainless', 0, 1, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 18:52:02', '$this->session->MsUser_StaffName', NULL, NULL),
	(127, '2018-08-08', 'petunjuk_apar.jpg', 'Insidentil', NULL, 'Simbol Penunjuk APAR', '.', '.', '.', '.', 0, 6, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 18:54:28', '$this->session->MsUser_StaffName', NULL, NULL),
	(128, '2018-08-08', 'gun.jpg', 'Insidentil', NULL, 'Petunjuk Penggunaan APAR', '.', '.', '.', '.', 0, 6, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 18:58:20', 'Fauziah', NULL, NULL),
	(129, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Tempat Sampah', '.', '.', '.', 'Ukuran  40 Liter', 0, 4, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Di halaman Puskesmas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:01:52', '$this->session->MsUser_StaffName', NULL, NULL),
	(130, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Tempat Sampah Medis', '.', '.', '.', 'Ukuran 10 Liter', 0, 4, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:05:38', '$this->session->MsUser_StaffName', NULL, NULL),
	(131, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Tempat Sampah Non Organik', '.', '.', '.', 'Ukuran  40 Liter', 0, 4, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Akreditasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:06:32', '$this->session->MsUser_StaffName', NULL, NULL),
	(132, '2018-08-08', 'pegas.jpg', 'Insidentil', NULL, 'Timbangan Pegas', '02040310012', '.', '.', 'Ukuran di atas 25Kg', 0, 1, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Untuk menimbang sampah medis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:09:31', '$this->session->MsUser_StaffName', NULL, NULL),
	(133, '2018-08-08', 'hand.jpg', 'Insidentil', NULL, 'Botol Hand Sanitizer', '.', '.', '.', '.', 0, 10, 'Buah', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Untuk di depan Poli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:11:09', '$this->session->MsUser_StaffName', NULL, NULL),
	(134, '2018-08-08', 'sarung.jpg', 'Insidentil', NULL, 'Sarung Tangan Rumah Tangga', '.', '.', '.', '.', 0, 1, 'Set', 0, 'Theresia Nurhayati (PKL Petamburan)', 'PKL Petamburan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:13:50', 'Fauziah', NULL, NULL),
	(136, '2018-08-08', 'boat.jpg', 'Insidentil', NULL, 'Sepatu Boat', '.', '.', '.', '.', 0, 1, 'Set', 0, 'Theresia Nurhayati (PKL Petamburan)', 'Untuk mengangkut sampah medis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:17:45', '$this->session->MsUser_StaffName', NULL, NULL),
	(137, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Formulir Permohonan Barang / Jasa', '.', '.', '.', 'Ukuran 1/2 Folio', 0, 18000, 'Lembar', 0, 'Idham (Gudang)', 'Stok Gudang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:29:52', '$this->session->MsUser_StaffName', NULL, NULL),
	(138, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Karpet Puzzle', '.', '.', '.', 'Warna Polos', 0, 4, 'Set', 0, 'drg. Hera', 'PKL Gelora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:31:12', '$this->session->MsUser_StaffName', NULL, NULL),
	(139, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Mainan Anak', '.', '.', '.', 'Kuda Kudaan, Bahan Karet', 0, 2, 'Buah', 0, 'drg. Hera', 'PKL Gelora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:32:51', '$this->session->MsUser_StaffName', NULL, NULL),
	(140, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Rak Buku', '02060104002', 'Ikea', '.', 'Bahan Epoxy', 0, 1, 'Unit', 0, 'drg. Hera', 'PKL Gelora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:35:04', '$this->session->MsUser_StaffName', NULL, NULL),
	(141, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Buku', '.', '.', '.', 'Bacaan untuk anak-anak', 0, 15, 'Buah', 0, 'drg. Hera', 'PKL Gelora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:35:48', '$this->session->MsUser_StaffName', NULL, NULL),
	(142, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Stiker Dinding', '.', '.', '.', '.', 0, 3, 'Set', 0, 'drg. Hera', 'PKL Gelora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:36:45', '$this->session->MsUser_StaffName', NULL, NULL),
	(143, '2018-08-08', 'error upload', 'Insidentil', NULL, 'Rak Sepatu', '02060104002', 'Ace hardware', '.', 'Bahan Besi ', 0, 1, 'Buah', 0, 'drg. Hera', 'PKL Gelora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-08 19:37:49', '$this->session->MsUser_StaffName', NULL, NULL),
	(144, '2018-08-24', 'gantungan_baju.jpg', 'Insidentil', NULL, 'Gantungan Baju', '.', '.', 'Besi', '.', 0, 2, 'Lusin', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 14:57:06', '$this->session->MsUser_StaffName', NULL, NULL),
	(145, '2018-08-24', '16164751_B.jpg', 'Insidentil', NULL, 'Jemuran Baju', '02060206999', 'Glory Home', 'Samudera', 'P.180 cm x T.140 cm x L.86 cm', 0, 1, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:01:27', '$this->session->MsUser_StaffName', NULL, NULL),
	(146, '2018-08-24', 'jepitan_baju.jpg', 'Insidentil', NULL, 'Jepitan Baju', '.', 'Nagata', '024', '.', 0, 2, 'Lusin', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:02:38', '$this->session->MsUser_StaffName', NULL, NULL),
	(147, '2018-08-24', 'bak.jpg', 'Insidentil', NULL, 'Bak Plastik', '.', 'Shinpo', '622', 'Ukuran  38 Liter', 0, 1, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:03:51', '$this->session->MsUser_StaffName', NULL, NULL),
	(148, '2018-08-24', 'Setrika-PHILIPS-1172.jpg', 'Insidentil', NULL, 'Seterika', '02060206035', 'Philips', 'HD 1172', '.', 0, 1, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:05:27', '$this->session->MsUser_StaffName', NULL, NULL),
	(149, '2018-08-24', 'kispray.jpg', 'RKBU', NULL, ' Pelicin-Pewangi-Pelembut Linen', '.', 'Kisspray', 'Refill 300 ml', '.', 0, 24, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:08:44', '$this->session->MsUser_StaffName', NULL, NULL),
	(150, '2018-08-24', 'mode.jpg', 'Insidentil', NULL, 'Keranjang Baju', '.', 'Modena', '.', '.', 0, 2, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:10:30', '$this->session->MsUser_StaffName', NULL, NULL),
	(151, '2018-08-24', 'sikat.jpg', 'Insidentil', NULL, 'Sikat Baju', '.', 'Bagus', 'Gagang Kayu', '.', 0, 1, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:11:25', '$this->session->MsUser_StaffName', NULL, NULL),
	(152, '2018-08-24', 'alas.jpg', 'Insidentil', NULL, 'Alas Seterika', '.', '.', 'Busa Inoac, cover katun', '.', 0, 1, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:12:39', '$this->session->MsUser_StaffName', NULL, NULL),
	(153, '2018-08-24', 'HAN_Baskom_Stainless_Tebal_Jumbo.jpg', 'Insidentil', NULL, 'Baskom Sedang', '.', '.', 'Stainless ', 'Ukuran Diameter 25 cm', 0, 3, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:14:17', 'Fauziah', NULL, NULL),
	(154, '2018-08-24', 'WASKOM_18_CM.png', 'Insidentil', NULL, 'Baskom Kecil', '.', '.', 'Stainless ', 'Ukuran Diameter 18 cm', 0, 3, 'Buah', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:16:03', '$this->session->MsUser_StaffName', NULL, NULL),
	(155, '2018-08-24', 'df.jpg', 'Insidentil', NULL, 'Selang & Regulator Kompor Gas', '02060205005', 'Kopana', '.', '.', 0, 1, 'Set', 0, 'Bd. Leli Kurniani (Unit Persalinan)', 'Kebutuhan Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2018-08-24 15:25:31', 'Fauziah', NULL, NULL);
/*!40000 ALTER TABLE `perencanaan` ENABLE KEYS */;

-- Dumping structure for table barjas.persediaankeluar
CREATE TABLE IF NOT EXISTS `persediaankeluar` (
  `pk_persediaanekeluar_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_persediaanmaster_id` int(11) NOT NULL DEFAULT '0',
  `volume` int(11) NOT NULL DEFAULT '0',
  `satuan` int(11) DEFAULT NULL,
  `SDA` varchar(50) DEFAULT NULL,
  `Tujuan` varchar(50) DEFAULT NULL,
  `namapenerima` varchar(50) DEFAULT NULL,
  `dibuatoleh` varchar(50) DEFAULT NULL,
  `dibuattgl` date DEFAULT NULL,
  PRIMARY KEY (`pk_persediaanekeluar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table barjas.persediaankeluar: ~2 rows (approximately)
/*!40000 ALTER TABLE `persediaankeluar` DISABLE KEYS */;
INSERT INTO `persediaankeluar` (`pk_persediaanekeluar_id`, `fk_persediaanmaster_id`, `volume`, `satuan`, `SDA`, `Tujuan`, `namapenerima`, `dibuatoleh`, `dibuattgl`) VALUES
	(1, 19, 20, 6, 'test', 'test', 'test', 'Super User or System', '2018-09-14'),
	(2, 19, 5, 3, 'test', 'test', 'test', 'Super User or System', '2018-09-14');
/*!40000 ALTER TABLE `persediaankeluar` ENABLE KEYS */;

-- Dumping structure for table barjas.persediaanmaster
CREATE TABLE IF NOT EXISTS `persediaanmaster` (
  `pk_persediaanmaster_id` int(11) NOT NULL AUTO_INCREMENT,
  `namabarang` varchar(50) DEFAULT NULL,
  `spesifikasi` varchar(50) DEFAULT NULL,
  `volume` int(11) NOT NULL DEFAULT '0',
  `satuan` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL DEFAULT '0',
  `ppn` int(11) NOT NULL DEFAULT '0',
  `batch` varchar(50) DEFAULT NULL,
  `namapt` varchar(50) DEFAULT NULL,
  `ed` varchar(50) DEFAULT NULL,
  `dibuatoleh` varchar(50) DEFAULT NULL,
  `dibuattgl` datetime DEFAULT NULL,
  `diubaholeh` varchar(50) DEFAULT NULL,
  `diubahtgl` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_persediaanmaster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.persediaanmaster: ~3 rows (approximately)
/*!40000 ALTER TABLE `persediaanmaster` DISABLE KEYS */;
INSERT INTO `persediaanmaster` (`pk_persediaanmaster_id`, `namabarang`, `spesifikasi`, `volume`, `satuan`, `harga`, `ppn`, `batch`, `namapt`, `ed`, `dibuatoleh`, `dibuattgl`, `diubaholeh`, `diubahtgl`) VALUES
	(19, 'Amoxilin', 'Amoxilin', 1005, 10, 3000000, 11, 'test', 'Kalbe', 'test', 'Super User or System', '2018-08-31 11:08:11', 'Super User or System', '2018-09-14 13:58:43'),
	(20, 'Perinter Thermal', 'werwe', 246, 8, 160000000, 11, 'werwe', 'werw', 'wrwer', 'Super User or System', '2018-09-13 14:01:38', NULL, NULL),
	(21, 'test1', 'sdfsdf', 1000, 1, 160000000, 11, 'sdfsd', 'sdfsd', 'sdasd', 'Super User or System', '2018-09-13 14:15:01', NULL, NULL);
/*!40000 ALTER TABLE `persediaanmaster` ENABLE KEYS */;

-- Dumping structure for table barjas.persediaanmasuk
CREATE TABLE IF NOT EXISTS `persediaanmasuk` (
  `pk_persediaanmasuk_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_persediaanmaster_id` int(11) NOT NULL DEFAULT '0',
  `volume` int(11) NOT NULL DEFAULT '0',
  `satuan` int(11) DEFAULT NULL,
  `penerima` varchar(50) DEFAULT NULL,
  `penerimatgl` date DEFAULT NULL,
  `dibuatoleh` varchar(50) DEFAULT NULL,
  `dibuattgl` date DEFAULT NULL,
  PRIMARY KEY (`pk_persediaanmasuk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.persediaanmasuk: ~3 rows (approximately)
/*!40000 ALTER TABLE `persediaanmasuk` DISABLE KEYS */;
INSERT INTO `persediaanmasuk` (`pk_persediaanmasuk_id`, `fk_persediaanmaster_id`, `volume`, `satuan`, `penerima`, `penerimatgl`, `dibuatoleh`, `dibuattgl`) VALUES
	(25, 19, 20, 3, 'Ari', '2018-09-14', 'Super User or System', '2018-09-14'),
	(26, 19, 10, 3, 'Ari', '2018-09-14', 'Super User or System', '2018-09-14'),
	(27, 20, 234, 7, 'Ari', '2018-09-14', NULL, '2018-09-14');
/*!40000 ALTER TABLE `persediaanmasuk` ENABLE KEYS */;

-- Dumping structure for table barjas.sarpras
CREATE TABLE IF NOT EXISTS `sarpras` (
  `Pk_Sarpras_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Perencanaan_Id` int(11) NOT NULL DEFAULT '0',
  `BarangDisalurkanKe` varchar(50) DEFAULT NULL,
  `VolumeBarang` varchar(50) DEFAULT NULL,
  `PenanggungJawabBarang` varchar(50) DEFAULT NULL,
  `DibuatOleh` varchar(50) DEFAULT NULL,
  `DibuatTgl` datetime DEFAULT NULL,
  PRIMARY KEY (`Pk_Sarpras_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table barjas.sarpras: ~0 rows (approximately)
/*!40000 ALTER TABLE `sarpras` DISABLE KEYS */;
/*!40000 ALTER TABLE `sarpras` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
