-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2017 at 03:04 PM
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
-- Table structure for table `admin_gov_data`
--

CREATE TABLE `admin_gov_data` (
  `id` int(50) NOT NULL,
  `reg_no` text NOT NULL,
  `holiday_home` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_no` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Predefined database of govt registered holiday homes';

--
-- Dumping data for table `admin_gov_data`
--

INSERT INTO `admin_gov_data` (`id`, `reg_no`, `holiday_home`, `city`, `address`, `contact_no`) VALUES
(1, 'gov123456', 'Agra', 'Agra', 'Sikandra Sector 15, (Near KarKunj\nChauraha Income Tax\nColony), Sikandra, Agra -\n282002.', '2850556'),
(2, 'gov112345', 'Amarkantak', 'Amarkantak', 'Near Nain Narmada Temple, Amarkantak, Madhya Pradesh Pin- 484886\r\n', '269416'),
(3, 'gov122345', 'Goa', 'Goa', 'Bambolim [Near Nirman Bhawan and Holy Cross Church] [Opp. Bambolim Cross on Panji-Madgaon Highway] Goa.\r\nPin-402233', '0832-2458555'),
(4, 'gov123345', 'Kanyakumari', 'Kanyakumari', 'Kovalam Road (Opp. New Light House), Kanyakumari Pin-629702', '04652-246994'),
(5, 'gov123445', 'Madurai', 'Madurai', 'Tamil Nagar, Koodalpudur, Anaiyur (PO) Madurai – 625 017 (Tamilnadu).', '0452-2661892'),
(6, 'gov123455', 'Mysore', 'Mysore', 'Sidhartha Nagar, Geeta Convent Stop, Mysore-570011.', '0821-2473661'),
(7, 'gov111234', 'Mussoorie', 'Mussoorie', 'Opp. Hotel Padmini Nivas), Mussoorie – 248179.', '0135-2222253'),
(8, 'gov122234', 'Nainital', 'Nainital', 'Khurpatal, Nainital – 260031.', '05942-240330'),
(9, 'gov123334', 'New Delhi', 'New Delhi', 'Hostel Kidwai Nagar (West) New Delhi.', '011-24100023'),
(10, 'gov123444', 'Ooty', 'Ooty', 'Good Shed Road, Near Railway Station, Udagamandalam, Nilgiris, Ooty, Tamilnadu - 643001', '0423-2450019'),
(11, 'gov123123', 'Port Blair', 'Port Blair', 'Kendriya Sadan, Ranchi Basti, Lamba Line, Port Blair-744103.', '03192-240221'),
(12, 'gov123123', 'Shimla', 'Shimla', 'Shimla-171001.', '0177-2658121'),
(13, 'gov112233', 'Tirupati', 'Tirupati', 'Complex, IS Mahal Road, Nehru Nagar, Tirupati - 517501.', '0877-226221'),
(14, 'gov121212', 'Udaipur', 'Udaipur', 'G - Block, Sector – 14, (Near C.A. Circle) Udaipur - 313001 (Rajasthan).', '0294-2467118'),
(15, 'gov123654', 'Amritsar', 'amritsar', 'Ram Tirath Nagar, Army Recruitment Centre, Amritsar', '08007430702'),
(16, 'gov101010', 'Bangalore', 'Bangalore', 'Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bangalore-560071', '09145625565'),
(17, 'gov202020', 'Bareilly', 'Bareilly', 'Near Enquiry Office (Civil), CPWD Quarters, Domlur, Bareilly560071', '9011556677'),
(18, 'gov808080', 'Bhopal', 'Bhopal', '1-Nirman Sadan, 52A, Arera Hills, Bhopal- 462011', '09011234567'),
(19, 'gov102030', 'Chandigarh', 'Chandigarh', 'Hostel,\r\nSector 7B, Chandigarh', ' 0172-2795389'),
(20, 'gov120120', 'Chennai', 'Chennai', 'Shastri Bhavan, 26- Haddows Road, Chennai-600006.', '044-28252570'),
(21, '', 'chennai_home', 'chennai', 'CGO Complex,\r\nRajaji Bhavan, Basant Nagar,\r\nChennai-600090.', '044-24911771'),
(22, 'gov101234', 'Cochin', 'Cochin', 'Near Homeo. Dispensary,cochine', '800901234'),
(23, 'gov120210', 'Dehradun', 'Dehradun', 'Residential Complex,\r\nSubhash Chowk, (Near Clock Tower-Paltan Bazar)\r\nDehradun-248001', '9011313890'),
(24, 'gov100987', 'Delhi', 'Dehli', 'Curzon Road, Hostel, Kasturba Gandhi Marg, New Delhi-110108.', '011-23389775'),
(25, 'gov102201', 'Gandhi\r\nNagar', 'Gandhi Nagar', 'CPWD Colony, Sector – 6/D, Near Civil Hospital, Gandhi Nagar - 382043', '08007430801'),
(26, 'gov123098', 'Gangtok', 'Gangtok', 'Cherry Building, (Baluwakhani), (Near Zero Point and Vajra Cinema Hall) Gangtok (Sikkim) - 737103', '09325516255'),
(27, 'gov123000', 'Guwahati', 'Guwahati', 'CPWD Resi. Complex, Japarigog Zoo, Narangi Road, Guwahati', '09890342321'),
(28, 'gov654987', 'Gwalior', 'Gwalior', 'CPWD Guest House, 35 - City Centre, Gwalior- 474002', '08888123456'),
(29, 'gov129934', 'Hyderabad', 'Hyderabad', 'Nirman Bhawan,\r\nSultan Bazar, Hyderabad- 500095', '9145678906'),
(30, 'gov122211', 'Indore', 'Indore', 'CGO Complex, Near White Church House, Indore - 425001', '9098876643'),
(31, 'gov098723', 'Jaipur', 'Jaipur', 'Vidhyadhar Nagar,\r\nJaipur (Near Vidhyadhar Nagar Police Station,jaipur', '0141-2232495'),
(32, 'gov807022', 'Jaisalmer', 'Jaisalmer', 'CPWD Division office, Near Income Tax Office, Bera Road, Jaisalmer - 345001', '9022314122'),
(33, 'gov310021', 'Jammu', 'Jammu', 'Landoi Bridge, Satwari\r\nCantt., Jammu – 181124.', '8009871231'),
(34, 'gov433213', 'Jodhpur', 'Jodhpur', 'Nirman Bhawan, 3 – West Patel Nagar, Circuit House', '9898765433'),
(35, 'gov7676767', 'Kolkata', 'Kolkata', 'Nizam Palace, 234/4, Acharya J.C. Bose Road, Kolkotta-20', '033-22876515'),
(36, 'gov324567', 'Kozhikode', 'Kozhikode', 'Central Govt. Office Complex, Dutt Saw Mill Road, Kallai (PO), Kozhikode\r\n- 673003\r\n', '0495-2320100'),
(37, 'gov656556', 'Madhopur', 'Madhopur', 'CPWD Complex, Madhopur, Distt.- Pathankot – 145024 (Punjab)', '9326602200'),
(38, 'gov123678', 'Mount Abu', 'Mount Abu', 'Shail Mani, Near Global Hospital, Delwara Road, Mount Abu, Distt. Sirohi, (Rajasthan) – 307501', '8787605045'),
(39, 'gov127865', 'Nagpur', 'Nagpur', 'Central Government Touring Officers’ Hostel, Seminary Hills, Bungalow No.3, Nagpur –\r\n440 006', '09876543211'),
(40, 'gov876787', 'Pune', 'Pune', 'Central Government Touring Officers’ Hostel, Nirman Sadan Building, Opp. Ranka Hospital, Mukund Nagar, Near Dwar Gate, Pune - 411037', '9890347414');

-- --------------------------------------------------------

--
-- Table structure for table `available_rooms`
--

CREATE TABLE `available_rooms` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `holiday_home` text NOT NULL,
  `bsd` date NOT NULL,
  `bed` date NOT NULL,
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

INSERT INTO `available_rooms` (`id`, `reg_no`, `booking_id`, `holiday_home`, `bsd`, `bed`, `AL`, `AH`, `BL`, `BH`, `CL`, `CH`, `DL`, `DH`) VALUES
(1, '1458965', 1478520125, 'Matheran Holiday Home', '2017-04-04', '2017-04-06', '2', '5', '4', '3', '2', '5', '6', '4');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `holiday_home` text NOT NULL,
  `booking_id` text NOT NULL,
  `employee_name` text NOT NULL,
  `bsd` date NOT NULL,
  `bed` date NOT NULL,
  `room_type` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `people_acc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `holiday_home`, `booking_id`, `employee_name`, `bsd`, `bed`, `room_type`, `quantity`, `people_acc`) VALUES
