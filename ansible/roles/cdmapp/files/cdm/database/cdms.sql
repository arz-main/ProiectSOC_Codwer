-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 10:36 AM
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
-- Database: `cdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('unread','read','','') NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `title`, `message`, `created_at`, `status`, `user_id`, `order_id`, `reference_number`) VALUES
(109, '', 'Information About Order ID: 245 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:39', 'read', 31, 245, ''),
(110, '', 'Information About Order ID: 246 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:38', 'read', 31, 246, ''),
(111, '', 'Information About Order ID: 247 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:36', 'read', 31, 247, ''),
(112, '', 'Information About Order ID: 247 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:35', 'read', 31, 247, ''),
(113, '', 'Information About Order ID: 248 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:33', 'read', 31, 248, ''),
(114, '', 'Information About Order ID: 248 Has Been Updated and Moved to Proposal Status.', '2024-07-26 06:52:32', 'read', 31, 248, ''),
(115, '', 'Information About Order ID: 248 Has Been Updated and Moved to Order Status.', '2024-07-26 06:52:30', 'read', 31, 248, ''),
(116, '', 'Information About Order ID: 248 Has Been Updated and Moved to Payment Status.', '2024-07-26 06:52:28', 'read', 31, 248, ''),
(117, '', 'Information About Order ID: 248 Has Been Updated and Moved to Delivery Status.', '2024-07-26 06:52:26', 'read', 31, 248, ''),
(118, '', 'Information About Order ID: 248 Has Been Updated and Moved to Closed Status.', '2024-07-26 06:52:25', 'read', 31, 248, ''),
(119, '', 'Information About Order ID: 249 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:22', 'read', 31, 249, ''),
(120, '', 'Information About Order ID: 249 Has Been Updated and Moved to Proposal Status.', '2024-07-26 06:52:20', 'read', 31, 249, ''),
(121, '', 'Information About Order ID: 249 Has Been Updated and Moved to Order Status.', '2024-07-26 06:52:18', 'read', 31, 249, ''),
(122, '', 'Information About Order ID: 249 Has Been Updated and Moved to Payment Status.', '2024-07-26 06:52:17', 'read', 31, 249, ''),
(123, '', 'Information About Order ID: 249 Has Been Updated and Moved to Delivery Status.', '2024-07-26 06:52:15', 'read', 31, 249, ''),
(124, '', 'Information About Order ID: 250 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:13', 'read', 31, 250, ''),
(125, '', 'Information About Order ID: 250 Has Been Updated and Moved to Proposal Status.', '2024-07-26 06:52:12', 'read', 31, 250, ''),
(126, '', 'Information About Order ID: 250 Has Been Updated and Moved to Order Status.', '2024-07-26 06:52:10', 'read', 31, 250, ''),
(127, '', 'Information About Order ID: 249 Has Been Updated and Moved to Closed Status.', '2024-07-26 06:52:09', 'read', 31, 249, ''),
(128, '', 'Information About Order ID: 251 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:52:07', 'read', 31, 251, ''),
(129, '', 'Information About Order ID: 251 Has Been Updated and Moved to Proposal Status.', '2024-07-26 06:52:05', 'read', 31, 251, ''),
(130, '', 'Information About Order ID: 251 Has Been Updated and Moved to Order Status.', '2024-07-26 06:52:04', 'read', 31, 251, ''),
(131, '', 'Information About Order ID: 251 Has Been Updated and Moved to Payment Status.', '2024-07-26 06:44:10', 'read', 31, 251, ''),
(132, '', 'Information About Order ID: 251 Has Been Updated and Moved to Delivery Status.', '2024-07-26 03:44:32', 'read', 31, 251, ''),
(133, '', 'Information About Order ID: 252 Has Been Updated and Moved to Engagement Status.', '2024-07-26 03:44:30', 'read', 31, 252, ''),
(134, '', 'Information About Order ID: 252 Has Been Updated and Moved to Proposal Status.', '2024-07-26 03:44:29', 'read', 31, 252, ''),
(135, '', 'Information About Order ID: 252 Has Been Updated and Moved to Order Status.', '2024-07-26 03:44:27', 'read', 31, 252, ''),
(136, '', 'Information About Order ID: 252 Has Been Updated and Moved to Payment Status.', '2024-07-26 03:44:25', 'read', 31, 252, ''),
(137, '', 'Information About Order ID: 252 Has Been Updated and Moved to Delivery Status.', '2024-07-26 03:44:22', 'read', 31, 252, ''),
(138, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:54:55', 'read', 31, 253, ''),
(139, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Proposal Status.', '2024-07-26 07:03:33', 'read', 31, 253, ''),
(140, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Order Status.', '2024-07-26 07:03:31', 'read', 31, 253, ''),
(141, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Payment Status.', '2024-07-26 07:03:28', 'read', 31, 253, ''),
(142, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Delivery Status.', '2024-07-26 07:00:48', 'read', 31, 253, ''),
(143, '', 'Information About Client, Transaction Number: 255 Has Been Updated and Moved to Engagement Status.', '2024-08-05 08:23:25', 'unread', 31, 255, '');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `backup_id` int(11) NOT NULL,
  `database_name` varchar(255) NOT NULL,
  `database_size` decimal(10,2) NOT NULL,
  `backup_date` datetime NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middle_initial` varchar(10) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `city_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `company_name`, `firstname`, `middle_initial`, `lastname`, `contact_number`, `email_address`, `gender`, `city_address`) VALUES
(30, 'Xchire technology', 'baby rose', 'G', 'nebril', '+639101363293', 'b.nebril@ecoshiftcorp.com', 'Female', 'navotas city'),
(31, 'RD pawnshop inc', 'julipa', 'g', 'roluna', '+639955661887', 'jogonayon@gmail.com', 'Female', 'holy cross novaliches quezon city'),
(32, 'ecoshift corporation', 'mark', '', 'rivera', '+639298886708', 'm.rivera@ecoshiftcorp.com', 'Male', 'tondo manila'),
(33, 'Ecoshift Corporation', 'vincent', '', 'bote', '+639354047498', 'v.bote@ecoshiftcorp.com', 'Male', 'cainta'),
(34, 'Ecoshift Corporation', 'lyshara', 'l', 'espinosa', '+639273543301', 'l.espinosa@ecoshiftcorp.com', 'Female', 'navotas'),
(35, 'Ecoshift Corporation', 'aileen', 'p', 'vasquez', '+639157053224', 'a.vasquez@ecoshiftcorp.com', 'Female', 'pasig'),
(36, 'Ecoshift Corporation', 'kenny', '', 'caminade', '+639616607997', 'k.caminade@ecoshiftcorp.com', 'Male', 'navotas'),
(37, 'Ecoshift Corporation', 'sherylin', '', 'rapote', '+639505858425', 's.rapote@ecoshiftcorp.com', 'Female', 'd'),
(38, 'Ecoshift Corporation', 'rose', '', 'rosuello', '+639459903085', 'r.rosuello@ecoshiftcorp.com', 'Female', 'navotas'),
(47, 'xchire technology', 'li', '', 'd', '+633982938189', 'li@gmail.com', 'Male', 'Novaliches');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_category` varchar(255) NOT NULL,
  `customer_type` varchar(255) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `reference_number` varchar(50) DEFAULT NULL,
  `latest_engagement_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `uploaded_file` varchar(255) DEFAULT NULL,
  `quotation_reference_number` varchar(255) DEFAULT NULL,
  `proposal_remarks` text DEFAULT NULL,
  `date_qtn_sent` datetime DEFAULT NULL,
  `sales_order_reference_number` varchar(255) DEFAULT NULL,
  `order_remarks` text DEFAULT NULL,
  `date_of_sales_order_creation` datetime DEFAULT NULL,
  `warehouse_email` varchar(255) DEFAULT NULL,
  `payment_reference_number` varchar(100) DEFAULT NULL,
  `payment_remarks` text DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `delivery_reference_number` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `delivery_remarks` text DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `reason_cancelled` text NOT NULL,
  `uploaded_file_cancelled` varchar(255) NOT NULL,
  `date_closed` datetime DEFAULT NULL,
  `status_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('unread','read') DEFAULT 'unread',
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference_number` varchar(255) NOT NULL,
  `notification_sent` tinyint(1) DEFAULT 0,
  `is_follow_up_sent` tinyint(1) DEFAULT 0,
  `is_read` tinyint(1) DEFAULT 0,
  `admin_user_id` int(11) DEFAULT NULL,
  `is_admin_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `created_at`, `status`, `user_id`, `order_id`, `reference_number`, `notification_sent`, `is_follow_up_sent`, `is_read`, `admin_user_id`, `is_admin_read`) VALUES
