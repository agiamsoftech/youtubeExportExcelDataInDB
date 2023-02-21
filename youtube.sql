-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 05:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suffix`
--

CREATE TABLE `suffix` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suffix`
--

INSERT INTO `suffix` (`id`, `name`) VALUES
(1, '1,2,3,4'),
(2, '4,3,2,1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`) VALUES
(1, 'No.', 'Option', 'Description'),
(2, '1', 'Inquiry Registered', 'When top portion filled and Inquiry Number given'),
(3, '2', 'Inquiry Entered', 'When details are entered and saved'),
(4, '6', 'Quotation Made', 'When quotation is saved'),
(5, '8', 'Quotation Sent', 'When it is sent by email'),
(6, '7', 'Partial Quotation Sent', 'When all items are not priced'),
(7, '9', 'Revised Quotation Sent', 'When revison number entered'),
(8, '5', 'Regret', 'To be filled manually'),
(9, '3', 'Customer Clarification', 'When clarification is asked'),
(10, '4', 'Clarification Sent', 'When clarification is sent to Supplier'),
(11, '10', 'Order Received', 'When Sales Order is made for the Inquiry'),
(12, '12', 'Order Lost', 'Manually filled after follow up with Customer'),
(13, '11', 'Undecided', 'Manually filled after follow up'),
(14, 'No.', 'Option', 'Description'),
(15, '1', 'Out Inquiry created', 'When Out Inquiry Made'),
(16, '3', 'Need Information', 'When Supplier asks for more information'),
(17, '2', 'Out Inquiry Sent', 'When email send'),
(18, '4', 'Information Sent', 'When information is sent to Supplier'),
(19, '5', 'Quotation Received', 'When price is entered'),
(20, '6', 'Regret', 'When supplier regrets'),
(21, 'No.', 'Option', 'Description'),
(22, '1', 'Order Entered', 'When order is entered in the system and Sales Order number generated'),
(23, '3', 'Order Ack. (Sent)', 'When Order Acknowledgement is made and sent'),
(24, '4', 'Proforma Inv. (Sent)', 'When Proforma Invoice is generated and sent'),
(25, '5', 'Advance Pmt. Received', 'When advance payment is received'),
(26, '6', 'Order Placed (Full)', 'When PO is made for all items'),
(27, '7', 'Order Placed (Partial)', 'When PO is made for partial items'),
(28, '8', 'Order Under Clarification', 'When there is a Clarification in the Order from Customer'),
(29, '9', 'Clarification Received', 'When clarification is received'),
(30, '13', 'Sent for Approval', 'When approval is asked for anything'),
(31, '14', 'Approval Received', 'When Approval is received'),
(32, '15', 'Fulfilled (Partial)', 'When partial order is fulfilled'),
(33, '16', 'Fulfilled (Complete)', 'When complete order is fulfilled'),
(34, '19', 'Order Closed', 'When full payment is received'),
(35, '10', 'Cancelled', 'Order is Cancelled'),
(36, '11', 'Picking Generated (Full)', 'When picking slip is generated for all items'),
(37, '12', 'Picking Generated (Partial)', 'When picking slip is generated for partial items'),
(38, '17', 'Stopped', 'When Order is Stopped'),
(39, '18', 'Re-Opened', 'When Order is Re-Opened'),
(40, '2', 'Order Received (E-Comm)', 'When order is received from E-commerce store'),
(41, 'No.', 'Option', 'Description'),
(42, '1', 'PO Made', 'When the PO is made'),
(43, '2', 'PO Sent', 'When PO is sent by email'),
(44, '3', 'Acknowledgement Recd.', 'When the Ack. Date is filled'),
(45, '4', 'Proforma Inv. Recd.', 'When Proforma Inv. Is entered in the system for payment'),
(46, '5', 'Advance Paid (Full)', 'When advance payment is made for the full amount'),
(47, '6', 'Advance Paid (Partial)', 'When advance payment is made for the partial amount'),
(48, '7', 'PO Clarification', 'When there is a Clarification from Supplier'),
(49, '8', 'Clarification Sent', 'When clarification is sent to Supplier'),
(50, '5', 'Ready for Despatch', 'When material is ready'),
(51, '6', 'MOT Requested', 'When mode of tranport is requested from the customer'),
(52, '7', 'MOT Received', 'When the mode is given by customer'),
(53, '8', 'Shipping Instruction Sent', 'When shipping instruction is sent to the Supplier'),
(54, '9', 'Material Received (Full)', 'When full material is received'),
(55, '10', 'Drop Shipped (Full)', 'When full material is shipped to Customer direct and full order is fulfilled (only for special PO for customer)'),
(56, '12', 'Drop Shipped (Partial)', 'When partial material is shipped to Customer direct and partial order is fulfilled (only for special PO for customer)'),
(57, '13', 'Under MDR', 'When there is a descripency in the shipment'),
(58, '14', 'MDR Resolved', 'When descripancy is resolved'),
(59, '15', 'PO Closed', 'When completely shipped and payment made to Supplier'),
(60, '16', 'PO Cancelled', 'Purchase Order is Cancelled'),
(61, 'No.', 'Option', 'Description'),
(62, '1', 'Requisition created', 'When details are entered and saved'),
(63, '2', 'PO made', 'When Po is created'),
(64, '3', 'Received (Partial)', 'When Good Received is created'),
(65, '4', 'Received (Complete)', 'When Good received Completely.'),
(66, '5', 'Regret', 'To be filled manually'),
(67, '6', 'Undecided', 'Manually filled after follow up'),
(68, '7', 'Cancelled', 'Requisition Cancelled'),
(69, 'No.', 'Option', 'Description'),
(70, '1', 'New-Not Contacted', 'When a lead is entered and there is no activity or anything initiated'),
(71, '2', 'Working-In Process', 'Where there is any activity added in any of the contacts of the company'),
(72, '3', 'On Hold', 'When the lead company is put on hold for any reason'),
(73, '4', 'Closed-Not Converted', 'If the lead is closed and there is no chance of converting'),
(74, '5', 'Converted', 'When the lead is converted to a Customer, once selected, all the details of the lead should automatically shift to Customer'),
(75, '6', 'Manual Filled', 'There can be a provision for fill our own in Status Tab'),
(76, 'No.', 'Option', 'Description'),
(77, '1', 'In Progress', 'When Activity is created'),
(78, '2', 'Completed', 'When finished'),
(79, '3', 'Cancelled', 'When the activity is cancelled'),
(80, '4', 'Demo Scheduled', 'Demo Scheduled'),
(81, 'No.', 'Option', 'Description'),
(82, '1', 'Created', 'When Physical Count has been saved'),
(83, '2', 'Entered', 'When Physical Count has been entered into database'),
(84, '3', 'Validated', 'When Physical Count has been validated'),
(85, 'Project Name:- …...............................................................', '', ''),
(86, 'Sl.', 'Name', 'S'),
(87, 'Project Name:- …...............................................................', '', ''),
(88, 'Sl.', 'Name', 'S'),
(89, 'Project Name:- …...............................................................', '', ''),
(90, 'Sl.', 'Name', 'S'),
(91, 'Project Name:- …...............................................................', '', ''),
(92, 'Sl.', 'Name', 'S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suffix`
--
ALTER TABLE `suffix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suffix`
--
ALTER TABLE `suffix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
