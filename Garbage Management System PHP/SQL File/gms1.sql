-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2024 at 11:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555557, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbin`
--

CREATE TABLE `tblbin` (
  `ID` int(5) NOT NULL,
  `BinID` varchar(50) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `LoadType` varchar(100) DEFAULT NULL,
  `CyclePeriod` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `DriverAssignee` varchar(150) DEFAULT NULL,
  `AssignDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbin`
--

INSERT INTO `tblbin` (`ID`, `BinID`, `Area`, `Locality`, `Landmark`, `LoadType`, `CyclePeriod`, `Address`, `DriverAssignee`, `AssignDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'Amarpalii Sadan', 'Hazirpur', 'near gomti river', 'Medium', 'Alternate', 'hjkhjkdhjkbvuit\r\nyivrtyiureyruvityiuy', 'vams123', '2022-07-18 11:05:10', 'Garbage collected', 'Completed', '2022-07-27 06:30:00'),
(2, 'B-123', 'gjhg', 'jhghj', 'jhgjhg', 'High', 'Daily', 'jkhkj', 'vams123', '2022-07-18 11:06:27', 'completed', 'Completed', '2022-07-27 10:53:08'),
(3, 'bin007', 'pathalam', 'pathalam', 'pathalam', 'Medium', 'Daily', 'sad', 'vams123', '2024-04-03 11:46:23', 'yes', 'Completed', '2024-04-04 05:36:03'),
(4, 'bin0078', 'alva', 'alva', 'alva', 'High', 'Daily', 'alva', 'vams123', '2024-04-04 08:18:00', 's', 'On The Way', '2024-04-04 08:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomtracking`
--

CREATE TABLE `tblcomtracking` (
  `ID` int(5) NOT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomtracking`
--

INSERT INTO `tblcomtracking` (`ID`, `ComplainNumber`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 526529361, 'Assign to driver', 'Approved', '2022-07-25 14:03:07'),
(2, 526529361, 'Driver is on the way', 'On the way', '2022-07-26 11:57:34'),
(3, 526529361, 'On the way', 'On the way', '2022-07-26 12:06:36'),
(4, 526529361, 'Completed', 'Completed', '2022-07-26 12:10:31'),
(5, 699612318, 'your complain hass been approved', 'Approved', '2022-07-27 10:42:01'),
(6, 699612318, 'On the way for collecting the garbage', 'On the way', '2022-08-14 06:18:28'),
(7, 792381847, 'Assign to driver', 'Approved', '2022-08-14 12:21:18'),
(8, 792381847, 'On the way for pickup garbage', 'On the way', '2022-08-14 12:22:54'),
(9, 792381847, 'Completed', 'Completed', '2022-08-14 12:23:12'),
(10, 635960117, 'asd', 'Approved', '2024-04-03 10:47:30'),
(11, 699612318, 'asd', 'Completed', '2024-04-03 10:48:18'),
(12, 877745694, 'rahul', 'Approved', '2024-04-03 10:49:29'),
(13, 139194623, 'asd', 'Approved', '2024-04-03 10:58:14'),
(14, 139194623, 'asd', 'On the way', '2024-04-03 10:59:51'),
(15, 574810699, 'zxc', 'Approved', '2024-04-03 11:00:55'),
(16, 139194623, 'ads', 'Completed', '2024-04-03 11:11:30'),
(17, 515762782, 'asd', 'Approved', '2024-04-04 06:43:08'),
(18, 574810699, 'asd', 'On the way', '2024-04-04 06:44:19'),
(19, 260233349, 'fast and furious', 'Approved', '2024-04-04 09:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `ID` int(10) NOT NULL,
  `DriverID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`ID`, `DriverID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'vams123', 'TEST', 4654654654, 'rahul123@gmail.com', 'J-234, near reliance mayur vihar new delhi', 'f925916e2754e5e03f75dd58a5733251', '2022-07-01 13:29:39'),
(4, 'vams125', 'Mahesh Kumar', 9879789799, 'mahesh@gmail.com', 'hkjhjkhkjhuyifhkjwehfk\r\njkljkljrkawteae5t', '202cb962ac59075b964b07152d234b70', '2022-07-05 05:19:18'),
(6, 'test123', 'John Dore', 1234567890, 'johndoe@gmail.com', 'New Delhi 110001', 'f925916e2754e5e03f75dd58a5733251', '2022-07-19 17:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbllodgedcomplain`
--

CREATE TABLE `tbllodgedcomplain` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Photo` varchar(250) DEFAULT NULL,
  `Note` mediumtext DEFAULT NULL,
  `ComplainDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `AssignTo` varchar(100) DEFAULT NULL,
  `AssignDate` date DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `WasteType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllodgedcomplain`
--

INSERT INTO `tbllodgedcomplain` (`ID`, `UserID`, `ComplainNumber`, `Area`, `Locality`, `Landmark`, `Address`, `Photo`, `Note`, `ComplainDate`, `Remark`, `Status`, `AssignTo`, `AssignDate`, `UpdationDate`, `WasteType`) VALUES
(1, 1, 526529361, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:11', NULL),
(2, 2, 699612318, 'Kalyanpuri', 'jgjhghjgjhg', 'nera oppulent mall', 'K-0890, fghy,\r\nuytu,New Delhi', '006d51ca52039abf7231ba02bba35d681658493414.jpg', 'There is more than one week no one come to pic this garbage', '2022-07-22 12:36:54', 'asd', 'Completed', 'vams123', '2022-07-27', '2024-04-03 10:48:18', NULL),
(3, 2, 526529312, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:16', NULL),
(4, 3, 792381847, 'XYZ Street', 'ABC Locality', 'NA', 'A1232 Secor 5 Noida', '2c9e7ec0fc8c2cfbb3828177e70dfe1a1660479585.png', 'NA', '2022-08-14 12:19:45', 'Completed', 'Completed', 'vams123', '2022-08-14', '2022-08-14 12:23:13', NULL),
(5, 3, 139194623, 'pathalam', 'pathalam', 'pathalam', 'pathalam', 'c231d10482d210da97e721b322a027fb1712135077.jpg', '', '2024-04-03 09:04:37', 'ads', 'Completed', 'vams123', '2024-04-02', '2024-04-03 11:11:30', NULL),
(6, 3, 574810699, 'qwe', 'qwe', 'qwe', 'qwe', '70dadd9e54c959d79bb36a55b03c208e1712135187.png', '', '2024-04-03 09:06:27', 'asd', 'On the way', 'vams123', '2024-04-03', '2024-04-04 06:44:19', NULL),
(7, 3, 877745694, 'qwee', 'pathalam', 'qwee', 'qwee', '70dadd9e54c959d79bb36a55b03c208e1712137577.png', '', '2024-04-03 09:46:17', 'rahul', 'Approved', '', '2024-04-03', '2024-04-03 10:49:29', NULL),
(8, 3, 635960117, 'qwee', 'qwee', 'pathalam', 'qwee', '70dadd9e54c959d79bb36a55b03c208e1712137940.png', 'qwee', '2024-04-03 09:52:20', 'asd', 'Approved', 'vams125', '2024-04-03', '2024-04-03 10:47:30', 'qwee'),
(9, 3, 515762782, 'new', 'new', 'new', 'new', '70dadd9e54c959d79bb36a55b03c208e1712142367.png', 'new', '2024-04-03 11:06:07', 'asd', 'Approved', 'vams123', '2024-04-04', '2024-04-04 06:43:08', 'biodegradable'),
(10, 3, 260233349, 'alva', 'alva', 'alva', 'alva', '70dadd9e54c959d79bb36a55b03c208e1712212959.png', '', '2024-04-04 06:42:39', 'fast and furious', 'Approved', 'vams123', '2024-04-04', '2024-04-04 09:29:11', 'biodegradable');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><b>\"Garbage Management System \"</b>&nbsp;</span><div><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">It helps garbage collector to maintain and view lodged complain against garbage.</span></font></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `ID` int(10) NOT NULL,
  `StaffID` varchar(255) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`ID`, `StaffID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(8, '1', 'basil', 1111111111, 'basilshah.cm@gmail.com', 'basil', '6862efb4028e93ac23a6f90a9055bae8', '2024-04-02 13:09:49'),
(9, 'basil', 'basil', 1234565675, 'basil@gmail.com', 'asd', '6862efb4028e93ac23a6f90a9055bae8', '2024-04-03 10:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `BinID` varchar(250) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BinID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'on the way', 'On The Way', '2022-07-27 10:54:01'),
(2, 'Bin-123', 'Garbage collected', 'Completed', '2022-07-27 10:53:56'),
(3, 'B-123', 'otw', 'On The Way', '2022-07-27 10:53:22'),
(4, 'B-123', 'completed', 'Completed', '2022-07-27 10:53:08'),
(5, 'bin007', 'asd', 'On The Way', '2024-04-03 11:46:45'),
(6, 'bin007', 'yes', 'Completed', '2024-04-04 05:36:03'),
(7, 'bin0078', 's', 'On The Way', '2024-04-04 08:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Moshin', 'mos123', 7894566123, 'mos@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 11:16:53'),
(2, 'test', 'test123', 7946547897, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 12:34:42'),
(3, 'Joh Doe', 'Johndoe123', 1231231230, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-14 12:18:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbin`
--
ALTER TABLE `tblbin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomtracking`
--
ALTER TABLE `tblcomtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllodgedcomplain`
--
ALTER TABLE `tbllodgedcomplain`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbin`
--
ALTER TABLE `tblbin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcomtracking`
--
ALTER TABLE `tblcomtracking`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbllodgedcomplain`
--
ALTER TABLE `tbllodgedcomplain`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
