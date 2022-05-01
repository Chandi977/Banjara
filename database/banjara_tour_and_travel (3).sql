-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 07:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banjara tour and travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `password`) VALUES
('admin', 'Chandi Charan Mahato', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `checkin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `phone`, `city`, `state`, `address`, `zip`, `checkin`) VALUES
(89, 'abc@gmail.com', 'Kolkata', '6', 'Train', '12000', '2021-11-27', '2021-11-28', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `checkin` varchar(255) NOT NULL,
  `checkout` varchar(255) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `hotel` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `hotelid`, `email`, `checkin`, `checkout`, `adult`, `children`, `room`, `days`, `extra`, `destination`, `hotel`, `total`, `status`) VALUES
(19, 'Chandi', 6, 'abc@gmail.com', '12/12/2018', '12/18/2018', 1, 0, 1, 6, 'Luxury Bedding', 'Himachal Pradesh', 'Manali', 18585, 1),
(21, 'Chandi', 5, 'abc@gmail.com', '12/12/2018', '12/18/2018', 1, 0, 1, 6, 'Luxury Bedding,Free Wifi', 'Jammu & Kashmir', 'Ladakh', 22260, 1),
(22, 'Sourav', 1, 'sourav@gmail.com', '12/20/2021', '01/03/2022', 1, 0, 1, 14, 'Free Parking,Free Wifi,Spa/Sauna,Security cameras', 'Maharashtra', 'Mumbai', 71176, 0),
(23, 'Chandi', 21, 'abc@gmail.com', '01/26/2022', '02/03/2022', 2, 1, 1, 8, 'Free Parking,Free Wifi', 'Delhi', 'Red Fort', 23730, 0),
(24, 'Chandi', 5, 'abc@gmail.com', '12/23/2021', '12/20/2021', 2, 0, 1, 3, 'Luxury Bedding,Free Wifi', 'Jammu & Kashmir', 'Ladakh', 9030, 0),
(25, 'Chandi', 2, 'abc@gmail.com', '12/12/2018', '12/18/2018', 2, 0, 1, 6, 'Free Parking,Free Wifi', 'Goa', ' Palolem Beach', 32755, 0),
(26, 'Chandi', 1, 'abc@gmail.com', '01/04/2022', '02/01/2022', 4, 0, 1, 28, 'Satellite TV,Coffeemaker,Free Parking,Free Wifi', 'Maharashtra', 'Mumbai', 147602, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `contact`, `password`) VALUES
(8, 'Chandi', 'abc@gmail.com', '1234567890', '12345'),
(11, 'Falana Singh', 'falana@gmail.com', '1234567890', '1122'),
(18, 'Dhimkana Singh', 'dhimkana@gmail.com', '1234567890', '112211'),
(19, 'Sourav', 'sourav@gmail.com', '121314', '121314');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subdesti` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `hotelcharge` int(11) NOT NULL,
  `guidecharge` int(11) NOT NULL,
  `mobilenum` int(255) NOT NULL,
  `holidayemail` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `gallery` varchar(255) NOT NULL,
  `star` double NOT NULL,
  `about` varchar(1000) NOT NULL,
  `reviews` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `subdesti`, `amount`, `hotelcharge`, `guidecharge`, `mobilenum`, `holidayemail`, `path`, `gallery`, `star`, `about`, `reviews`) VALUES