(1, 'Matheran Holiday Home', '102456952', 'Midhat Shah', '2017-04-04', '0000-00-00', 'AL', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `co_ordinates`
--

CREATE TABLE `co_ordinates` (
  `id` int(10) NOT NULL,
  `city` text NOT NULL,
  `holiday_home` text NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_ordinates`
--

INSERT INTO `co_ordinates` (`id`, `city`, `holiday_home`, `latitude`, `longitude`) VALUES
(1, 'Matheran', 'Matheran Holiday Home', 18.9886587, 73.27117900000007),
(2, 'Lonavala', 'Lonavala Holiday Home', 18.7546171, 73.40623419999997),
(3, 'Igatpuri', 'Igatpuri Holiday Home', 19.6973156, 73.56093609999994),
(4, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 17.9307285, 73.64773420000006),
(5, 'Pandharpur', 'Pandharpur Holiday Home', 17.6745535, 75.32372620000001),
(6, 'Dadar', 'Dadar Holiday Home', 19.021324, 72.84241780000002),
(7, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 24.4924924, 86.69999380000002),
(8, 'Puri', 'Puri Holiday Home', 19.8133822, 85.83146549999992),
(9, 'Darjeeling', 'Darjeeling Holiday Home', 27.0360066, 88.26267510000002),
(10, 'Nainital', 'Nainital Holiday Home', 29.3803039, 79.46356579999997),
(11, 'Haridwar', 'Haridwar Holiday Home', 29.9456906, 78.1642478),
(12, 'Shimla', 'Shimla Holiday Home', 31.1048145, 77.17340330000002),
(13, 'Barog', 'Barog Holiday Home', 30.8883473, 77.07659269999999),
(14, 'Baijnath Paprola', 'Baijnath Paprola Holiday Home', 32.050882, 76.63527599999998),
(15, 'Manali', 'Manali Holiday Home', 32.2396325, 77.18871450000006),
(16, 'Mussoorie', 'Mussoorie Holiday Home', 30.4599099, 78.0663978),
(17, 'Badrinath', 'Badrinath Holiday Home', 30.7433085, 79.49376340000003),
(18, 'Ranikhet', 'Ranikhet Holiday Home', 29.6433615, 79.43218249999995),
(19, 'Varanasi', 'Varanasi Holiday Home', 25.3176452, 82.97391440000001),
(20, 'Allahabad City', 'Allahabad City Holiday Home', 25.4358011, 81.84631100000001),
(21, 'Shillong', 'Shillong Holiday Home', 25.5787726, 91.89325350000001),
(22, 'Kurseong', 'Kurseong Holiday Home', 26.8821382, 88.2788511),
(23, 'Madurai', 'Madurai Holiday Home', 9.9252007, 78.11977539999998),
(24, 'Courtallam', 'Courtallam Holiday Home', 8.933913100000002, 77.27804019999996),
(25, 'Rameswaram', 'Rameswaram Holiday Home', 9.2876254, 79.31292910000002),
(26, 'Palani', 'Palani Holiday Home', 10.4489188, 77.52093919999993),
(27, 'Kanniyakumari', 'Kanniyakumari Holdiay Home', 8.0883064, 77.5384507),
(28, 'Coonoor', 'Coonoor Holiday Home', 11.3530022, 76.7959095),
(29, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 11.4064138, 76.6932438),
(30, 'Kolva Beach(Vascodagama)', 'Kolva Beach(Vascodagama) Holiday Home', 15.3637852, 73.89362230000006),
(31, 'Aurangabad', 'Aurangabad Holiday Home', 19.8761653, 75.3433139),
(32, 'Tirupati', 'Tirupati Holiday Home', 13.6287557, 79.41917949999993),
(33, 'Ranchi', 'Ranchi Holiday Home', 23.3440997, 85.30956200000003),
(34, 'Digha', 'Digha Holiday Home', 21.6266172, 87.50743149999994),
(35, 'Araku ', 'Araku Holiday Home', 18.3273486, 82.87752180000007),
(36, 'Aghra(Idgha)', 'Aghra(Idgha) Holiday Home', 27.1729779, 77.99809230000005),
(37, 'Pali Hill, Bandra(Mumbai)', 'Bandra(Mumbai) Holiday Home', 19.0673678, 72.82624110000006),
(38, 'Udaipur', 'Udaipur Holiday Home', 24.585445, 73.71247900000003),
(39, 'Mount Abu', 'Mount Abu Holiday Home', 24.5925909, 72.71562740000002),
(40, 'Verawal(Gujrat)', 'Verawal Holiday Home', 20.9158979, 70.3628516),
(41, 'Dwarka(Gujarat)', 'Dwarka Holiday Home', 22.2441975, 68.96845619999999),
(42, 'Gholwad', 'Gholwad Holiday Home', 20.0803294, 72.73040500000002),
(43, 'Bandra', 'Convalscent Home', 19.0595205, 72.83550439999999),
(44, 'Jaipur', 'Jaipur Holiday Home', 26.9124336, 75.78727090000007),
(45, 'Pachmarhi', 'Pachmarhi Holiday Home', 22.4674463, 78.43458540000006),
(46, 'Mysore', 'Mysore Holiday Home', 12.2958104, 76.63938050000002);

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
  `adhar_no` text NOT NULL,
  `emid` varchar(200) NOT NULL,
  `pass` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `grade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `adhar_no`, `emid`, `pass`, `name`, `email`, `mobile`, `grade`) VALUES
(13, '12345678912345', 'vhomes@123456789', 'helloworldnew', 'Aamir Khan', 'abcde@gmail.com', '9011112222', 'A'),
(14, '11223344556678', 'vhomes@ankush.444', 'helloworld', 'Ankush Gaidwane', 'Ankush123@gmail.com', '9992226664', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `irctc_employees`
--

CREATE TABLE `irctc_employees` (
  `id` int(11) NOT NULL,
  `rail_id` int(11) NOT NULL,
  `em_name` text NOT NULL,
  `grade` text NOT NULL,
  `mobile` text NOT NULL,
  `adhar_no` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irctc_employees`
--

INSERT INTO `irctc_employees` (`id`, `rail_id`, `em_name`, `grade`, `mobile`, `adhar_no`, `email`) VALUES
(1, 1478523698, 'Aamir Khan', 'A', '9011112222', '12345678912345', 'abcde@gmail.com'),
(2, 1448526589, 'Sharukh Khan', 'C', '9011122233', '11223344556677', 'sharukh123@gmail.com'),
(3, 1254896522, 'Ankush Gaidwane', 'A', '9992226664', '11223344556678', 'Ankush123@gmail.com'),
(4, 1478523690, 'Ranveer Kapoor', 'B', '9922608809', '11223344556679', 'Ranveer123@gmail.com'),
(5, 0, 'Priyanka Chopra', 'B', '9922260880', '11223344556666', 'Priyanka123@gmail.com'),
(6, 6, 'Kareena Kapoor', 'C', '9911223344', '44556677889911', 'Kreena123@gmail.com'),
(7, 7, 'Katrina KAif', 'C', '9911224455', '44556677889923', 'Katrina234@gmail.com'),
(8, 8, 'Deepika Padukon', 'D', '9988112233', '44556677881122', 'Deepika456@gmail.com'),
(9, 9, 'Aamir Nabeel', 'A', '7769995262', '77889944556612', 'Khanaamirnabeel@gmail.com'),
(10, 10, 'Mohammad Junaid', 'A', '90011608809', '84566412692012', 'mjq313@gmail.com'),
(11, 11, 'Wali ur Rahmaan', 'D', '7020225648', '56789911223344', 'Wali123@gmail.com'),
(12, 1234567890, 'Midhat Shah', 'B', '9233445566', '01234567891478', 'Midhatfatema@gmail.com'),
(13, 13, 'Rushikesh Aakhre', 'B', '9874563210', '44556688992233', 'Rushikesh@outlook.com'),
(14, 14, 'Lakshita Raichra', 'A', '7788994455', '77889966332211', 'Lakshita123@outlook.com'),
(15, 15, 'Shoeb Khan', 'D', '7788665544', '12345678988888', 'Shoebkhan@gmail.com'),
(16, 16, 'Lovly Mutneja', 'C', '9011608889', '77889944556622', 'lovlymutneja@gmail.com'),
(17, 17, 'Narendra Modi', 'B', '7788665549', '56478932141256', 'Narendramodi@gmail.com'),
(18, 18, 'Sohef Khan', 'D', '9012345566', '77889944556622', 'Sohefkhan@gmail.com'),
(19, 19, 'ashwini Bombe', 'A', '8899665544', '94455661124455', 'Ashwini123@gmail.com'),
(20, 20, 'Prajakta Kulkarni', 'D', '9988556622', '78451236974563', 'Prajakta345@gmail.com'),
(21, 21, 'Anushree Patil', 'B', '7788996651', '14785236978965', 'Anushreepatil@gmail.com'),
(22, 22, 'Mayuri Ajmire', 'B', '7894566332', '77889944504455', 'Mayuri123@gmail.com'),
(23, 23, 'Sanika Kerekar', 'D', '8899665544', '44778855669922', 'Sanika123@outllok.com'),
(24, 24, 'Pratiksha Shah', 'B', '9988774563', '77889966554411', 'Pratiksha123@gmail.com'),
(25, 25, 'Mudassir Kamran', 'A', '8999562314', '44556633221177', 'Mudassir678@gmail.com'),
(26, 26, 'Uzair Husain', 'C', '7507407317', '77889966332211', 'uzairhusain@gmail.com'),
(27, 27, 'Amruta Lahore', 'B', '7896325410', '78963023145698', 'Amruta313@gmail.com'),
(28, 28, 'Karan Chauhan', 'D', '9856321470', '88996632014756', 'karanchauhan@hotmail.com'),
(29, 29, 'Hitesh Chaudhri', 'C', '9658743210', '78659412301452', 'hitesh575@gmail.com'),
(30, 30, 'Yuraj Sune', 'A', '8965741230', '78963254102365', 'yurajsune@gmail.com'),
(31, 31, 'Myur Pawar', 'D', '9874562103', '47896523102365', 'myurpawar@outlook.com'),
(32, 32, 'Ayushi Manekar', 'C', '7894561230', '45632104789650', 'Ayushi234@gmail.com'),
(33, 33, 'Junaid Qureshi', 'A', '7020227371', '45789632145698', 'jahmer99@gmail.com'),
(34, 34, 'Rizwan Ahmer', 'B', '9922648952', '44556699882233', 'rahmer.97@gmail.com'),
(35, 35, 'Kiriti Gupta', 'C', '8965321470', '45698723012365', 'kririgupta@gmail.com'),
(36, 36, 'Drakshan Sadaf', 'A', '9855632147', '78965412301458', 'Darakshan@gmail.com'),
(37, 37, 'Shumaila Mirza', 'C', '9874563210', '14785236901236', 'Shumaila234@gmail.com'),
(38, 38, 'Sitwat Fatema', 'B', '7896541250', '78965423012365', 'Sitwat678@gmail.com');

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
-- Table structure for table `neareststation`
--

CREATE TABLE `neareststation` (
  `id` int(11) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `holiday_home` varchar(100) DEFAULT NULL,
  `nearest_station` varchar(100) DEFAULT NULL,
  `nearest_city` varchar(50) DEFAULT NULL,
  `distance` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `neareststation`
--

INSERT INTO `neareststation` (`id`, `city`, `holiday_home`, `nearest_station`, `nearest_city`, `distance`) VALUES
(1, 'Kanyakumari', 'Kanyakumari Holiday Home', ' Suchindram Railway Station', 'Suchindram', '10km 245.2m'),
(2, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Nagarcoil Junction', 'Nagarcoil', '18km'),
(3, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Tovalai', 'Thovalai', '27km 784m'),
(4, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Aralvaymoli', 'Aralvaymoli', '28km'),
(5, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Nagercoil Town Railway Station', 'Nagarcoil', '20km'),
(6, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Virani Alur Railway Station', 'Virani Alur', '26km'),
(7, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Panagudi Nethaji Street Railway Station', 'N Panagudi', '38km'),
(8, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Eraniel Station', 'Eraniel', '33km'),
(9, 'Kanyakumari', 'Kanyakumari Holiday Home', 'Valliyur Railway Station', 'Valliyur', '47km'),
(10, 'Varanasi', 'Varanasi Holiday Home', 'Manduadih', 'Manduadih', '4km'),
(11, 'Varanasi', 'Varanasi Holiday Home', 'Bhulanpur Railway Station', 'Bhulanpur', '6km'),
(12, 'Varanasi', 'Varanasi Holiday Home', 'Lohta Station', 'Lohta', '6km'),
(13, 'Varanasi', 'Varanasi Holiday Home', 'Varanasi City Railway Station', 'Varanasi', '4km'),
(14, 'Varanasi', 'Varanasi Holiday Home', 'Shiupur Station', 'Shiupur', '5km'),
(15, 'Varanasi', 'Varanasi Holiday Home', 'Kashi Station', 'Kashi', '5km'),
(16, 'Varanasi', 'Varanasi Holiday Home', 'Hardattpur Railway Station', 'Hardattpur', '7km'),
(17, 'Varanasi', 'Varanasi Holiday Home', 'Sarnath Station', 'Sarnath', '11km'),
(18, 'Varanasi', 'Varanasi Holiday Home', 'Vyasnagar Railway Station', 'Vyasnagar', '11km'),
(19, 'Shimla', 'Shimla Holiday Home', 'Summer Hill Railway Station', 'Summer Hill', '3km 656m'),
(20, 'Shimla', 'Shimla Holiday Home', 'Taradevi Station', 'Taradevi', '5km'),
(21, 'Shimla', 'Shimla Holiday Home', 'Jutogh Station', 'Jutogh', '6km'),
(22, 'Shimla', 'Shimla Holiday Home', 'Shoghi Railway Station', 'Shoghi', '13km'),
(23, 'Shimla', 'Shimla Holiday Home', 'Kathleeghat Station', 'Kathleeghat', '23km'),
(24, 'Shimla', 'Shimla Holiday Home', 'Kanoh Station', 'Kanoh', '30km'),
(25, 'Shimla', 'Shimla Holiday Home', 'Kandaghat Station', 'Kandalghat', '28km'),
(26, 'Shimla', 'Shimla Holiday Home', 'Salogra Station', 'Salogra', '35km'),
(27, 'Darjiling', 'Darjiling Holiday Home', 'Ghum Station', 'Ghum', '6km'),
(28, 'Darjiling', 'Darjiling Holiday Home', 'Sonada Station', 'Sonada', '10km'),
(29, 'Darjiling', 'Darjiling Holiday Home', 'Tung Station', 'Tung', '23km'),
(30, 'Darjiling', 'Darjiling Holiday Home', 'Kurseong Railway Station', 'Kurseong', '24km'),
(31, 'Darjiling', 'Darjiling Holiday Home', 'Mahandi Railway Station', 'Mahandi', '--'),
(32, 'Darjiling', 'Darjiling Holiday Home', 'Gayabari Station', 'Gayabari', '42km'),
(33, 'Darjiling', 'Darjiling Holiday Home', 'Tindharia Railway Station', 'Tindharia', '47km'),
(34, 'Darjiling', 'Darjiling Holiday Home', 'Rangtong Station', 'Rangtong', '--'),
(35, 'Darjiling', 'Darjiling Holiday Home', 'Sivok Station', 'Sivok', '--'),
(36, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Diwan Khavati Railway Station', 'Diwan Khavati', '62km'),
(37, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Karanjadi Station', 'karanjadi', '52km'),
(38, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Vinhere Station', 'Vinhere', '60km'),
(39, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Sape Wamne Station', 'Wamne', '68km'),
(40, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Khed Station', 'Khed', '79km'),
(41, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Veer Station', 'Veer', '85km'),
(42, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Goregaon Road Railway Station', 'Goregaon,Mumbai', '276km'),
(43, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Chiplun Station', 'Chiplun', '108km'),
(44, 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'Jarandeshwar Railway Station', 'Jarandeshwar', '65km'),
(45, 'Igatpuri', 'Igatpuri Holiday Home', 'Ghoti station', 'Ghoti', '79km'),
(46, 'Igatpuri', 'Igatpuri Holiday Home', 'Kasara station', 'Kasara', '17km'),
(47, 'Igatpuri', 'Igatpuri Holiday Home', 'Oombermali station', 'Oombermali', '24km'),
(48, 'Igatpuri', 'Igatpuri Holiday Home', 'Asvali station', 'Asvali', '24km'),
(49, 'Igatpuri', 'Igatpuri Holiday Home', 'Khardi station', 'Khardi', '97km'),
(50, 'Igatpuri', 'Igatpuri Holiday Home', 'Lahavit Railway station', 'Lahavit', '42km'),
(51, 'Igatpuri', 'Igatpuri Holiday Home', 'Thansit station', 'Thansit', '38km'),
(52, 'Igatpuri', 'Igatpuri Holiday Home', 'Atgaon station', 'Atgaon', '42km'),
(53, 'Madhurai', 'Madhurai Holiday Home', 'Koodal Nagar Railway Station', 'Koodal Nagar', '6km'),
(54, 'Madhurai', 'Madhurai Holiday Home', 'Tiruparankundram Station', 'Tiruparankundram', '9km'),
(55, 'Madhurai', 'Madhurai Holiday Home', 'Silaiman Railway Station', 'Silaiman', '11km'),
(56, 'Madhurai', 'Madhurai Holiday Home', 'Samayanallur Railway Station', 'Samayanallur', '12km'),
(57, 'Madhurai', 'Madhurai Holiday Home', 'Tirumangalam Railway Station', 'Tirumangalam', '23km'),
(58, 'Madhurai', 'Madhurai Holiday Home', 'Tirubhuvanam Railway Station', 'Tirubhuvanamm', '240km'),
(59, 'Madhurai', 'Madhurai Holiday Home', 'Sholavandan Railway Station', 'Sholavandan', '25km'),
(60, 'Madhurai', 'Madhurai Holiday Home', 'Karuppatti Railway Station', 'Karuppatti', '31km'),
(61, 'Courtallam', 'Courtallam Holiday Home', 'Tenkasi Junction', 'Tenkasi', '5km'),
(62, 'Courtallam', 'Courtallam Holiday Home', 'Kizapuliyur station', 'Kizapuliyur', '6km'),
(63, 'Courtallam', 'Courtallam Holiday Home', 'Shenkottai station', 'Shenkottai', '7km'),
(64, 'Courtallam', 'Courtallam Holiday Home', 'Pavoorchatran Railway station', 'Pavoorchatran', '15km'),
(65, 'Courtallam', 'Courtallam Holiday Home', 'Kilakadayam station', 'Kilakadayam', '16km'),
(66, 'Courtallam', 'Courtallam Holiday Home', 'Ravanasamudram station', 'Ravanasamudram', '20km'),
(67, 'Courtallam', 'Courtallam Holiday Home', 'Kadayanallur station', 'Kadayanallur', '20km'),
(68, 'Courtallam', 'Courtallam Holiday Home', 'Azhwar kurichi station', 'Azhwar kurichi', '26km'),
(69, 'Courtallam', 'Courtallam Holiday Home', 'Kizha Ambur Railway station', 'Kizha Ambur', '28km'),
(70, 'Lonavala', 'Lonavala Holiday Home', 'Khandala station', 'Khandala', '5km'),
(71, 'Lonavala', 'Lonavala Holiday Home', 'Khopoli station', 'Khopoli', '10km'),
(72, 'Lonavala', 'Lonavala Holiday Home', 'Malavi station', 'Malavi', '7km'),
(73, 'Lonavala', 'Lonavala Holiday Home', 'Lowjeo station', 'Lowjeo,Khopoli', '15km'),
(74, 'Lonavala', 'Lonavala Holiday Home', 'Dolavali(DLV) station', 'Dolavali', '26km'),
(75, 'Lonavala', 'Lonavala Holiday Home', 'Kamshet station', 'Kamshet', '18km'),
(76, 'Lonavala', 'Lonavala Holiday Home', 'Karjat station', 'Karjat', '40km'),
(77, 'Kurseong', 'Kurseong Holiday Home', 'Mahandi station', 'Mahandi', '--km'),
(78, 'Kurseong', 'Kurseong Holiday Home', 'Gayabari Railway station', 'Gayabari,West Bangal', '15km'),
(79, 'Kurseong', 'Kurseong Holiday Home', 'Tindharia Railway station', 'Tindharia', '19km'),
(80, 'Kurseong', 'Kurseong Holiday Home', 'Rangtong station', 'Rangtong', '584km'),
(81, 'Kurseong', 'Kurseong Holiday Home', 'Sonada station', 'Sonada', '17km'),
(82, 'Kurseong', 'Kurseong Holiday Home', 'Sukna station', 'Sukna', '38km'),
(83, 'Kurseong', 'Kurseong Holiday Home', 'Ghoom station', 'Ghoom', '28km'),
(84, 'Kurseong', 'Kurseong Holiday Home', 'Gulma Railway station', 'Gulma', '30km'),
(85, 'Shillong', 'Shillong Holiday Home', 'Tetelia Railway Station', 'Tetelia', '101km'),
(86, 'Shillong', 'Shillong Holiday Home', 'Kamrup Khetri Railway Station', 'Kamrup-Khetri', '104km'),
(87, 'Shillong', 'Shillong Holiday Home', 'Digharu Railway Station', 'Digharu', '109km'),
(88, 'Shillong', 'Shillong Holiday Home', 'Barahu Railway Station', 'Barahu', '111km'),
(89, 'Shillong', 'Shillong Holiday Home', 'Kamakhya Station', 'Kamakhya', '67km'),
(90, 'Shillong', 'Shillong Holiday Home', 'Guwahati Station', 'Guwahati', '122km'),
(91, 'Matheran', 'Matheran Holiday Home', 'Neral Railway Station', 'Neral', '21km'),
(92, 'Matheran', 'Matheran Holiday Home', 'Mohape Railway Station', 'Mohape', '39km'),
(93, 'Matheran', 'Matheran Holiday Home', 'Shelu Station', 'Shelu', '12km'),
(94, 'Matheran', 'Matheran Holiday Home', 'Karjat Station', 'Karjat', '20km'),
(95, 'Allahabad', 'Allahabad City Holiday Home', 'Allahabad Kullumanali', 'Allahabad', '2km'),
(96, 'Allahabad', 'Allahabad City Holiday Home', 'Daragang Railway Station', 'Allahabad', '3km'),
(97, 'Allahabad', 'Allahabad City Holiday Home', 'Naini junction', 'Naini', '7km'),
(98, 'Allahabad', 'Allahabad City Holiday Home', 'Subedarganj Railway station', 'Subedarganj', '7km'),
(99, 'Allahabad', 'Allahabad City Holiday Home', 'Jhusi Railway station', 'Poore Suradas', '7km'),
(100, 'Allahabad', 'Allahabad City Holiday Home', 'Cheoki station', 'Cheoki', '9km'),
(101, 'Allahabad', 'Allahabad City Holiday Home', 'Phaphamau Junction', 'Phaphamau', '11km'),
(102, 'Ranikhet', 'Ranikhet Holiday Home', 'Ramnagar Railway Station', 'Ramnagar', '97km'),
(103, 'Ranikhet', 'Ranikhet Holiday Home', 'Kathgodam Station', 'Kathgodam', '74km'),
(104, 'Ranikhet', 'Ranikhet Holiday Home', 'Haldwani Station', 'Haldwani', '82km'),
(105, 'Ranikhet', 'Ranikhet Holiday Home', 'Pirumadara Station', 'Pirumadara', '105km'),
(106, 'Ranikhet', 'Ranikhet Holiday Home', 'Gaushala Railway Station', 'Hempur Daya', '119km'),
(107, 'Ranikhet', 'Ranikhet Holiday Home', 'Gularbhoj Railway Station', 'Gularbhoj', '121km'),
(108, 'Ranikhet', 'Ranikhet Holiday Home', 'Beria Daulat Railway Halt', 'Chandanpura', '121km'),
(109, 'Ranikhet', 'Ranikhet Holiday Home', 'Bazpur Railway station', 'Bazpur', '117km'),
(110, 'Ranikhet', 'Ranikhet Holiday Home', 'Lalkuan station', 'Lalkuan', '100km'),
(111, 'Pandharpur', 'Pandharpur Holiday Home', 'Bamani Station', 'Bamani', '117km'),
(112, 'Pandharpur', 'Pandharpur Holiday Home', 'Modnimb Station', 'Modnimb', '31km'),
(113, 'Pandharpur', 'Pandharpur Holiday Home', 'Sangola Railway Station', 'Sangola', '33km'),
(114, 'Pandharpur', 'Pandharpur Holiday Home', 'Wasud Railway Station', 'wasud,Akola', '41km'),
(115, 'Pandharpur', 'Pandharpur Holiday Home', 'Malikpeth Railway Station', 'Malikpeth', '41km'),
(116, 'Pandharpur', 'Pandharpur Holiday Home', 'Mohol Railway Station', 'Kolegaon', '42km'),
(117, 'Pandharpur', 'Pandharpur Holiday Home', 'Laul Station', 'Laul', '46km'),
(118, 'Pandharpur', 'Pandharpur Holiday Home', 'Mundhewadi Station', 'Mundhewadi', '9km'),
(119, 'Pandharpur', 'Pandharpur Holiday Home', 'Ahmadnagar Anand Nagar Railway Station', 'Ahmadnagar', '190km'),
(120, 'Dadar', 'Dadar Holiday Home', 'Matunga Railway Station', 'Matunga,Dadar', '1km'),
(121, 'Dadar', 'Dadar Holiday Home', 'Parel Railway Station', 'Parel(Mumbai)', '2km'),
(122, 'Dadar', 'Dadar Holiday Home', 'Elphinstone Road Railway Station', 'Pardimum', '2km'),
(123, 'Dadar', 'Dadar Holiday Home', 'Vadala Road Railway Station', 'Vadala', '6km'),
(124, 'Dadar', 'Dadar Holiday Home', 'Mahim junction', 'Mahim(Mumbai)', '3km'),
(125, 'Dadar', 'Dadar Holiday Home', 'Sewri Station', 'Sewri(Mumbai)', '11km'),
(126, 'Mussoorie', 'Mussoorie Holiday Home', 'Dehradun station', 'Dehradun', '34km'),
(127, 'Mussoorie', 'Mussoorie Holiday Home', 'Harrawala Railway station', 'Harrawala', '40km'),
(128, 'Mussoorie', 'Mussoorie Holiday Home', 'DOiwala Railway station', 'Doiwala', '51km'),
(129, 'Mussoorie', 'Mussoorie Holiday Home', 'Kansrao Railway station', 'Kansrao', '66km'),
(130, 'Mussoorie', 'Mussoorie Holiday Home', 'Rishikesh station', 'Rishikesh', '76km'),
(131, 'Mussoorie', 'Mussoorie Holiday Home', 'Virbhadra station', 'Virbhadra', '75km'),
(132, 'Mussoorie', 'Mussoorie Holiday Home', 'Raiwala junction Railway station', 'Raiwala', '75km'),
(133, 'Mussoorie', 'Mussoorie Holiday Home', 'Motichur Railway station', 'Motichur', '79km'),
(134, 'Mussoorie', 'Mussoorie Holiday Home', 'Haridwar Junction', 'Haridwar', '84km'),
(135, 'Mussoorie', 'Mussoorie Holiday Home', 'Jwalapur Railway Station', 'Jwalapur', '92km'),
(136, 'Puri', 'Puri Holiday Home', 'Malatipatpur Station', 'Malatipatpur', '9km'),
(137, 'Puri', 'Puri Holiday Home', 'Jankidaipur Station', 'Jankidaipur', '9km'),
(138, 'Puri', 'Puri Holiday Home', 'Sakhigopal Railway Station', 'Sakhigopal', '17km'),
(139, 'Puri', 'Puri Holiday Home', 'Birpurusothampr Railway Station', 'Birpurusothampr', '25km'),
(140, 'Puri', 'Puri Holiday Home', 'Jenapur P.H. Station', 'Jenapur', '141km'),
(141, 'Puri', 'Puri Holiday Home', 'Delang Railway Station', 'Delang', '30km'),
(142, 'Udaipur', 'Udaipur Holiday Home', 'Ranapratapnagar Station', 'Ranapratapnagar', '4.31km'),
(143, 'Udaipur', 'Udaipur Holiday Home', 'Kharwa Chanda Station', 'Kharwa Chanda', '19.98km'),
(144, 'Udaipur', 'Udaipur Holiday Home', 'Zawar Station', 'Zawar', '24.04km'),
(145, 'Udaipur', 'Udaipur Holiday Home', 'Malvi Junction', 'Malvi', '37.08km'),
(146, 'Udaipur', 'Udaipur Holiday Home', 'Fatehnagar Railway Station', 'Fatehnagar', '48.56km'),
(147, 'Haridwar', 'Haridwar Holiday Home', 'Motichur Railway Station', 'Motichur', '5km'),
(148, 'Haridwar', 'Haridwar Holiday Home', 'Jwalapur Railway Station', 'Jwalapur', '7km'),
(149, 'Haridwar', 'Haridwar Holiday Home', 'Ikkar Railway Station', 'Ikkar(Uttarakhand)', '10km'),
(150, 'Haridwar', 'Haridwar Holiday Home', 'Raiwala Jn Railway Station', 'Raiwala', '10km'),
(151, 'Haridwar', 'Haridwar Holiday Home', 'Kansrao Station', 'Kansrao', '23km'),
(152, 'Haridwar', 'Haridwar Holiday Home', 'Virbhadra Station', 'Virbhadra', '18km'),
(153, 'Haridwar', 'Haridwar Holiday Home', 'Aithal Railway Station', 'Aithal', '22km'),
(154, 'Haridwar', 'Haridwar Holiday Home', 'Rishikesh Station', 'Rishikesh', '19km'),
(155, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Sobhapur Station', 'Sobhapur', '62km'),
(156, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Pipariya Station', 'Pipariya', '53km'),
(157, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Junnardeo Station', 'Junnardeo', '108km'),
(158, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Sohagpur Station', 'Sohagpur', '68km'),
(159, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Bankhedi Station', 'Bankhedi', '195km'),
(160, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Hirdagarh Station', 'Hirdagarh', '132km'),
(161, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Palachauri Station', 'Palachauri', '120km'),
(162, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Junehta Station', 'Kharsali', '71km'),
(163, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Markadhana Station', 'Markadhana', '172km'),
(164, 'Pachmarhi', 'Pachmarhi Holiday Home', 'Eklehra Railway Station', 'Eklehra', '111km'),
(165, 'Mysore', 'Mysore Holiday Home', 'Mysore Junction', 'Mysore', '3km'),
(166, 'Mysore', 'Mysore Holiday Home', 'Ashokapuram Railway Station', 'Ashokapuram', '189km'),
(167, 'Mysore', 'Mysore Holiday Home', 'Naganahalli Railway Station', 'Naganahalli', '12km'),
(168, 'Mysore', 'Mysore Holiday Home', 'Kadakola Railway Station', 'Kadakola', '19km'),
(169, 'Mysore', 'Mysore Holiday Home', 'Krishnarajasagar Railway Station', 'Krishnarajasagar', '21km'),
(170, 'Mysore', 'Mysore Holiday Home', 'Jandavapura Railway Station', 'Jandavapura', '30km'),
(171, 'Mysore', 'Mysore Holiday Home', 'Shrirangapatna Railway Station', 'Shrirangapatna', '21km'),
(172, 'Mysore', 'Mysore Holiday Home', 'Sujatapuram Halt', 'Sujata Puram', '20km'),
(173, 'Verawal', 'Verawal Holiday Home', 'Somanath Station', 'Somanath', '4km'),
(174, 'Verawal', 'Verawal Holiday Home', 'Adri Road Railway Station', 'Adri-Road', '5km'),
(175, 'Verawal', 'Verawal Holiday Home', 'Savni Station', 'Savni', '17km'),
(176, 'Verawal', 'Verawal Holiday Home', 'Chorwad Road Railway Station', 'Chorwad', '24km'),
(177, 'Verawal', 'Verawal Holiday Home', 'Jambur Station', 'Jambur', '38km'),
(178, 'Verawal', 'Verawal Holiday Home', 'Maliya Hatina Station', 'Maliya', '32km'),
(179, 'Verawal', 'Verawal Holiday Home', 'Chitravad Station', 'Chitravad', '143km'),
(180, 'Verawal', 'Verawal Holiday Home', 'Hadmatiya Gir Railway Station', 'Hadmatiya Gir', '47km'),
(181, 'Dwarka', 'Dwarka Holiday Home', 'Varvala Station', 'Varvala', '6km'),
(182, 'Dwarka', 'Dwarka Holiday Home', 'Gorinja Railway Station', 'Gorinja', '11km'),
(183, 'Dwarka', 'Dwarka Holiday Home', 'Bhimrana Railway Station', 'Bhimrana', '14km'),
(184, 'Dwarka', 'Dwarka Holiday Home', 'Mithapur Railway Station', 'Mithapur', '26km'),
(185, 'Dwarka', 'Dwarka Holiday Home', 'Okha-Madhi Railway Station', 'Okha', '24km'),
(186, 'Dwarka', 'Dwarka Holiday Home', 'Bhatiya Station', 'Bhatiya', '45km'),
(187, 'Dwarka', 'Dwarka Holiday Home', 'Bhopalka Railway Station', 'Bhopalka', '69km'),
(188, 'Dwarka', 'Dwarka Holiday Home', 'Bhatel Railway Station', 'Bhatel', '75km'),
(189, 'Gholwad', 'Gholwad Holiday Home', 'Bordi-Road Station', 'Barigaon', '8km'),
(190, 'Gholwad', 'Gholwad Holiday Home', 'Dahanu-Road Station', 'Dahanu', '16km'),
(191, 'Gholwad', 'Gholwad Holiday Home', 'Umbargam Railway Station', 'Umbargam', '14km'),
(192, 'Gholwad', 'Gholwad Holiday Home', 'Sanjan Railway Station', 'Sanjan', '20km'),
(193, 'Gholwad', 'Gholwad Holiday Home', 'Vangaon Railway Station', 'Vangaon', '34km'),
(194, 'Gholwad', 'Gholwad Holiday Home', 'Bhilad Railway Station', 'Bhilad', '31km'),
(195, 'Gholwad', 'Gholwad Holiday Home', 'Boisar Railway Station', 'Boisar', '41km'),
(196, 'Gholwad', 'Gholwad Holiday Home', 'Karambeli Railway Station', 'Karambeli', '36km'),
(197, 'Gholwad', 'Gholwad Holiday Home', 'Umroli Station', 'Umroli', '47km'),
(198, 'Agra', 'Agra Holiday Home', 'Idgah Agra Junction', 'Agra', '1km'),
(199, 'Agra', 'Agra Holiday Home', 'Agra Fort Railway Station', 'Agra', '1km'),
(200, 'Agra', 'Agra Holiday Home', 'Raja-Ki-Mandi Station', 'Agra', '3km'),
(201, 'Agra', 'Agra Holiday Home', 'Agra Cantonment Station', 'Agra', '3km'),
(202, 'Agra', 'Agra Holiday Home', 'Yamuna Bridge Railway Station', '--', '4km'),
(203, 'Agra', 'Agra Holiday Home', 'Billochpura Railway Station', 'Baluchpura', '4km'),
(204, 'Agra', 'Agra Holiday Home', 'Patholi Railway Station', 'Patholi', '8km'),
(205, 'Agra', 'Agra Holiday Home', 'Chhalesar Railway Station', 'Chhalesar', '114km'),
(206, 'Agra', 'Agra Holiday Home', 'Bichpuri Railway Station', 'Bichpuri', '10km'),
(207, 'Araku', 'Araku Holiday Home', 'Shimiliaguda Station', 'Shimiliaguda', '10km'),
(208, 'Araku', 'Araku Holiday Home', 'Karakavalasa Station', 'Karakavalasa', '77km'),
(209, 'Araku', 'Araku Holiday Home', 'Borraguhallu Railway Station', 'Borra', '36km'),
(210, 'Araku', 'Araku Holiday Home', 'Tyada Railway Station', 'Araku-Vishakhapatnam-Road', '37km'),
(211, 'Araku', 'Araku Holiday Home', 'Chimidi-palli Railway Station', 'Aguru', '56km'),
(212, 'Araku', 'Araku Holiday Home', 'Shivalingapuram Railway Station', 'Shivalingapuram', '44km'),
(213, 'Mount Abu', 'Mount Abu Holiday Home', 'Morthala Station', 'Morthala', '932km'),
(214, 'Mount Abu', 'Mount Abu Holiday Home', 'Kivarli Station', 'Kivarli', '27km'),
(215, 'Mount Abu', 'Mount Abu Holiday Home', 'Abu Road Station', '--', '40km'),
(216, 'Mount Abu', 'Mount Abu Holiday Home', 'Bhimana Railway Station', 'Bhimana', '34km'),
(217, 'Mount Abu', 'Mount Abu Holiday Home', 'Shri Amirgadh Railway Station', 'Amirgadh', '58km'),
(218, 'Mount Abu', 'Mount Abu Holiday Home', 'Swaropganj Railway Station', 'swaropganj', '42km'),
(219, 'Mount Abu', 'Mount Abu Holiday Home', 'Sarotra Road Railway Station', 'Sarotra', '66km'),
(220, 'Mount Abu', 'Mount Abu Holiday Home', 'Banas Station', 'Banas', '52km'),
(221, 'Mount Abu', 'Mount Abu Holiday Home', 'Iqbalgadh Station', 'Iqbalgadh', '71km'),
(222, 'Palani', 'Palani Holiday Home', 'Pushpattur station', 'Pushpattur', '15km'),
(223, 'Palani', 'Palani Holiday Home', 'Chatrappatti station', 'Chatrappatti', '17km'),
(224, 'Palani', 'Palani Holiday Home', 'Maivadi station', 'Myvadi,Madathukulam', '27km'),
(225, 'Palani', 'Palani Holiday Home', 'Udumalpet station', 'Udumalpet', '36km'),
(226, 'Palani', 'Palani Holiday Home', 'Oddanchatram Railway station', 'Oddanchatram', '27km'),
(227, 'Palani', 'Palani Holiday Home', 'Akkaraipatti Railway station', 'Akkaraipatti', '187km'),
(228, 'Palani', 'Palani Holiday Home', 'Gomangalam Railway station', 'Gomangalam', '51km'),
(229, 'Palani', 'Palani Holiday Home', 'Ambathurai Railway station', 'Ambathurai', '61km'),
(230, 'Palani', 'Palani Holiday Home', 'Dindigul Junction', 'Dindigul', '56km'),
(231, 'Coonoor', 'Coonoor Holiday Home', 'Aravankadu Railway Station', 'Aravankadu', '7km'),
(232, 'Coonoor', 'Coonoor Holiday Home', 'Ketti Railway Station', 'Ketti', '13km'),
(233, 'Coonoor', 'Coonoor Holiday Home', 'Lovedale Railway Station', 'Ooty', '18km'),
(234, 'Coonoor', 'Coonoor Holiday Home', 'Ooty Railway Station', 'Ooty', '20km'),
(235, 'Coonoor', 'Coonoor Holiday Home', 'Mettupalayam Railway Station', 'Mettupalayam', '45km'),
(236, 'Coonoor', 'Coonoor Holiday Home', 'Karamadai PSS Railway Station', 'Karamadai', '51km'),
(237, 'Coonoor', 'Coonoor Holiday Home', 'Coimbatore North Junction', 'Coimbatore', '80km'),
(238, 'Coonoor', 'Coonoor Holiday Home', 'Peelamedu Railway Station', 'Coimbatore', '90km'),
(239, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Tirupati West Railway Station', 'Tirupati', '2km'),
(240, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Tiruchanur Railway Station', 'Tirupati', '5km'),
(241, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Renigunta Junction', 'Renigunta', '16km'),
(242, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Pudi Railway Station', 'Pudi', '24km'),
(243, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Mamanduru Railway Station', 'Mamanduru', '23km'),
(244, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Kotala Railway Station', 'Kotala', '17km'),
(245, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Srivenkataperumal R Station', 'Srivenkataperumal R.', '32km'),
(246, 'Tirupati(Rly Station)', 'Tirupati Holiday Home', 'Yerpedu Station', 'Yerpedu', '31km'),
(247, 'Digha', 'Digha Holiday Home', 'Tikra Railway Station', 'Hirapur', '8km'),
(248, 'Digha', 'Digha Holiday Home', 'Sitalpur Railway Station', 'Sitalpur', '703km'),
(249, 'Digha', 'Digha Holiday Home', 'Kanthi Railway Station', 'Kanthi', '34km'),
(250, 'Digha', 'Digha Holiday Home', 'Jaleswar Railway Station', 'Jaleswar', '40km'),
(251, 'Digha', 'Digha Holiday Home', 'Lakshannath Railway Station', 'Lakshannath', '44km'),
(252, 'Ranchi', 'Ranchi Holiday Home', 'Argora Station', 'Argora', '3km'),
(253, 'Ranchi', 'Ranchi Holiday Home', 'Hatia Station', 'Hatia', '12km'),
(254, 'Ranchi', 'Ranchi Holiday Home', 'Namkum Railway Station', 'Namkum', '9km'),
(255, 'Ranchi', 'Ranchi Holiday Home', 'Balsiring Railway Station', 'Balasiring', '15km'),
(256, 'Ranchi', 'Ranchi Holiday Home', 'Piska Railway Station', 'Piska', '14km'),
(257, 'Ranchi', 'Ranchi Holiday Home', 'Tatisilwai Railway Station', 'Tati', '16km'),
(258, 'Ranchi', 'Ranchi Holiday Home', 'Lodhma Railway Station', 'Chandapara', '23km'),
(259, 'Ranchi', 'Ranchi Holiday Home', 'Itky Railway Station', 'Turguru', '25km'),
(260, 'Ranchi', 'Ranchi Holiday Home', 'Gangaghat Railway Station', 'Gangaghat', '752km'),
(261, 'Aurangabad', 'Aurangabad Holiday Home', 'Mukundawadi Railway Station', 'Mukundawadi', '5km'),
(262, 'Aurangabad', 'Aurangabad Holiday Home', 'Chikalthan Railway Station', 'Chikalthan', '58km'),
(263, 'Aurangabad', 'Aurangabad Holiday Home', 'Karmad Railway Station', 'Karmad', '21km'),
(264, 'Aurangabad', 'Aurangabad Holiday Home', 'Potul Railway Station', 'Potul', '30km'),
(265, 'Aurangabad', 'Aurangabad Holiday Home', 'Lasur Railway Station', 'Lasur', '39km'),
(266, 'Aurangabad', 'Aurangabad Holiday Home', 'Badnapur Railway Station', 'Badnapur', '40km'),
(267, 'Aurangabad', 'Aurangabad Holiday Home', 'Karanjgaon Railway Station', 'Karanjgaon', '152km'),
(268, 'Aurangabad', 'Aurangabad Holiday Home', 'Parsoda Railway Station', 'Parsoda', '54km'),
(269, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Deoghar station', 'Deoghar', '2km'),
(270, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Jasidih Junction', 'Jasidih', '7km'),
(271, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Kumrabad Rohini Station', 'Kumrabad Rohini', '7km'),
(272, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Shankarpur Station', 'Shankarpur', '405km'),
(273, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Mohanpur Station', 'Mohanpur', '397km'),
(274, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Chandan Railway Station', 'Chandan', '18km'),
(275, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Mathurapur Railway Station', 'Mathurapur', '396km'),
(276, 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'Ghormara Railway Station', 'Ghormara', '19km'),
(277, 'Barog', 'Barog Holiday Home', 'Kumarhatti Daagshai Station', 'Kumarhatti', '3km'),
(278, 'Barog', 'Barog Holiday Home', 'Solan Station', 'Solan', '8km'),
(279, 'Barog', 'Barog Holiday Home', 'Dharampur Station', 'Dharampur', '8km'),
(280, 'Barog', 'Barog Holiday Home', 'Salogra Station', 'Salogra', '16km'),
(281, 'Barog', 'Barog Holiday Home', 'Kandaghat Station', 'Kandaghat', '23km'),
(282, 'Barog', 'Barog Holiday Home', 'Kanoh Station', 'Kanoh', '256km'),
(283, 'Nainital', 'Nainital Holiday Home', 'Kathgodan Station', 'Kathgodan', '23km'),
(284, 'Nainital', 'Nainital Holiday Home', 'Haldwani Station', 'Haldwani', '30km'),
(285, 'Nainital', 'Nainital Holiday Home', 'Ramnagar Railway Station', 'Ramnagar', '65km'),
(286, 'Nainital', 'Nainital Holiday Home', 'Gularbhoj Railway Station', 'Gularbhoj', '69km'),
(287, 'Nainital', 'Nainital Holiday Home', 'Lal Kuan Station', 'Lal Kuan', '49km'),
(288, 'Nainital', 'Nainital Holiday Home', 'Beria Daulat Railway Station', 'Beria', '65km'),
(289, 'Nainital', 'Nainital Holiday Home', 'Pirumadara Station', 'Pirumadara', '74km'),
(290, 'Nainital', 'Nainital Holiday Home', 'Bazpur Railway Station', 'Bazpur', '38km'),
(291, 'Nainital', 'Nainital Holiday Home', 'Pantnagar Railway Station', 'Pantnagar', '57km'),
(292, 'Rameswaram', 'Rameswaram Holiday Home', 'Pamban Junction', 'Pamban', '12km'),
(293, 'Rameswaram', 'Rameswaram Holiday Home', 'Mandapam Railway Station', 'Mandapam', '21km'),
(294, 'Rameswaram', 'Rameswaram Holiday Home', 'Uchipuli Railway Station', 'Uchipuli', '35km'),
(295, 'Rameswaram', 'Rameswaram Holiday Home', 'Valantaravai Railway Station', 'Valantaravai', '47km'),
(296, 'Rameswaram', 'Rameswaram Holiday Home', 'Ramanathapuram Railway Station', 'Ramanathapuram', '59km'),
(297, 'Rameswaram', 'Rameswaram Holiday Home', 'Sattirakkudi Railway Station', 'Sattirakkudi', '72km'),
(298, 'Rameswaram', 'Rameswaram Holiday Home', 'Paramakkudi Railway Station', 'Paramakkudi', '93km'),
(299, 'Rameswaram', 'Rameswaram Holiday Home', 'Sudiyar Railway Station', 'Sudiyar', '213km'),
(300, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Lovedale Railway Station', 'Lovedale', '7km'),
(301, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Ketti Railway Station', 'Ketti', '8km'),
(302, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Aravankadu Railway Station', 'Aravankadu', '14km'),
(303, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Coonoor Railway Station', 'Coonoor', '18km'),
(304, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Mettupalayam Railway Station', 'Mettupalayam', '52km'),
(305, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Karamadai Railway Station', 'Karamadai', '58km'),
(306, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Nilambur Railway Station', 'Nilambur', '98km'),
(307, 'Udagamandalam(Ooty)', 'Udagamandalam(Ooty) Holiday Home', 'Coimbatore Railway Station', 'Coimbatore', '87km');

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
(1, '1254967359', 12466, 'Nagpur', 'Suchindram', 29, 3, 2017, 31, 3, 2017);

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
-- Table structure for table `region_table`
--

CREATE TABLE `region_table` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `region_name` varchar(200) DEFAULT NULL,
  `city_name` varchar(200) DEFAULT NULL,
  `holiday_home` varchar(300) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region_table`
--

INSERT INTO `region_table` (`id`, `reg_no`, `region_name`, `city_name`, `holiday_home`, `status`) VALUES
(1, 'RM10110', 'Central_Railway', 'Matheran', 'Matheran Holiday Home', 'approved'),
(2, 'RM10111', 'Central_Railway', 'Lonavala', 'Lonavala Holiday Home', 'approved'),
(3, 'RM10112', 'Central_Railway', 'Igatpuri', 'Igatpuri Holiday Home', 'approved'),
(4, 'RM10113', 'Central_Railway', 'Mahabaleshwar', 'Mahabaleshwar Holiday Home', 'approved'),
(5, 'RM10114', 'Central_Railway', 'Pandharpur', 'Pandharpur Holiday Home', 'approved'),
(6, 'RM10115', 'Central_Railway', 'Dadar', 'Dadar Holiday Home', 'approved'),
(7, 'RM10116', 'Central_Railway', 'Baidyanath Dham', 'Baidyanath Dham Holiday Home', 'approved'),
(8, 'RM10117', 'Central_Railway', 'Puri', 'Puri Holiday Home', 'approved'),
(9, 'RM10118', 'Central_Railway', 'Darjeeling', 'Darjeeling Holiday Home', 'approved'),
(10, 'RM10119', 'Central_Railway', 'Nainital', 'Nainital Holiday Home', 'approved'),
(11, 'RM10120', 'Central_Railway', 'Haridwar', 'Haridwar Holiday Home', 'approved'),
(12, 'RM10121', 'Northern_Railway', 'Shimla', 'Shimla Holiday Home', 'approved'),
(13, 'RM10122', 'Northern_Railway', 'Barog', 'Barog Holiday Home', 'approved'),
(14, 'RM10123', 'Northern_Railway', 'Baijnath Paprola', 'Baijnath Paprola Holiday Home', 'approved'),
(15, 'RM10124', 'Northern_Railway', 'Manali', 'Manali Holiday Home', 'approved'),
(16, 'RM10125', 'Northern_Railway', 'Haridwar', 'Haridwar Holiday Home', 'approved'),
(17, 'RM10126', 'Northern_Railway', 'Nainital', 'Nainital Holiday Home', 'approved'),
(18, 'RM10127', 'Northern_Railway', 'Mussoorie', 'Mussoorie Holiday Home', 'approved'),
(19, 'RM10128', 'Northern_Railway', 'Badrinath', 'Badrinath Holiday Home', 'approved'),
(20, 'RM10129', 'North_Eastern_Railway', 'Nainital', 'Nainital Holiday Home', 'approved'),
(21, 'RM10130', 'North_Eastern_Railway', 'Ranikhet', 'Ranikhet Holiday Home', 'approved'),
(22, 'RM10131', 'North_Eastern_Railway', 'Varanasi', 'Varanasi Holiday Home', 'approved'),
(23, 'RM10132', 'North_Eastern_Railway', 'Allahabad City', 'Allahabad City Holiday Home', 'approved'),
(24, 'RM10133', 'Northeast_Frontier_Railway', 'Shillong', 'Shillong Holiday Home', 'approved'),
(25, 'RM10134', 'Northeast_Frontier_Railway', 'Kurseong', 'Kurseong Holiday Home', 'approved'),
(26, 'RM10135', 'Northeast_Frontier_Railway', 'Nainital', 'Nainital Holiday Home', 'approved'),
(27, 'RM10137', 'Southern_Railway', 'Madurai', 'Madurai Holiday Home', 'approved'),
(28, 'RM10138', 'Southern_Railway', 'Courtallam', 'Courtallam Holiday Home', 'approved'),
(29, 'RM10139', 'Southern_Railway', 'Rameswaram', 'Rameswaram Holiday Home', 'approved'),
(30, 'RM10140', 'Southern_Railway', 'Palani', 'Palani Holiday Home', 'approved'),
(31, 'RM10141', 'Southern_Railway', 'Kanniyakumari', 'Kanniyakumari Holiday Home', 'approved'),
(32, 'RM10142', 'Southern_Railway', 'Coonoor', 'Coonoor Holiday Home', 'approved'),
(33, 'RM10143', 'Southern_Railway', 'Udagamandalam(Ooty)', 'Udagamandalam Holiday Home', 'approved'),
(34, 'RM10144', 'South_Central_Railway', 'Kolva Beach(Vascodagama)', 'Kolva Beach Holiday Home', 'approved'),
(35, 'RM10146', 'South_Central_Railway', 'Aurangabad', 'Aurangabad Holiday Home', 'approved'),
(36, 'RM10145', 'South_Central_Railway', 'Tirupati', 'Tirupati Holiday Home', 'approved'),
(37, 'RM10147', 'South_Eastern_Railway', 'Puri', 'Puri Holiday Home', 'approved'),
(38, 'RM10148', 'South_Eastern_Railway', 'Darjeeling', 'Darjeeling Holiday Home', 'approved'),
(39, 'RM10149', 'South_Eastern_Railway', 'Ranchi', 'Ranchi Holiday Home', 'approved'),
(40, 'RM10150', 'South_Eastern_Railway', 'Digha', 'Digha Holiday Home', 'approved'),
(41, 'RM10151', 'South_Eastern_Railway', 'Araku', 'Araku Holiday Home', 'approved'),
(42, 'RM10152', 'Western_Railway', 'Agra(Idgha)', 'Agra Holiday Home', 'approved'),
(43, 'RM10153', 'Western_Railway', 'Pali Hill,Bandra(Mumbai)', 'Bandra(Mumbai) Holiday Home', 'approved'),
(44, 'RM10154', 'Western_Railway', 'Lonavala', 'Lonavala Holiday Home', 'approved'),
(45, 'RM10155', 'Western_Railway', 'Udaipur', 'Udaipur Holiday Home', 'approved'),
(46, 'RM10156', 'Western_Railway', 'Mount Abu', 'Mount Abu Holiday Home', 'approved'),
(47, 'RM10157', 'Western_Railway', 'Verawal(Gujarat)', 'Verawal Holiday Home', 'approved'),
(48, 'RM10158', 'Western_Railway', 'Dwarka(Gujarat)', 'Dwarka Holiday Home', 'approved'),
(49, 'RM10159', 'Western_Railway', 'Gholvad', 'Gholvad Holiday Home', 'approved'),
(50, 'RM10160', 'Western_Railway', 'Bandra', 'Convalscent Home', 'approved'),
(51, 'RM10161', 'North_Western_Railway', 'Jaipur', 'Jaipur Holiday Home', 'approved'),
(52, 'RM10162', 'West_Central_Railway', 'Pachmarhi', 'Pachmarhi Holiday Home', 'approved'),
(53, 'RM10163', 'South_Western_Railway', 'Mysore', 'Mysore Holiday Home', 'approved');

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
(2, 'gov123445', 'Madurai Holiday Home', 'gov123445', 'helloworld', 'Madurai', 0, 0, 0, 0, 0, 0, 0, 0, 'Not Verified');

-- --------------------------------------------------------

--
-- Table structure for table `request_table`
--

CREATE TABLE `request_table` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `ap_pass` varchar(10) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_table`
--

INSERT INTO `request_table` (`id`, `reg_no`, `city`, `address`, `ap_pass`, `status`) VALUES
(2, 'gov7789589', 'AMRAVATI', 'SIPNA COET,AMRAVATI', '00000000', 0),
(9, 'gov14785236', 'Chittargarh', 'Udaipur,Rajastan', 'helloworld', 0),
(11, 'gov123456', 'Agra', 'Agra,Agra', 'helloji', 1),
(12, 'gov789545', 'Amravati', 'Ramgiri Hotel,Amravati', '1234', 0),
(14, 'gov123445', 'Madurai', 'Madurai Holiday Home', 'helloworld', 1);

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
(1, 'RM10110\r\n', 'Matheran Holiday Home', '3', '5', '4', '3', '2', '5', '6', '4'),
(2, 'RM10111\r\n', 'Lonavala Holiday Home', '10', '5', '6', '15', '3', '12', '2', '26'),
(3, 'RM10121\r\n', 'Shimla Holiday Home', '10', '2', '3', '6', '8', '12', '6', '8'),
(4, 'RM10122', 'Barog Holiday Home', '3', '9', '10', '15', '13', '7', '0', '18'),
(5, 'RM10123', 'Baijnath Paprola Holiday Home\r\n', '21', '5', '12', '4', '6', '17', '0', '8'),
(6, 'RM10124', 'Manali Holiday Home', '15', '23', '12', '14', '3', '4', '15', '2'),
(7, 'RM10126', 'Nainital Holiday Home', '5', '7', '12', '15', '16', '13', '2', '7'),
(8, 'RM10128\r\n', 'Badrinath Holiday Home', '23', '12', '13', '14', '16', '18', '2', '3'),
(9, 'RM10130\r\n', 'Ranikhet Holiday Home', '6', '2', '3', '5', '2', '1', '0', '12'),
(10, 'RM10131\r\n', 'Varanasi Holiday Home', '3', '4', '8', '12', '10', '13', '9', '17'),
(11, 'RM10133', 'Shillong Holiday Home', '1', '12', '3', '15', '0', '14', '18', '21'),
(12, 'RM10134', 'Kurseong Holiday Home', '0', '0', '1', '2', '14', '23', '2', '5'),
(13, 'RM10137', 'Madurai Holiday Home', '13', '5', '8', '7', '26', '3', '4', '8'),
(14, 'RM10138', 'Courtallam Holiday Home', '2', '12', '18', '17', '14', '12', '3', '5'),
(15, 'RM10139', 'Rameswaram Holiday Home', '0', '12', '13', '5', '2', '3', '21', '25'),
(16, 'RM10146', 'Aurangabad Holiday Home', '3', '5', '17', '12', '3', '5', '6', '1'),
(17, 'RM10147', 'Puri Holiday Home', '2', '15', '3', '17', '20', '15', '13', '20'),
(18, 'RM10148', 'Darjeeling Holiday Home', '3', '1', '4', '5', '12', '16', '13', '17'),
(19, 'RM10152', 'Agra Holiday Home', '3', '4', '5', '12', '3', '13', '17', '18'),
(20, 'RM10156', 'Mount Abu Holiday Home', '2', '3', '5', '14', '12', '16', '17', '12'),
(21, 'RM10159', 'Gholvad Holiday Home', '3', '5', '6', '12', '15', '17', '3', '7'),
(22, 'RM10160', 'Convalscent Home', '2', '5', '8', '9', '10', '0', '0', '2'),
(23, 'RM10161', 'Jaipur Holiday Home', '2', '15', '13', '3', '5', '14', '18', '2'),
(24, 'RM10162', 'Pachmarhi Holiday Home', '3', '5', '7', '8', '0', '21', '13', '14'),
(25, 'RM10163', 'Mysore Holiday Home', '3', '14', '6', '2', '0', '1', '0', '6'),
(26, 'RM10113', 'Mahabaleshwar Holiday Home', '2', '15', '2', '6', '11', '3', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_gov_data`
--
ALTER TABLE `admin_gov_data`
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
-- Indexes for table `co_ordinates`
--
ALTER TABLE `co_ordinates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emid` (`emid`);

--
-- Indexes for table `irctc_employees`
--
ALTER TABLE `irctc_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rail_id` (`rail_id`);

--
-- Indexes for table `neareststation`
--
ALTER TABLE `neareststation`
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
-- Indexes for table `region_table`
--
ALTER TABLE `region_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- Indexes for table `reg_holiday_homes`
--
ALTER TABLE `reg_holiday_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_table`
--
ALTER TABLE `request_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

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
-- AUTO_INCREMENT for table `admin_gov_data`
--
ALTER TABLE `admin_gov_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
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
-- AUTO_INCREMENT for table `co_ordinates`
--
ALTER TABLE `co_ordinates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `irctc_employees`
--
ALTER TABLE `irctc_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `neareststation`
--
ALTER TABLE `neareststation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
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
-- AUTO_INCREMENT for table `region_table`
--
ALTER TABLE `region_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `reg_holiday_homes`
--
ALTER TABLE `reg_holiday_homes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `request_table`
--
ALTER TABLE `request_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `total_rooms`
--
ALTER TABLE `total_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
