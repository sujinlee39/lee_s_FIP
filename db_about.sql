-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2019 at 04:56 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_about`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`ID`, `Name`) VALUES
(1, 'Skills'),
(2, 'Code'),
(3, 'Tools');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_skill`
--

CREATE TABLE `tbl_category_skill` (
  `ID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_skill`
--

INSERT INTO `tbl_category_skill` (`ID`, `categoryID`, `skillID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill`
--

CREATE TABLE `tbl_skill` (
  `ID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_skill`
--

INSERT INTO `tbl_skill` (`ID`, `Name`) VALUES
(1, 'Web Design'),
(2, 'UX/UI'),
(3, 'Graphic Design'),
(4, 'Motion Design'),
(5, 'Video Editing'),
(6, 'HTML5'),
(7, 'CSS3'),
(8, 'Sass'),
(9, 'Javascript'),
(10, 'PHP'),
(11, 'Photoshop'),
(12, 'Illustrator'),
(13, 'InDesign'),
(14, 'After Effects'),
(15, 'Cinema 4D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work`
--

CREATE TABLE `tbl_work` (
  `ID` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_work`
--

INSERT INTO `tbl_work` (`ID`, `title`, `image`) VALUES
(1, 'Bootcamp', 'bootcamp.jpg'),
(2, 'Wine Bottle Mashup', 'mashup.jpg'),
(3, 'Organ Donation', 'organ.jpg'),
(4, 'Infographic Poster', 'info.jpg'),
(5, 'HouseCom ThermoSecurity', 'hackathon.jpg'),
(6, 'POP Display', 'pop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workinfo`
--

CREATE TABLE `tbl_workinfo` (
  `ID` int(11) NOT NULL,
  `workID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(4) NOT NULL,
  `tools` varchar(70) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_workinfo`
--

INSERT INTO `tbl_workinfo` (`ID`, `workID`, `name`, `year`, `tools`, `description`) VALUES
(1, 1, 'Bootcamp', '2019', 'Illustrator, Photoshop, After Effects, HTML5, Sass, Javascript', 'Building a full stack one-page website with group members.'),
(2, 2, 'Wine Bottle Mashup', '2019', 'Illustrator, Photoshop', 'Wine Bottle Mashup using image and label design.'),
(3, 3, 'Organ Donation', '2019', 'Illustrator, Photoshop', 'For the organ donation project, we have researched a lot to create thoughtful theme of general wellness for people to attached their feelings. Overall, the theme colour as red, green, and white. Also, our team made the mockup for the package, shirt, brochure and sell sheet as well as website mockup.'),
(4, 4, 'Infographic Poster', '2019', 'Illustrator, HTML, Sass, Javascript', 'This project was about making infographic posters for design and building it as a one-page responsive website to use the database and bringing on the client-side page.'),
(5, 5, 'HouseCom ThermoSecurity', '2019', 'Illustrator, Photoshop, InDesign, HTML, Sass, Javascript', 'As this project took about 48hr to make all the full stack responsive web page. All the team members work hard to make it out of best. Generally, design a one-page feature web page for ThermoSecurity product and also build it in Cinema 4D and mockup the product as real as it is. Overly, done with design, front-end, and back-end as well the database shows up on the page.'),
(6, 6, 'POP Display', '2019', 'Photoshop, Cinema 4D', 'Building a 3D model of Arbora* product and making the pop display for free standing and counter display. As free-standing display wholes more than 40 products and counter display wholes more than 8 products. For the free-standing display use the actual design of the product to have design consistently.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_category_skill`
--
ALTER TABLE `tbl_category_skill`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_work`
--
ALTER TABLE `tbl_work`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_workinfo`
--
ALTER TABLE `tbl_workinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_category_skill`
--
ALTER TABLE `tbl_category_skill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_work`
--
ALTER TABLE `tbl_work`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_workinfo`
--
ALTER TABLE `tbl_workinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
