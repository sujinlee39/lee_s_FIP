-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2019 at 04:22 PM
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
  `image` varchar(30) NOT NULL DEFAULT 'default.jpg',
  `year` varchar(4) NOT NULL,
  `tools` varchar(70) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_workinfo`
--

INSERT INTO `tbl_workinfo` (`ID`, `workID`, `name`, `image`, `year`, `tools`, `description`) VALUES
(1, 1, 'Bootcamp', 'bootcamp.jpg', '2019', 'Illustrator, Photoshop, After Effects, HTML5, Sass, Javascript', 'Building a full stack one-page website with group members. It was about making our start-up company website. As a group, we thought about making a web-development company called, \"float: left\". At first, the logo was simple as the actually CSS font but we thought it might need more colour and tone to it so that is how our logo come out. Overall, we design and build this top to bottom and also, made the video using After Effects.'),
(2, 2, 'Wine Bottle Mashup', 'mashup.jpg', '2019', 'Illustrator, Photoshop', 'For this design project, it was getting a logo from the actual logo exiting in real life and changing the beer logo or wine logo. As myself, pick out \"The New York Times\" and it felt more like wine than beer so decided to make wine bottle mash-up. Took pictures of a wine bottle at home with a white background and reflected the floor. Try hard to get the tone right with using white light as well. Overall, the picture turns out nicely. Use Photoshop to edit and made a label on illustrator. Got some free stock images to put more depth into magazine feelings.'),
(3, 3, 'Organ Donation', 'organ.jpg', '2019', 'Illustrator, Photoshop', 'For the organ donation project, we have researched a lot to create thoughtful theme of general wellness for people to attached their feelings. Overall, the theme colour as red, green, and white. Also, our team made the mockup for the package, shirt, brochure and sell sheet as well as website mockup.'),
(4, 4, 'Infographic Poster', 'info.jpg', '2019', 'Illustrator, HTML, Sass, Javascript', 'This project was about making infographic posters for design and building it as a one-page responsive website to use the database and bringing on the client-side page.'),
(5, 5, 'HouseCom ThermoSecurity', 'hackathon.jpg', '2019', 'Illustrator, Photoshop, InDesign, HTML, Sass, Javascript', 'As this project took about 48hr to make all the full stack responsive web page. All the team members work hard to make it out of best. Generally, design a one-page feature web page for ThermoSecurity product and also build it in Cinema 4D and mockup the product as real as it is. Overly, done with design, front-end, and back-end as well the database shows up on the page.'),
(6, 6, 'POP Display', 'pop.jpg', '2019', 'Photoshop, Cinema 4D', 'Building a 3D model of Arbora* product and making the pop display for free standing and counter display. As free-standing display wholes more than 40 products and counter display wholes more than 8 products. For the free-standing display use the actual design of the product to have design consistently.');

--
-- Indexes for dumped tables
--

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
