-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 02:02 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hack`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminid` text NOT NULL,
  `adminpass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminid`, `adminpass`) VALUES
(1, 'thinkdifferent', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `admin_gov data`
--

CREATE TABLE `admin_gov data` (
  `Reg_no` varchar(50) NOT NULL,
  `Holiday_homes_name` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Predefined database of govt registered holiday homes';

-- --------------------------------------------------------

--
-- Table structure for table `available_rooms`
--

CREATE TABLE `available_rooms` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `holiday_home` text NOT NULL,
  `AL` varchar(10) NOT NULL,
  `AH` varchar(10) NOT NULL,
  `BL` varchar(10) NOT NULL,
  `BH` varchar(10) NOT NULL,
  `CL` varchar(10) NOT NULL,
  `CH` varchar(10) NOT NULL,
  `DL` varchar(10) NOT NULL,
  `DH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `available_rooms`
--

INSERT INTO `available_rooms` (`id`, `reg_no`, `holiday_home`, `AL`, `AH`, `BL`, `BH`, `CL`, `CH`, `DL`, `DH`) VALUES
(1, '1458965', 'Central Govt. Touring Officers Hostel, Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore', '2', '3', '1', '2', '3', '3', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `holiday_home` text NOT NULL,
  `booking_id` text NOT NULL,
  `employee_name` text NOT NULL,
  `bsd` int(11) NOT NULL,
  `bsm` int(11) NOT NULL,
  `bsy` int(11) NOT NULL,
  `bed` int(11) NOT NULL,
  `bem` int(11) NOT NULL,
  `bey` int(11) NOT NULL,
  `room_type` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `people_acc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `holiday_home`, `booking_id`, `employee_name`, `bsd`, `bsm`, `bsy`, `bed`, `bem`, `bey`, `room_type`, `quantity`, `people_acc`) VALUES
(1, 'Central Govt. Touring Officers Hostel, Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore', '102456952', 'Midhat Shah', 29, 3, 2017, 31, 3, 2017, 'AL', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `U_id` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Holiday_homes_name` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Reg_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `emid` text NOT NULL,
  `pass` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `grade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emid`, `pass`, `name`, `email`, `mobile`, `grade`) VALUES
(1, '123456', '0000', 'Rushikesh Akhare', 'thinkdifferent2355@gmail.com', '7972240540', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `list_govt`
--

CREATE TABLE `list_govt` (
  `Reg_no` varchar(40) NOT NULL,
  `Holiday_homes_name` varchar(100) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Contact_no` varchar(15) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nearby_cities`
--

CREATE TABLE `nearby_cities` (
  `Destination` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Distance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nrs`
--

CREATE TABLE `nrs` (
  `ID` int(11) NOT NULL,
  `Nearest Railway Station` varchar(255) DEFAULT NULL,
  `nearest_city` text NOT NULL,
  `holiday_home` varchar(255) DEFAULT NULL,
  `city` text NOT NULL,
  `distance` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nrs`
--

INSERT INTO `nrs` (`ID`, `Nearest Railway Station`, `nearest_city`, `holiday_home`, `city`, `distance`) VALUES
(1, 'Agra Cantonment Railway Station, Idgah Colony, Agra, Uttar Pradesh, India', 'Agra', 'Holiday Home, Agra Cantt, Idgah Colony, Agra, Uttar Pradesh, India', 'Agra', '4 kms'),
(2, 'Ajmer Junction Railway Station, Ajmer, Rajasthan, India', 'Ajmer', 'Madar Railway Station, Ajmer, Rajasthan, India', 'Ajmer', '7 kms'),
(3, 'Amritsar Junction, Guru Anjan Nagar, Amritsar,  Punjab', 'Amritsar', 'Central Government Touring Officers’ Hostel, 2/1, Ram Tirath Nagar, Army Recruitment Centre, Amritsar', 'Amritsar', '2.8km'),
(4, 'Bangalore Cantonment, Cantonment Railway Station Rd, Cantonment Railway Quarters, Vasanth Nagar, Bengaluru, Karnataka ', 'Banglore', 'Central Govt. Touring Officers Hostel, Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore', 'Banglore', '11.4km'),
(5, 'Bangalore Cantonment, Cantonment Railway Station Rd, Cantonment Railway Quarters, Vasanth Nagar, Bengaluru, Karnataka ', 'Banglore', 'Visvesvaraya Guest House,Koramangala, Bangalore- 560034 17 th Main, II-Block, Behind Kendriya Sadan, (Near Koramangal Water Tank) (Koramangala)', 'Banglore', '9.7km'),
(6, 'Bhavbhuti Marg, Kamla Market, Ajmeri Gate, New Delhi', 'New Delhi', 'New Delhi (West Kidwai Nagar) ', 'New Delhi', '8.1km'),
(7, 'Bhopal Junction, Navbahar Colony, Bhopal, Madhya Pradesh ', 'Bhopal', 'Central Government Touring Officers’ Hostel, 1-Nirman Sadan, 52A, Arera Hills, Bhopal', 'Bhopal', '5.9km'),
(8, 'Chandigarh Railway Station, Mauli Jagran, Daria, Chandigarh', 'Chandigarh', 'Central Government Touring Officers’ Hostel, Sector 7B, Chandigarh', 'Chandigarh', '6.9km'),
(9, 'Chennai Central, Kannappar Thidal, Periyamet, Station Rd, Kannappar Thidal, Periyamet, Chennai, Tamil Nadu', 'Chennai', 'Touring Officers’ Hostel, General Pool Residential Complex, Basant Nagar, Chennai', 'Chennai', '14.1km'),
(10, 'Chennai Central, Kannappar Thidal, Periyamet, Station Rd, Kannappar Thidal, Periyamet, Chennai, Tamil Nadu ', 'Chennai', 'Touring Officers’ Hostel 6 th Floor, Shastri Bhavan, 26- Haddows Road, Chennai', 'Chennai', '4.7km'),
(11, 'Chennai Central, Kannappar Thidal, Periyamet, Station Rd, Kannappar Thidal, Periyamet, Chennai, Tamil Nadu ', 'Chennai', 'Touring Officers’ Hostel ‘G’ Wing, CGO Complex, Rajaji Bhavan, Basant Nagar, Chennai', 'Chennai', '12.7km'),
(12, 'Chhatrapati Shivaji Terminus, Chhatrapati Shivaji Terminus Area, Fort, Mumbai, Maharashtra', 'Mumbai', 'Touring Officers’ Hostel Pratishta Bhavan, (4th Floor) 101, M.K. Road (Near Church Gate), Mumbai', 'Mumbai', '2.6 kms'),
(13, 'Chhatrapati Shivaji Terminus, Chhatrapati Shivaji Terminus Area, Fort, Mumbai, Maharashtra', 'Mumbai', 'CPWD Guest House Nirman Sadan, Sector I, CGS Colony, Kane Nagar, Antop Hill, Mumbai', 'Mumbai', '13.3 kms'),
(14, 'Gandhinagar Railway Station, Sector 14, Gandhinagar, Gujarat', 'Gandhinagar', 'Central Govt. Touring Officers’ Hostel, CPWD Colony, Sector – 6/D, Near Civil Hospital, Gandhi Nagar ', 'Gandhinagar', '3.2km'),
(15, 'Kalka, Azad Colony, Kurari Mohalla, Himachal Pradesh', 'Kalka', 'Grand Hotel, The Mall Road, Shimla', 'Shimla', '96km'),
(16, 'Kanyakumari Railway Station, Tamil Nadu, India', 'Kanyakumari', 'Holiday Homes Near Light House, Kovlam Road, Kanyakumari, Tamil Nadu, India', 'Kanyakumari', '3 kms'),
(17, 'Kathgodam Railway Station, Kathgodam, Uttarakhand, India', 'Kathgodam', 'Nainital Holiday Home, Uttarakhand, India', 'Nainital', '23.8 kms '),
(18, 'Lucknow Charbagh railway station, Kanpur Rd, Preeti Nagar, Railway Colony, Charbagh, Lucknow, Uttar Pradesh', 'Lucknow', 'Central Government Touring Officers’ Hostel, Kendrachal Colony, Sector-K, Aliganj, Lucknow', 'Lucknow', '9.8 kms'),
(19, 'Madgaon Railway Station, Goa, India', 'Madgaon', 'Central Govt Holiday Home Bambolim Goa', 'Bambolim', '32 kms'),
(20, 'Nagpur Railway Station, Sitabuldi, Nagpur, Maharashtra', 'Nagpur', 'Central Government Touring Officers’ Hostel, Seminary Hills, Bungalow No.3, Nagpur', 'Nagpur', '4.1 kms'),
(21, 'Nampally Railway Station, Public Garden Road, Devi Bagh, Red Hills, Nampally, Hyderabad, Telangana', 'Hyderabad', 'Central Government Touring Officers’ Hostel, Nirman Bhawan ,Sultan Bazar, Hyderabad', 'Hyderabad', '1.5 kms'),
(22, 'Nashik Road Railway Station, Rajwada Nagar, Deolali Gaon, Nashik, Maharashtra', 'Nashik', 'Central Government Touring Officers’ Hostel, 2nd Floor, Nirman Bhawan, GIPP, Near Post Office, Gandhi Nagar, Nasik', 'Nashik', '5.1 kms'),
(23, 'Ooty Railway Station, Ooty, Tamil Nadu, India', 'Ooty', 'Ratan Tata Officers Holiday Home, Woodcock Road, Mettupalayam, Ooty, Tamil Nadu, India', 'Ooty', '1 kms'),
(24, 'Pune Railway Station, Hq Southern Command, Pune, Maharashtra', 'Pune', 'Central Government Touring Officers’ Hostel, Nirman Sadan Building, Opp. Ranka Hospital, Mukund Nagar, Near Dwar Gate, Pune', 'Pune', '6.4 kms'),
(25, 'Railway Station Ajmeri Gate, Ajmeri Gate, New Delhi, Delhi', 'New Delhi', 'Central Government Touring Officers’ Hostel, ‘F’ Block, Curzon Road, Hostel, Kasturba Gandhi Marg, New Delhi', 'New Delhi', '3.1km'),
(26, 'Rana Pratap Station, Udaipur ,Rajasthan', '', 'holiday home, G’ Block, Hiran Nagari, Sector-14, Near C.A. Circle, Udaipur, India', '', '3 km'),
(27, 'State Entry New Delhi Railway Station, Qutab Rd, Ratan Lal Market, Kaseru Walan, Paharganj, New Delhi', '', 'Central Government Officers’ Guest House, HUDCO Place, New Delhi.', '', '11.5 kms'),
(28, 'Tirupati Rd, Royal Nagar, Tirupati, Andhra Pradesh ', '', 'Central Government Holiday Home, CPWD Office Building Complex, IS Mahal Road, Nehru Nagar, Tirupati', '', '26 km'),
(29, 'Varanasi Junction, maa surge balika intermediate collage, Varanasi, Uttar Pradesh', '', 'Central Government Touring Officers’ Hostel, Kendrachal GPRA Complex, Bara Lalpur,Chandmari, Lamhi, Varanasi', '', '6.4 kms'),
(30, 'Vijayawada Railway Station, Railway Station Rd, Hanumanpet, Vijayawada, Andhra Pradesh', '', 'Central Government Touring Officers’ Hostel, CPWD Office, Auto Nagar Gate, Autonagar, Vijayawada , Andhra Pradesh', '', '7.3 kms');

-- --------------------------------------------------------

--
-- Table structure for table `pnr`
--

CREATE TABLE `pnr` (
  `id` int(11) NOT NULL,
  `pnr` text NOT NULL,
  `train_no` int(11) NOT NULL,
  `source` text NOT NULL,
  `destination` text NOT NULL,
  `jsd` int(11) NOT NULL,
  `jsm` int(11) NOT NULL,
  `jsy` int(11) NOT NULL,
  `jed` int(11) NOT NULL,
  `jem` int(11) NOT NULL,
  `jey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pnr`
--

INSERT INTO `pnr` (`id`, `pnr`, `train_no`, `source`, `destination`, `jsd`, `jsm`, `jsy`, `jed`, `jem`, `jey`) VALUES
(1, '1254967359', 12466, 'Nagpur', 'Banglore', 29, 3, 2017, 31, 3, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `reg_no` text NOT NULL,
  `holiday_home` text NOT NULL,
  `rate_al` text NOT NULL,
  `rate_ah` text NOT NULL,
  `rate_bl` text NOT NULL,
  `rate_bh` text NOT NULL,
  `rate_cl` text NOT NULL,
  `rate_ch` text NOT NULL,
  `rate_dl` text NOT NULL,
  `rate_dh` text NOT NULL,
  `policy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `reg_no`, `holiday_home`, `rate_al`, `rate_ah`, `rate_bl`, `rate_bh`, `rate_cl`, `rate_ch`, `rate_dl`, `rate_dh`, `policy`) VALUES
(1, '1458965', 'Central Govt. Touring Officers Hostel, Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore', '200', '500', '300', '750', '400', '1000', '600', '1500', 24);

-- --------------------------------------------------------

--
-- Table structure for table `reg_holiday_homes`
--

CREATE TABLE `reg_holiday_homes` (
  `id` int(11) NOT NULL,
  `reg_no` text NOT NULL,
  `holiday_home` text NOT NULL,
  `uid` text NOT NULL,
  `password` text NOT NULL,
  `city` text NOT NULL,
  `AL` int(11) NOT NULL,
  `AH` int(11) NOT NULL,
  `BL` int(11) NOT NULL,
  `BH` int(11) NOT NULL,
  `CL` int(11) NOT NULL,
  `CH` int(11) NOT NULL,
  `DL` int(11) NOT NULL,
  `DH` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_holiday_homes`
--

INSERT INTO `reg_holiday_homes` (`id`, `reg_no`, `holiday_home`, `uid`, `password`, `city`, `AL`, `AH`, `BL`, `BH`, `CL`, `CH`, `DL`, `DH`, `status`) VALUES
(1, '47854958', 'Central Govt. Touring Officers Hostel, Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore', '1478526', 'thinkdifferent', 'Banglore', 2, 3, 5, 4, 3, 2, 4, 5, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `request_table`
--

CREATE TABLE `request_table` (
  `Reg_no` varchar(50) NOT NULL,
  `Holiday_homes_name` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_no` varchar(15) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Request` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_rooms`
--

CREATE TABLE `total_rooms` (
  `id` int(11) NOT NULL,
  `reg_no` text NOT NULL,
  `holiday_home` text NOT NULL,
  `AL` varchar(10) NOT NULL,
  `AH` varchar(10) NOT NULL,
  `BL` varchar(10) NOT NULL,
  `BH` varchar(10) NOT NULL,
  `CL` varchar(10) NOT NULL,
  `CH` varchar(10) NOT NULL,
  `DL` varchar(10) NOT NULL,
  `DH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_rooms`
--

INSERT INTO `total_rooms` (`id`, `reg_no`, `holiday_home`, `AL`, `AH`, `BL`, `BH`, `CL`, `CH`, `DL`, `DH`) VALUES
(1, '1458965', 'Central Govt. Touring Officers Hostel, Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore', '3', '5', '4', '3', '2', '5', '6', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_rooms`
--
ALTER TABLE `available_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nrs`
--
ALTER TABLE `nrs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pnr`
--
ALTER TABLE `pnr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_holiday_homes`
--
ALTER TABLE `reg_holiday_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_rooms`
--
ALTER TABLE `total_rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `available_rooms`
--
ALTER TABLE `available_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nrs`
--
ALTER TABLE `nrs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pnr`
--
ALTER TABLE `pnr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reg_holiday_homes`
--
ALTER TABLE `reg_holiday_homes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `total_rooms`
--
ALTER TABLE `total_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
