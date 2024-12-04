-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 11:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `external_users`
--

CREATE TABLE `external_users` (
  `intuser_ID` varchar(10) NOT NULL,
  `company_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `external_users`
--

INSERT INTO `external_users` (`intuser_ID`, `company_name`) VALUES
('EU0945', 'GLS Groups'),
('EU2001', 'Zemco Extra'),
('EU2301', 'MoneyCare Solutions'),
('EU2841', 'VCS Groups'),
('EU7512', 'LifeCare Pvt Ltd'),
('EU8410', 'A2Z Learning solutio'),
('EU8451', 'ABC Pvt Ltd'),
('EU9944', 'InfoTech Pvt Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `internal_users`
--

CREATE TABLE `internal_users` (
  `intuser_ID` varchar(10) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `internal_users`
--

INSERT INTO `internal_users` (`intuser_ID`, `dept_name`) VALUES
('IU2201', 'Testing'),
('IU7221', 'Testing'),
('IU7512', 'Testing'),
('IU7844', 'Testing'),
('IU7894', 'Programming'),
('IU8841', 'Programming'),
('IU9945', 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_team`
--

CREATE TABLE `maintenance_team` (
  `Mteam_ID` varchar(10) NOT NULL,
  `Mteam_name` varchar(20) DEFAULT NULL,
  `Mteam_Leader` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `maintenance_team`
--

INSERT INTO `maintenance_team` (`Mteam_ID`, `Mteam_name`, `Mteam_Leader`) VALUES
('M1021', 'MTeam Alpha', 'Mark lynn'),
('M1022', 'MTeam Beta', 'Sophie Clark'),
('M1023', 'Mteam Gama', 'David Jack'),
('M1024', 'Mteam Ranger', 'Eva Jack'),
('M1025', 'Mteam Star', 'Simon Stalk');

-- --------------------------------------------------------

--
-- Table structure for table `problem_allocation_report`
--

CREATE TABLE `problem_allocation_report` (
  `allocation_ID` varchar(10) NOT NULL,
  `problem_ID` varchar(10) DEFAULT NULL,
  `Mteam_ID` varchar(10) DEFAULT NULL,
  `QAteam_ID` varchar(10) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'with maintenance'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `problem_allocation_report`
--

INSERT INTO `problem_allocation_report` (`allocation_ID`, `problem_ID`, `Mteam_ID`, `QAteam_ID`, `priority`, `status`) VALUES
('A1011', 'P1011', 'M1024', 'QA021', 'high', 'with maintenance'),
('A1012', 'P1012', 'M1022', 'QA021', 'high', 'with maintenance'),
('A1013', 'P1013', 'M1021', 'QA021', 'Medium', 'with maintenance'),
('A1014', 'P1014', 'M1021', 'QA022', 'Low', 'with maintenance'),
('A1015', 'P1015', 'M1021', 'QA022', 'Low', 'with maintenance'),
('A1016', 'P1016', 'M1021', 'QA022', 'Medium', 'with maintenance'),
('A1017', 'P1017', 'M1024', 'QA023', 'high', 'with maintenance'),
('A1018', 'P1018', 'M1024', 'QA023', 'Medium', 'with maintenance'),
('A1019', 'P1019', 'M1024', 'QA023', 'Medium', 'with maintenance'),
('A1020', 'P1020', 'M1021', 'QA021', 'Low', 'with maintenance'),
('A1021', 'P1021', 'M1023', 'QA023', 'Medium', 'Fixed'),
('A1022', 'P1022', 'M1023', 'QA021', 'high', 'Fixed'),
('A1023', 'P1023', 'M1023', 'QA022', 'medium', 'Fixed'),
('A1024', 'P1024', 'M1022', 'QA023', 'Medium', 'with maintenance'),
('A1025', 'P1025', 'M1022', 'QA021', 'medium', 'with maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `problem_report`
--

CREATE TABLE `problem_report` (
  `problem_ID` varchar(10) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `subm_date` date DEFAULT NULL,
  `user_ID` varchar(10) DEFAULT NULL,
  `version_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `problem_report`
--

INSERT INTO `problem_report` (`problem_ID`, `description`, `subm_date`, `user_ID`, `version_ID`) VALUES
('P1011', 'Software is not able to retrieve correct results.New data is not getting updated in the stock', '2023-10-12', 'EU0945', 'AS1.3.1'),
('P1012', 'Software accuracy while counting the steps is poor.It is not providing accurate results.', '2024-01-01', 'EU2301', 'SU1.2.1'),
('P1013', 'Software getting too much pop ups. It is getting crashed frequently.', '2024-01-01', 'EU2001', 'A2Z1.2.1'),
('P1014', 'Software getting crashed too much.Throughput timeis much more.', '2024-01-02', 'EU8451', 'A2Z1.2.1'),
('P1015', 'Software is not opening properly, it is not responding well. Not able to open PDF files.', '2023-11-02', 'EU8451', 'A2Z1.2.1'),
('P1016', 'Not able to book tickets properly. software is getting crashed and taking too long.', '2023-12-05', 'EU2301', 'P2F1.2.0'),
('P1017', 'Not able to detect malwares. Asking for frequent updates.', '2023-10-22', 'IU7221', 'FH1.2.1'),
('P1018', 'Creating cookie files and restricting other softwares functions.', '2023-12-02', 'IU7221', 'FH1.2.1'),
('P1019', 'Taking too long to respond. Getting crashed automatically.', '2023-12-02', 'IU9945', 'LP1.3.1'),
('P1020', 'Many of the features are not working. Not able to apply latch tool. Picture highlighting option is n', '2024-01-02', 'IU8841', 'PC1.3.1'),
('P1021', 'software is not able to access .doc or .odf files.', '2024-01-02', 'IU7894', 'A2Z1.2.2'),
('P1022', 'Software is not able to split pdf files.It is not converting image file into pdf.', '2023-05-02', 'EU8451', 'AR1.2.0'),
('P1023', 'Software is crashing automatically.', '2023-12-02', 'EU8451', 'AR1.2.0'),
('P1024', 'Software is not able to link with other devices. It is not showing correct heartbeat count', '2023-12-01', 'EU2301', 'SU1.2.1'),
('P1025', 'Not able to login into software,authorization issue keeps on occuring. Not showing the current inven', '2023-12-01', 'IU9945', 'LS1.3.1');

-- --------------------------------------------------------

--
-- Table structure for table `qa_team`
--

CREATE TABLE `qa_team` (
  `QAteam_ID` varchar(10) NOT NULL,
  `QAteam_name` varchar(20) DEFAULT NULL,
  `QAteam_Leader` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `qa_team`
--

INSERT INTO `qa_team` (`QAteam_ID`, `QAteam_name`, `QAteam_Leader`) VALUES
('QA021', 'QATeam Alpha', 'Carel John'),
('QA022', 'QAteam Beta', 'Jenney Clark'),
('QA023', 'QAteam Gama', 'Jack Jordan');

-- --------------------------------------------------------

--
-- Table structure for table `software_maintainedby`
--

CREATE TABLE `software_maintainedby` (
  `Mteam_ID` varchar(10) NOT NULL,
  `version_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `software_maintainedby`
--

INSERT INTO `software_maintainedby` (`Mteam_ID`, `version_ID`) VALUES
('M1021', 'A2Z1.2.1'),
('M1021', 'A2Z1.2.3'),
('M1021', 'LT1.3.1'),
('M1021', 'P2F1.2.0'),
('M1021', 'PC1.3.1'),
('M1021', 'PC1.3.2'),
('M1022', 'LS1.3.1'),
('M1022', 'PE1.3.1'),
('M1022', 'PE1.3.2'),
('M1022', 'SU1.2.1'),
('M1022', 'SU1.2.2'),
('M1022', 'TN1.3.0'),
('M1023', 'A2Z1.2.2'),
('M1023', 'AR1.2.0'),
('M1023', 'AR1.2.1'),
('M1023', 'LT1.3.0'),
('M1023', 'TN1.3.1'),
('M1024', 'AS1.3.1'),
('M1024', 'FH1.2.1'),
('M1024', 'LP1.3.1'),
('M1024', 'LS1.3.0'),
('M1025', 'FH1.2.2'),
('M1025', 'PC1.3.3'),
('M1025', 'PE1.3.3'),
('M1025', 'SU1.2.3');

-- --------------------------------------------------------

--
-- Table structure for table `software_products`
--

CREATE TABLE `software_products` (
  `PIN` varchar(10) NOT NULL,
  `software_name` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `No_of_versions` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `software_products`
--

INSERT INTO `software_products` (`PIN`, `software_name`, `description`, `No_of_versions`) VALUES
('A2Z512', 'A2Z Reader', 'Online Reading software', 3),
('AR1025', 'Allin1 Reader', 'To create, edit, modify and split PDF files', 2),
('AS5261', 'Allin1 Solutions', 'Inventory management software', 1),
('FH1234', 'Fast Heal', 'Antivirus and firewall software', 2),
('LP0123', 'LetsPlay', 'Online Gaming software', 1),
('LS0234', 'Lifecare solutions', 'Hospital Management System', 2),
('LT8512', 'Learn Together', 'Online Learning software', 2),
('P2F023', 'Pay2Fly', 'Air Ticket Booking Management Software', 1),
('PC7412', 'Picasa', 'Online picture and video editor', 3),
('PE8521', 'Picture Editor', 'Picture editor and collage maker software', 3),
('SU5891', 'StepUp', 'To record workout activites and stepcounts', 3),
('TN0234', 'TeachNext', 'Library Management System', 2);

-- --------------------------------------------------------

--
-- Table structure for table `software_usedby`
--

CREATE TABLE `software_usedby` (
  `user_ID` varchar(10) NOT NULL,
  `version_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `software_usedby`
--

INSERT INTO `software_usedby` (`user_ID`, `version_ID`) VALUES
('EU0945', 'AS1.3.1'),
('EU2001', 'A2Z1.2.1'),
('EU2001', 'LT1.3.0'),
('EU2001', 'PC1.3.1'),
('EU2301', 'P2F1.2.0'),
('EU2301', 'SU1.2.1'),
('EU2301', 'SU1.2.2'),
('EU2841', 'LT1.3.1'),
('EU2841', 'PE1.3.1'),
('EU2841', 'PE1.3.2'),
('EU2841', 'TN1.3.1'),
('EU7512', 'LS1.3.0'),
('EU7512', 'SU1.2.2'),
('EU8410', 'TN1.3.0'),
('EU8451', 'A2Z1.2.1'),
('EU8451', 'AR1.2.0'),
('EU9944', 'TN1.3.1'),
('IU7221', 'FH1.2.1'),
('IU7221', 'SU1.2.3'),
('IU7512', 'A2Z1.2.3'),
('IU7512', 'AR1.2.1'),
('IU7844', 'AR1.2.0'),
('IU7844', 'PE1.3.3'),
('IU7894', 'A2Z1.2.2'),
('IU7894', 'FH1.2.2'),
('IU8841', 'PC1.3.3'),
('IU9945', 'LP1.3.1'),
('IU9945', 'LS1.3.1');

-- --------------------------------------------------------

--
-- Table structure for table `software_versions`
--

CREATE TABLE `software_versions` (
  `version_ID` varchar(10) NOT NULL,
  `version_name` varchar(20) DEFAULT NULL,
  `version_type` varchar(20) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `PIN` varchar(10) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `reg_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `software_versions`
--

INSERT INTO `software_versions` (`version_ID`, `version_name`, `version_type`, `release_date`, `PIN`, `reg_date`, `reg_no`) VALUES
('A2Z1.2.1', 'A2Z Reader 1.2.1', 'Released', '2022-10-10', 'A2Z512', '2022-11-11', 1253468),
('A2Z1.2.2', 'A2Z Reader 1.2.2', 'Released', '2023-04-04', 'A2Z512', '2023-05-11', 1252155),
('A2Z1.2.3', 'A2Z Reader 1.2.3', 'Under Development', NULL, 'A2Z512', NULL, NULL),
('AR1.2.0', 'Allin1 Reader 1.2.0', 'Released', '2022-04-04', 'AR1025', '2022-05-12', 5124681),
('AR1.2.1', 'Allin1 Reader 1.2.1', 'Released', '2023-05-18', 'AR1025', '2023-06-06', 7845126),
('AS1.3.1', 'Allin1 Solutions 1.3', 'Released', '2022-04-04', 'AS5261', '2023-10-12', 8954126),
('FH1.2.1', 'Fast Heal 1.2.1', 'Released', '2023-09-11', 'FH1234', '2023-10-12', 8541269),
('FH1.2.2', 'Fast Heal 1.2.2', 'Under Development', NULL, 'FH1234', NULL, NULL),
('LP1.3.1', 'LetsPlay 1.3.1', 'Released', '2023-07-07', 'LP0123', '2023-10-12', 8451267),
('LS1.3.0', 'LifeCare Solutions 1', 'Released', '2022-09-11', 'LS0234', '2023-10-12', 1548952),
('LS1.3.1', 'LifeCare solutions 1', 'Under Development', NULL, 'LS0234', NULL, NULL),
('LT1.3.0', 'Learn Together 1.3.0', 'Released', '2022-05-06', 'LT8512', '2022-06-12', 8956231),
('LT1.3.1', 'Learn Together 1.3.1', 'Released', '2023-05-05', 'LT8512', '2023-04-10', 5124632),
('P2F1.2.0', 'Pay2Fly 1.2.0', 'Released', '2023-07-07', 'P2F023', '2023-10-12', 4451220),
('PC1.3.1', 'Picasa 1.3.1', 'Released', '2022-10-08', 'PC7412', '2022-11-10', 5412894),
('PC1.3.2', 'Picasa 1.3.2', 'Released', '2023-12-30', 'PC7412', '2024-01-01', 1122335),
('PC1.3.3', 'Picasa 1.3.3', 'Under Development', NULL, 'PC7412', NULL, NULL),
('PE1.3.1', 'Picture Editor 1.3.1', 'Released', '2022-06-10', 'PE8521', '2022-10-10', 5412899),
('PE1.3.2', 'Picture Editor 1.3.2', 'Released', '2023-12-12', 'PE8521', '2024-01-03', 1122384),
('PE1.3.3', 'Picture Editor 1.3.3', 'Under Development', NULL, 'PE8521', NULL, NULL),
('SU1.2.1', 'StepUp 1.2.1', 'Released', '2022-06-13', 'SU5891', '2022-10-23', 8546123),
('SU1.2.2', 'StepUp 1.2.2', 'Released', '2023-12-11', 'SU5891', '2024-01-03', 7848126),
('SU1.2.3', 'StepUp 1.2.3', 'Under Development', NULL, 'SU5891', NULL, NULL),
('TN1.3.0', 'TeachNext 1.3.0', 'Released', '2022-06-06', 'TN0234', '2022-06-12', 8966231),
('TN1.3.1', 'TeachNext 1.3.1', 'Released', '2023-12-05', 'TN0234', '2024-01-02', 8941236);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` varchar(10) NOT NULL,
  `user_Fname` varchar(20) DEFAULT NULL,
  `user_Mname` varchar(20) DEFAULT NULL,
  `user_Lname` varchar(20) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL CHECK (octet_length(`phone_no`) = 10),
  `user_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_Fname`, `user_Mname`, `user_Lname`, `phone_no`, `user_type`) VALUES
('EU0945', 'Trassey', 'Kinley', 'David', '7884561245', 'External'),
('EU2001', 'Carla', NULL, 'Allen', '7742113335', 'External'),
('EU2301', 'Jully', NULL, 'Camaron', '7922113335', 'External'),
('EU2841', 'Olie', 'Bob', 'Jemmey', '7894500100', 'External'),
('EU7512', 'Arthur', 'M', 'Jack', '9894561001', 'External'),
('EU8410', 'Oliver', 'Mark', 'Freddie', '8488824500', 'External'),
('EU8451', 'Saisha', 'E', 'George', '8456124500', 'External'),
('EU9944', 'Samual', NULL, 'Allen', '8894561005', 'External'),
('IU2201', 'James', NULL, 'Coolie', '7954061245', 'Internal'),
('IU7221', 'Edward', 'Emma', 'Grace', '7894561245', 'Internal'),
('IU7512', 'Faisal', 'M', 'Saeed', '7894561001', 'Internal'),
('IU7844', 'Sarah', 'Eva', 'Allen', '7894561005', 'Internal'),
('IU7894', 'Mark', 'M', 'Davis', '7894561230', 'Internal'),
('IU8841', 'Noah', NULL, 'Jackson', '7894500123', 'Internal'),
('IU9945', 'Sarah', 'K', 'Darwin', '7994561245', 'Internal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_users`
--
ALTER TABLE `external_users`
  ADD PRIMARY KEY (`intuser_ID`);

--
-- Indexes for table `internal_users`
--
ALTER TABLE `internal_users`
  ADD PRIMARY KEY (`intuser_ID`);

--
-- Indexes for table `maintenance_team`
--
ALTER TABLE `maintenance_team`
  ADD PRIMARY KEY (`Mteam_ID`);

--
-- Indexes for table `problem_allocation_report`
--
ALTER TABLE `problem_allocation_report`
  ADD PRIMARY KEY (`allocation_ID`),
  ADD KEY `problem_ID` (`problem_ID`),
  ADD KEY `Mteam_ID` (`Mteam_ID`),
  ADD KEY `QAteam_ID` (`QAteam_ID`);

--
-- Indexes for table `problem_report`
--
ALTER TABLE `problem_report`
  ADD PRIMARY KEY (`problem_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `version_ID` (`version_ID`);

--
-- Indexes for table `qa_team`
--
ALTER TABLE `qa_team`
  ADD PRIMARY KEY (`QAteam_ID`);

--
-- Indexes for table `software_maintainedby`
--
ALTER TABLE `software_maintainedby`
  ADD PRIMARY KEY (`Mteam_ID`,`version_ID`),
  ADD KEY `version_ID` (`version_ID`);

--
-- Indexes for table `software_products`
--
ALTER TABLE `software_products`
  ADD PRIMARY KEY (`PIN`);

--
-- Indexes for table `software_usedby`
--
ALTER TABLE `software_usedby`
  ADD PRIMARY KEY (`user_ID`,`version_ID`),
  ADD KEY `version_ID` (`version_ID`);

--
-- Indexes for table `software_versions`
--
ALTER TABLE `software_versions`
  ADD PRIMARY KEY (`version_ID`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD KEY `PIN` (`PIN`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `external_users`
--
ALTER TABLE `external_users`
  ADD CONSTRAINT `external_users_ibfk_1` FOREIGN KEY (`intuser_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE;

--
-- Constraints for table `internal_users`
--
ALTER TABLE `internal_users`
  ADD CONSTRAINT `internal_users_ibfk_1` FOREIGN KEY (`intuser_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE;

--
-- Constraints for table `problem_allocation_report`
--
ALTER TABLE `problem_allocation_report`
  ADD CONSTRAINT `problem_allocation_report_ibfk_1` FOREIGN KEY (`problem_ID`) REFERENCES `problem_report` (`problem_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `problem_allocation_report_ibfk_2` FOREIGN KEY (`Mteam_ID`) REFERENCES `maintenance_team` (`Mteam_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `problem_allocation_report_ibfk_3` FOREIGN KEY (`QAteam_ID`) REFERENCES `qa_team` (`QAteam_ID`) ON DELETE CASCADE;

--
-- Constraints for table `problem_report`
--
ALTER TABLE `problem_report`
  ADD CONSTRAINT `problem_report_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`),
  ADD CONSTRAINT `problem_report_ibfk_2` FOREIGN KEY (`version_ID`) REFERENCES `software_versions` (`version_ID`);

--
-- Constraints for table `software_maintainedby`
--
ALTER TABLE `software_maintainedby`
  ADD CONSTRAINT `software_maintainedby_ibfk_1` FOREIGN KEY (`Mteam_ID`) REFERENCES `maintenance_team` (`Mteam_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `software_maintainedby_ibfk_2` FOREIGN KEY (`version_ID`) REFERENCES `software_versions` (`version_ID`) ON DELETE CASCADE;

--
-- Constraints for table `software_usedby`
--
ALTER TABLE `software_usedby`
  ADD CONSTRAINT `software_usedby_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `software_usedby_ibfk_2` FOREIGN KEY (`version_ID`) REFERENCES `software_versions` (`version_ID`) ON DELETE CASCADE;

--
-- Constraints for table `software_versions`
--
ALTER TABLE `software_versions`
  ADD CONSTRAINT `software_versions_ibfk_1` FOREIGN KEY (`PIN`) REFERENCES `software_products` (`PIN`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
