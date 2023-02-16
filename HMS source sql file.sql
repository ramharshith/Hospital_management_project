-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 12:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--
CREATE DATABASE IF NOT EXISTS `hms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(6, 'orthopedic', 1, 2, 500, '2022-10-19', '8:00 PM', '2022-10-16 14:18:26', 1, 1, NULL),
(7, 'pediatrics', 3, 2, 1200, '2022-10-21', '8:00 PM', '2022-10-16 14:19:10', 1, 1, NULL),
(8, 'oncology', 5, 2, 805, '2022-10-21', '8:00 PM', '2022-10-16 14:20:15', 1, 1, NULL),
(10, 'cardiology', 6, 3, 2500, '2022-10-25', '6:00 PM', '2022-10-16 14:23:02', 1, 1, NULL),
(11, 'anesthetics', 8, 2, 600, '2022-10-19', '5:00 PM', '2022-10-17 15:24:16', 1, 1, NULL),
(12, 'dentistry', 7, 2, 2000, '2022-12-20', '11:15 AM', '2022-10-20 05:38:27', 1, 1, NULL),
(13, 'dentistry', 7, 2, 2000, '2022-10-27', '11:45 AM', '2022-10-20 06:09:37', 1, 1, NULL),
(14, 'gynaecology', 4, 2, 700, '2022-12-20', '4:30 PM', '2022-10-20 10:49:07', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'orthopedic', 'harshi lingam', 'vizag', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2022-10-16 13:36:02'),
(2, 'pathology', 'harshith uppala', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '2022-10-16 13:36:48'),
(3, 'pediatrics', 'komali satya', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '2022-10-16 13:38:05'),
(4, 'gynaecology', 'venkat kullad', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '2022-10-16 13:38:49'),
(5, 'oncology', 'tom cruise', 'Gurugram', '805', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '2022-10-16 13:40:00'),
(6, 'cardiology', 'praveen seera', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '2022-10-16 13:40:28'),
(7, 'dentistry', 'jessi mikao', 'New Delhi India', '2000', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2022-10-16 13:40:53'),
(8, 'anesthetics', 'volta nikao', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2022-10-16 13:41:29'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10'),
(12, 'dentistry', 'suryateja', 'vizag', '3000', 987654321, 'ruppala@gitam.in', 'e807f1fcf82d132f9bb018ca6738a19f', '2022-10-20 10:47:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

DROP TABLE IF EXISTS `doctorslog`;
CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-10-16 13:43:35', NULL, 0),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-16 13:44:24', '16-10-2022 07:45:01 PM', 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-16 15:42:23', NULL, 1),
(23, 4, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-17 15:40:05', '17-10-2022 09:23:55 PM', 1),
(24, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-17 15:54:03', NULL, 0),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-17 15:54:07', '17-10-2022 09:25:06 PM', 1),
(26, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-18 07:43:53', '18-10-2022 01:24:21 PM', 1),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-20 05:36:09', '20-10-2022 11:07:48 AM', 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-20 06:31:50', NULL, 1),
(29, NULL, 'avatiku@gitam.in', 0x3a3a3100000000000000000000000000, '2022-10-20 07:29:59', NULL, 0),
(30, 11, 'avattiku@gitam.in', 0x3a3a3100000000000000000000000000, '2022-10-20 07:30:21', '20-10-2022 01:00:40 PM', 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-20 10:10:24', '20-10-2022 03:40:41 PM', 1),
(32, 12, 'ruppala@gitam.in', 0x3a3a3100000000000000000000000000, '2022-10-20 10:47:15', '20-10-2022 04:17:27 PM', 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-20 10:47:34', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

DROP TABLE IF EXISTS `doctorspecilization`;
CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'orthopedic', '2022-10-17 15:30:30', '2022-10-17 15:31:41'),
(2, 'pathology', '2016-12-28 06:38:12', '2022-10-16 13:30:59'),
(3, 'pediatrics', '2016-12-28 06:38:48', '2022-10-16 13:31:25'),
(4, 'gynaecology', '2016-12-28 06:39:26', '2022-10-16 13:31:51'),
(5, 'oncology', '2016-12-28 06:39:51', '2022-10-16 13:32:09'),
(6, 'cardiology', '2016-12-28 06:40:08', '2022-10-16 13:32:32'),
(7, 'dentistry', '2016-12-28 06:41:18', '2022-10-16 13:32:50'),
(9, 'anesthetics', '2016-12-28 07:37:39', '2022-10-16 13:34:27'),
(10, 'Dermatologist', '2019-11-10 18:36:36', '2022-10-17 15:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `doctor status`
--

DROP TABLE IF EXISTS `doctor status`;
CREATE TABLE `doctor status` (
  `emp_id` int(11) NOT NULL,
  `doc_type` varchar(20) NOT NULL,
  `short_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor status`
--

INSERT INTO `doctor status` (`emp_id`, `doc_type`, `short_name`) VALUES
(1, 'permanent01', 'harshi'),
(3, 'permanent03', 'komali'),
(4, 'permanent04', 'kullad'),
(7, 'permanent07', 'milkao'),
(8, 'trainee08', 'volta'),
(6, 'training06', 'praveen'),
(5, 'visiting05', 'tom');

-- --------------------------------------------------------

--
-- Table structure for table `outform`
--

DROP TABLE IF EXISTS `outform`;
CREATE TABLE `outform` (
  `form_no` varchar(20) NOT NULL,
  `p_id` int(10) DEFAULT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `room_id` varchar(50) DEFAULT NULL,
  `checkout` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outform`