(403, '', 'Information About Order ID: 244 Has Been Updated and Moved to Engagement Status.', '2024-07-24 04:10:48', 'read', 31, 244, '', 0, 0, 0, NULL, 0),
(404, '', 'Information About Order ID: 245 Has Been Updated and Moved to Engagement Status.', '2024-07-24 04:15:06', 'read', 31, 245, '', 0, 0, 0, NULL, 0),
(405, '', 'Information About Order ID: 246 Has Been Updated and Moved to Engagement Status.', '2024-07-24 04:33:10', 'read', 31, 246, '', 0, 0, 0, NULL, 0),
(406, '', 'Information About Order ID: 247 Has Been Updated and Moved to Engagement Status.', '2024-07-24 04:35:18', 'read', 31, 247, '', 0, 0, 0, NULL, 0),
(407, '', 'Information About Order ID: 247 Has Been Updated and Moved to Engagement Status.', '2024-07-24 04:36:42', 'read', 31, 247, '', 0, 0, 0, NULL, 0),
(408, '', 'Information About Order ID: 248 Has Been Updated and Moved to Engagement Status.', '2024-07-25 02:17:26', 'read', 31, 248, '', 0, 0, 0, NULL, 0),
(409, '', 'Information About Order ID: 248 Has Been Updated and Moved to Proposal Status.', '2024-07-25 02:21:32', 'read', 31, 248, '', 0, 0, 0, NULL, 0),
(410, '', 'Information About Order ID: 248 Has Been Updated and Moved to Order Status.', '2024-07-25 02:22:52', 'read', 31, 248, '', 0, 0, 0, NULL, 0),
(411, '', 'Information About Order ID: 248 Has Been Updated and Moved to Payment Status.', '2024-07-25 02:24:00', 'read', 31, 248, '', 0, 0, 0, NULL, 0),
(412, '', 'Information About Order ID: 248 Has Been Updated and Moved to Delivery Status.', '2024-07-25 02:25:09', 'read', 31, 248, '', 0, 0, 0, NULL, 0),
(413, '', 'Information About Order ID: 248 Has Been Updated and Moved to Closed Status.', '2024-07-25 02:26:28', 'read', 31, 248, '', 0, 0, 0, NULL, 0),
(414, '', 'Information About Order ID: 249 Has Been Updated and Moved to Engagement Status.', '2024-07-25 06:44:18', 'read', 31, 249, '', 0, 0, 0, NULL, 0),
(415, '', 'Information About Order ID: 249 Has Been Updated and Moved to Proposal Status.', '2024-07-25 06:53:20', 'read', 31, 249, '', 0, 0, 0, NULL, 0),
(416, '', 'Information About Order ID: 249 Has Been Updated and Moved to Order Status.', '2024-07-25 06:56:25', 'read', 31, 249, '', 0, 0, 0, NULL, 0),
(417, '', 'Information About Order ID: 249 Has Been Updated and Moved to Payment Status.', '2024-07-25 07:00:48', 'read', 31, 249, '', 0, 0, 0, NULL, 0),
(418, '', 'Information About Order ID: 249 Has Been Updated and Moved to Delivery Status.', '2024-07-25 07:03:56', 'read', 31, 249, '', 0, 0, 0, NULL, 0),
(419, '', 'Information About Order ID: 250 Has Been Updated and Moved to Engagement Status.', '2024-07-25 07:04:54', 'read', 31, 250, '', 0, 0, 0, NULL, 0),
(420, '', 'Information About Order ID: 250 Has Been Updated and Moved to Proposal Status.', '2024-07-25 07:05:49', 'read', 31, 250, '', 0, 0, 0, NULL, 0),
(421, '', 'Information About Order ID: 250 Has Been Updated and Moved to Order Status.', '2024-07-25 07:05:56', 'read', 31, 250, '', 0, 0, 0, NULL, 0),
(422, '', 'Order ID 250 has been cancelled. Reason: ', '2024-07-25 07:06:07', 'read', 31, 250, '', 0, 0, 0, NULL, 0),
(423, '', 'Information About Order ID: 249 Has Been Updated and Moved to Closed Status.', '2024-07-25 07:09:05', 'read', 31, 249, '', 0, 0, 0, NULL, 0),
(424, '', 'Information About Order ID: 251 Has Been Updated and Moved to Engagement Status.', '2024-07-25 07:15:10', 'read', 31, 251, '', 0, 0, 0, NULL, 0),
(425, '', 'Information About Order ID: 251 Has Been Updated and Moved to Proposal Status.', '2024-07-25 07:15:41', 'read', 31, 251, '', 0, 0, 0, NULL, 0),
(426, '', 'Information About Order ID: 251 Has Been Updated and Moved to Order Status.', '2024-07-25 07:16:22', 'read', 31, 251, '', 0, 0, 0, NULL, 0),
(427, '', 'Information About Order ID: 251 Has Been Updated and Moved to Payment Status.', '2024-07-25 07:16:51', 'read', 31, 251, '', 0, 0, 0, NULL, 0),
(428, '', 'Information About Order ID: 251 Has Been Updated and Moved to Delivery Status.', '2024-07-25 07:17:20', 'read', 31, 251, '', 0, 0, 0, NULL, 0),
(429, '', 'Information About Order ID: 252 Has Been Updated and Moved to Engagement Status.', '2024-07-26 03:31:24', 'read', 31, 252, '', 0, 0, 0, NULL, 0),
(430, '', 'Information About Order ID: 252 Has Been Updated and Moved to Proposal Status.', '2024-07-26 03:31:42', 'read', 31, 252, '', 0, 0, 0, NULL, 0),
(431, '', 'Information About Order ID: 252 Has Been Updated and Moved to Order Status.', '2024-07-26 03:31:58', 'read', 31, 252, '', 0, 0, 0, NULL, 0),
(432, '', 'Information About Order ID: 252 Has Been Updated and Moved to Payment Status.', '2024-07-26 03:32:11', 'read', 31, 252, '', 0, 0, 0, NULL, 0),
(433, '', 'Information About Order ID: 252 Has Been Updated and Moved to Delivery Status.', '2024-07-26 03:32:21', 'read', 31, 252, '', 0, 0, 0, NULL, 0),
(434, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Engagement Status.', '2024-07-26 06:54:38', 'read', 31, 253, '', 0, 0, 0, NULL, 0),
(435, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Proposal Status.', '2024-07-26 06:58:18', 'unread', 31, 253, '', 0, 0, 0, NULL, 0),
(436, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Order Status.', '2024-07-26 06:58:36', 'unread', 31, 253, '', 0, 0, 0, NULL, 0),
(437, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Payment Status.', '2024-07-26 06:58:50', 'unread', 31, 253, '', 0, 0, 0, NULL, 0),
(438, '', 'Information About Client, Transaction Number: 253 Has Been Updated and Moved to Delivery Status.', '2024-07-26 06:59:33', 'unread', 31, 253, '', 0, 0, 0, NULL, 0),
(439, '', 'Information About Client, Transaction Number: 255 Has Been Updated and Moved to Engagement Status.', '2024-08-05 08:23:25', 'unread', 31, 255, '', 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_agents`
--

CREATE TABLE `sales_agents` (
  `agent_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_initial` varchar(10) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_agents`
--

INSERT INTO `sales_agents` (`agent_id`, `firstname`, `lastname`, `middle_initial`, `gender`, `manager_id`) VALUES
(2, 'Mark', 'Mase', 'N', 'Male', 3),
(3, 'Crista', 'Ilaya', '', 'Female', 2),
(4, 'Siegfried', 'Marshall', 'Q', 'Male', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales_managers`
--

CREATE TABLE `sales_managers` (
  `manager_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_initial` varchar(10) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_managers`
--

INSERT INTO `sales_managers` (`manager_id`, `firstname`, `lastname`, `middle_initial`, `gender`) VALUES
(2, 'Roy', 'Tayuman', 'Y', 'Male'),
(3, 'Christian', 'Noveda', 'D', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `department_assignment` varchar(255) NOT NULL,
  `repeat_password` varchar(255) DEFAULT NULL,
  `role` enum('superadmin','leadsgeneration','engagement','proposal','order','payment','delivery','admin','user') NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `gender` varchar(20) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `nickname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `id_number`, `department_assignment`, `repeat_password`, `role`, `reset_token`, `reset_token_expiry`, `email`, `profile_photo`, `created_at`, `gender`, `contact_number`, `nickname`) VALUES
(28, 'admin', '$2y$10$nJPTuuNW0BRLrjFkE.Aj0uxIvfNn6NaiWTT/0tzVzfB66Ax0nXSOK', 'Leroux', 'Xchire', 'EC202301440', 'CSR Department', NULL, 'admin', NULL, NULL, 'xchireleroux@gmail.com', 'uploads/1cc936353a99784491557c68a5b2e292.jpg', '2024-07-15 03:54:39', 'Female', '09383882697', 'leroux vii sieghart'),
(31, 'les', '$2y$10$BKB7PCvN6Np3iZuZEDEFouunMDfIFXr7VuhEXljFQXCc1NctLQ5hy', 'Liesther', 'Roluna', 'EC202301446', 'Sales Department', NULL, 'user', NULL, NULL, 'l.roluna@ecoshiftcorp.com', 'uploads/viber_image_2024-07-03_11-22-33-462.jpg', '2024-07-22 04:16:20', 'Male', '+639383882697', 'Leroux y xchire'),
(32, 'tonying', '$2y$10$5Lj1uHyfYo.odXKRrCJNe.P6Fbf4XgcNXPPkCNP1/qQzK/jo5k1yy', 'Anthony', 'Melgarejo', 'EC202301447', 'Sales Department', NULL, 'user', NULL, NULL, 'a.melgarejo@ecoshiftcorp.com', 'uploads/Screenshot 2024-07-22 122544.png', '2024-07-22 04:26:30', 'Male', '+639615805539', 'tonying'),
(37, 'leroux', '$2y$10$9M5tN6RMQO4GMGsdpUrLtel9jTqkDEbsp2pMQMUT5w/1dbmqJW//a', 'Leroux', 'Xchire', '001', 'IT/WEB Department', NULL, 'superadmin', NULL, NULL, 'xchireleroux@gmail.com', 'uploads/pixlr-image-generator-35f64652-86bd-4f7e-bbc8-6524c678ccab_11zon.png', '2024-07-26 02:29:23', 'Male', '09383882697', 'LEROUX Y XCHIRE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`backup_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_manager_id` (`manager_id`),
  ADD KEY `fk_agent_id` (`agent_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_agents`
--
ALTER TABLE `sales_agents`
  ADD PRIMARY KEY (`agent_id`),
  ADD KEY `fk_manager` (`manager_id`);

--
-- Indexes for table `sales_managers`
--
ALTER TABLE `sales_managers`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `backup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `sales_agents`
--
ALTER TABLE `sales_agents`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_managers`
--
ALTER TABLE `sales_managers`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `fk_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `sales_agents` (`agent_id`),
  ADD CONSTRAINT `fk_manager_id` FOREIGN KEY (`manager_id`) REFERENCES `sales_managers` (`manager_id`);

--
-- Constraints for table `sales_agents`
--
ALTER TABLE `sales_agents`
  ADD CONSTRAINT `fk_manager` FOREIGN KEY (`manager_id`) REFERENCES `sales_managers` (`manager_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