(1, 'Maharashtra', 'Mumbai', 3000, 4999, 200, 1234567890, 'mumbaiTBTaT@gmail.com', 'data/mumbai.png', '', 4.5, ' Mumbai is a mix of iconic old-world charm architecture, strikingly modern high rises, cultural and traditional structures, and whatnot. The city is known as the commercial capital of India, but there is more to it than that. Mumbai is all about art, history,\r\n                    culture, food, theatre, cinema, nightlife and a lot more.', ''),
(2, 'Goa', ' Palolem Beach', 3000, 5999, 200, 1234567890, 'goaTBTaT@gmail.com', 'data/goa.png', '', 4, 'Goa is one of the most favorite destination among Indian tourists due to its pristine beaches. ... Every beach has its specialty, beauty, and serenity where tourists enjoy their best. Famous beaches in Goa: Baga, Candolim, Calangute, Morjim, Arambol, Anjuna, etc.', ''),
(3, 'West Bengal', 'Kolkata', 3000, 2000, 200, 1234567890, 'kolkataTBTaT@gmail.com', 'data/kolkata.png', '', 3.5, 'The former British capital of India, Kolkata, is known for its artistic brilliance, exceptional architecture, and legendary literary landscape. ... Fondly called the \'City of Joy\', it encapsulates the essence\r\n                    of Eastern India. Here are some of the most famous places in Kolkata which have Historical significance.', ''),
(5, 'Jammu & Kashmir', 'Ladakh', 3000, 4000, 200, 1234567890, 'ladakhTBTaT@gmail.com', 'data/ladakh.png', '', 5, 'Ladakh is most famous for breathtaking landscapes, the crystal clear skies, the highest mountain passes, thrilling adventure activities, Buddhist Monasteries and festivals. ... Ladakh gains a lot of popularity\r\n                    for being the only cold desert in India apart from bordering the World\'s highest saltwater Lake Pangong Lake.', ''),
(6, 'Himachal Pradesh', 'Manali', 3000, 3300, 200, 1234567890, 'manaliTBTaT@gmail.com', 'data/manali.png', '', 4, 'Manali is famous for being India\'s honeymoon capital. It is situated between the snow-capped slopes of the Pir Panjal and Dhauladhar ranges and offers stunning views of lush green forests, green meadows, and meandering blue streams. Kullu Manali hotels can be booked with ease by going online this summer.', ''),
(21, 'Delhi', 'Red Fort', 3000, 3000, 200, 1234567890, 'delhiTBTaT@gmail.com', 'data/delhi.png', '', 4.5, 'Delhi was the Capital city of the Mughal rulers and the British as well. ... Delhi also has shopping markets in some of the historically important places. Chandni Chowk, for instance, leaves visitors awestruck with its numerous hidden gems. Furthermore, Delhi is also famous for its street shops and street food as well.', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `userbookingid` int(11) NOT NULL,
  `transactiondate` date NOT NULL DEFAULT current_timestamp(),
  `billname` varchar(255) NOT NULL,
  `billemail` varchar(255) NOT NULL,
  `billphone` varchar(255) NOT NULL,
  `billaddress` varchar(255) NOT NULL,
  `billcity` varchar(255) NOT NULL,
  `billstate` varchar(255) NOT NULL,
  `billcountry` varchar(255) NOT NULL,
  `billzip` varchar(255) NOT NULL,
  `billupi` varchar(255) DEFAULT NULL,
  `billcardname` varchar(255) DEFAULT NULL,
  `billcardno` varchar(255) DEFAULT NULL,
  `billcardexpmonth` varchar(255) DEFAULT NULL,
  `billcardexpyear` varchar(255) DEFAULT NULL,
  `billcardcvv` varchar(255) DEFAULT NULL,
  `billamount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `userbookingid`, `transactiondate`, `billname`, `billemail`, `billphone`, `billaddress`, `billcity`, `billstate`, `billcountry`, `billzip`, `billupi`, `billcardname`, `billcardno`, `billcardexpmonth`, `billcardexpyear`, `billcardcvv`, `billamount`, `status`) VALUES
(6, 19, '2021-12-05', 'chandi', 'adsfaskjbkj@gmail.com', 'qw4234', 'fasfsd', '34fref', 'ewdasdsa', 'fdsfdsfdsf', 'fds', 'fdsfasdf', NULL, NULL, NULL, NULL, NULL, 18585, 1),
(9, 21, '2021-12-05', 'Sunny', 'sunny@gmail.com', '1234', 'dsfsd', 'sdfa', 'sdfad', 'fdsafd', 'fsdsdf', NULL, 'fdsasdfsd', '345344444444444444', 'fsadffsd', '2020', '4324', 22260, 1),
(11, 22, '2021-12-05', 'Sourav Kumar', 'sourav@gmail.com', '121314', 'delhi', 'gurgaon', 'delhi', 'India', '1234', '1234@oksbi.com', NULL, NULL, NULL, NULL, NULL, 71176, 1),
(12, 23, '2021-12-05', 'Chandi', 'abc@gmail.com', '1234567890', 'abc', 'xyz', 'mnp', 'klm', '1212', '1212@gmail.com', NULL, NULL, NULL, NULL, NULL, 23730, 1),
(13, 24, '2021-12-06', 'Aditya', 'aditya@gmail.com', '12312312', 'adityapur', 'JAmshedpur', 'Jharkhand', 'India', '831013', '1234@oksbi', NULL, NULL, NULL, NULL, NULL, 9030, 1),
(14, 25, '2021-12-06', 'Chandi', 'Chandi@gmail.com', '13243', 'adityapur', 'Jamshedpur', 'Jharkhand', 'India', '831013', '123334@oksbi', NULL, NULL, NULL, NULL, NULL, 32755, 1),
(15, 26, '2021-12-09', 'Chandi', 'pappumahato000@gmail.com', '7632479543', 'jasvdkhasgd', 'gfsddfd', 'fgdfdgdf', 'dfdfgfdgdf', 'gfdg', '1234@gmail.com', NULL, NULL, NULL, NULL, NULL, 147602, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviewtable`
--

CREATE TABLE `reviewtable` (
  `id` int(11) NOT NULL,
  `reviewsid` varchar(255) NOT NULL,
  `holidayid` varchar(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `aid` (`aid`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reviewtable`
--
ALTER TABLE `reviewtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reviewtable`
--
ALTER TABLE `reviewtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