--

INSERT INTO `outform` (`form_no`, `p_id`, `emp_id`, `room_id`, `checkout`) VALUES
('form_01', 1, '02', 'r_02', '2022-06-03'),
('form_02', 2, '05', 'r_01', '2022-08-15'),
('form_03', 4, '04', NULL, NULL),
('form_04', 4, '03', 'r_03', '2022-08-23'),
('form_05', 6, '06', 'r_06', '2022-08-31'),
('form_06', 7, '07', 'r_08', NULL),
('form_07', 3, '03', NULL, NULL),
('form_08', 8, '08', 'r_07', '2002-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `room_id` varchar(50) NOT NULL,
  `room_type` char(50) NOT NULL,
  `room_cost` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_type`, `room_cost`) VALUES
('r_01', 'deluxe', 1500),
('r_02', 'deluxe', 1500),
('r_03', 'deluxe', 1500),
('r_04', 'emergency', 3000),
('r_05', 'private', 7000),
('r_06', 'private', 7000),
('r_07', 'deluxe', 1500),
('r_08', 'deluxe', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

DROP TABLE IF EXISTS `tblcontactus`;
CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'done', '2022-10-17 15:20:17', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

DROP TABLE IF EXISTS `tblmedicalhistory`;
CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

DROP TABLE IF EXISTS `tblpatient`;
CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 2, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2022-10-16 13:49:11'),
(3, 3, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2022-10-16 13:49:17'),
(4, 4, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2022-10-16 13:49:26'),
(5, 5, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'he has throat carcinoma', '2019-11-10 18:49:24', '2022-10-16 13:55:00'),
(6, 6, 'sang tae', 979689584, 'sangtae@gmail.com', 'male', 'asbdfkf', 50, 'no', '2022-10-16 13:50:56', '2022-10-16 13:51:12'),
(7, 7, 'ban ki moon', 979867584, 'ban@gmail.com', 'male', 'qwertyasdf', 34, 'No', '2022-10-16 13:52:35', '2022-10-16 13:51:41'),
(8, 7, 'surya', 77574858587, 'surya@gmail.com', 'male', 'vizag', 19, 'No', '2022-10-16 13:54:06', '2022-10-16 13:52:50'),
(9, 4, 'help', 98765443, 'kam@gamil.com', 'male', 'phulka', 0, 'none', '2022-10-17 15:41:49', NULL),
(10, 7, 'HELLO', 98765443, 'harshithuppala03@gmail.com', 'male', 'NONE', 23, 'NONE', '2022-10-20 05:36:48', NULL),
(11, 7, 'shreya', 8877765643, 'sawtdyrfu@gmail.com', 'female', 'qwerrtyyu', 67, 'none', '2022-10-20 06:32:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-16 14:16:10', NULL, 0),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-16 14:17:15', '16-10-2022 07:47:59 PM', 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-16 14:18:07', '16-10-2022 07:52:13 PM', 1),
(28, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-16 14:22:27', '16-10-2022 07:53:13 PM', 1),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-17 15:23:25', '17-10-2022 08:57:33 PM', 1),
(30, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-18 07:54:31', NULL, 0),
(31, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-18 07:54:36', NULL, 1),
(32, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 05:35:28', '20-10-2022 11:05:57 AM', 1),
(33, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 05:37:55', '20-10-2022 11:24:41 AM', 1),
(34, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 05:55:18', NULL, 1),
(35, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 06:09:00', '20-10-2022 12:01:25 PM', 1),
(36, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 10:10:07', '20-10-2022 03:40:15 PM', 1),
(37, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 10:13:24', NULL, 1),
(38, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-20 10:48:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '2022-10-18 08:03:49'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorId` (`doctorId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`,`doctorName`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`,`specilization`);

--
-- Indexes for table `doctor status`
--
ALTER TABLE `doctor status`
  ADD PRIMARY KEY (`doc_type`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `outform`
--
ALTER TABLE `outform`
  ADD PRIMARY KEY (`form_no`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Docid` (`Docid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `doctor status`
--
ALTER TABLE `doctor status`
  ADD CONSTRAINT `doctor status_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `doctors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `outform`
--
ALTER TABLE `outform`
  ADD CONSTRAINT `outform_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD CONSTRAINT `tblpatient_ibfk_1` FOREIGN KEY (`Docid`) REFERENCES `doctors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
