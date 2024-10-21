-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 01:29 PM
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
-- Database: `diet_chart`
--
CREATE DATABASE IF NOT EXISTS `diet_chart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `diet_chart`;

-- --------------------------------------------------------

--
-- Table structure for table `calorie_levels`
--

CREATE TABLE `calorie_levels` (
  `id` int(11) NOT NULL,
  `calorie_level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calorie_levels`
--

INSERT INTO `calorie_levels` (`id`, `calorie_level`) VALUES
(1, 'L1'),
(2, 'L2'),
(3, 'L3');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(11) NOT NULL,
  `cuisine_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `cuisine_name`) VALUES
(1, 'North Indian'),
(2, 'South Indian'),
(3, 'Keto'),
(4, 'Continental'),
(5, 'Vegan'),
(6, 'Intermittent fasting (16:8)');

-- --------------------------------------------------------

--
-- Table structure for table `diet_chart`
--

CREATE TABLE `diet_chart` (
  `id` int(11) NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `calorie_id` int(11) NOT NULL,
  `day_of_week` varchar(10) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `dish_name` varchar(100) NOT NULL,
  `calories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diet_chart`
--

INSERT INTO `diet_chart` (`id`, `cuisine_id`, `calorie_id`, `day_of_week`, `meal_id`, `dish_name`, `calories`) VALUES
(93, 2, 2, 'Monday', 1, 'Methi water', 0),
(94, 2, 2, 'Monday', 2, '2 Idlis with Sambar', 0),
(95, 2, 2, 'Monday', 3, 'Fruit of choice', 0),
(96, 2, 2, 'Monday', 4, '1 Ragi Mudde with 1/2 cup Sambar and 1 bowl Vegetable Salad', 0),
(97, 2, 2, 'Monday', 5, 'Sprouts Salad', 0),
(98, 2, 2, 'Monday', 6, 'Vegetable Sambar with 1 cup Rice', 0),
(99, 2, 2, 'Monday', 7, 'Green Tea', 0),
(100, 2, 2, 'Tuesday', 1, 'Methi water', 0),
(101, 2, 2, 'Tuesday', 2, 'Oats Pongal', 0),
(102, 2, 2, 'Tuesday', 3, 'Fruit of choice', 0),
(103, 2, 2, 'Tuesday', 4, 'Vegetable Pongal with 1/2 cup Yogurt', 0),
(104, 2, 2, 'Tuesday', 5, 'Boiled corn - 1 cup', 0),
(105, 2, 2, 'Tuesday', 6, '1 cup Dal + 1 cup Chawal', 0),
(106, 2, 2, 'Tuesday', 7, 'Green Tea', 0),
(107, 2, 2, 'Wednesday', 1, 'Methi water', 0),
(108, 2, 2, 'Wednesday', 2, 'Oats with nuts and seeds of choice', 0),
(109, 2, 2, 'Wednesday', 3, 'Fruit of choice', 0),
(110, 2, 2, 'Wednesday', 4, 'Rice with Rasam and Cucumber Salad', 0),
(111, 2, 2, 'Wednesday', 5, 'Makhana (Fox Nuts) - 1 cup', 0),
(112, 2, 2, 'Wednesday', 6, 'Cauliflower Rice with Stir-Fried Vegetables and 100 gm grilled paneer', 0),
(113, 2, 2, 'Wednesday', 7, 'Green Tea', 0),
(114, 2, 2, 'Thursday', 1, 'Methi water', 0),
(115, 2, 2, 'Thursday', 2, '1 Dosa with Coconut Chutney', 0),
(116, 2, 2, 'Thursday', 3, 'Fruit of choice', 0),
(117, 2, 2, 'Thursday', 4, '3 Vadas with 1/4 cup Coconut Chutney', 0),
(118, 2, 2, 'Thursday', 5, 'Chana Salad - 1 cup', 0),
(119, 2, 2, 'Thursday', 6, 'Vegetable Khichdi', 0),
(120, 2, 2, 'Thursday', 7, 'Green Tea', 0),
(121, 2, 2, 'Friday', 1, 'Methi water', 0),
(122, 2, 2, 'Friday', 2, '4-Appa with Sambar', 0),
(123, 2, 2, 'Friday', 3, 'Fruit of choice', 0),
(124, 2, 2, 'Friday', 4, '1 Roti + Sabzi of choice + Salad + Curd', 0),
(125, 2, 2, 'Friday', 5, 'Dhokla - 100 gm', 0),
(126, 2, 2, 'Friday', 6, 'Lemon Rice with Veggies', 0),
(127, 2, 2, 'Friday', 7, 'Green Tea', 0),
(128, 2, 2, 'Saturday', 1, 'Methi water', 0),
(129, 2, 2, 'Saturday', 2, 'Oats Chilla', 0),
(130, 2, 2, 'Saturday', 3, 'Fruit of choice', 0),
(131, 2, 2, 'Saturday', 4, 'Tomato Rice with 1/2 cup Curd', 0),
(132, 2, 2, 'Saturday', 5, 'Roasted Channa - 1 cup', 0),
(133, 2, 2, 'Saturday', 6, '2 Oats Chilla - Medium Sized', 0),
(134, 2, 2, 'Saturday', 7, 'Green Tea', 0),
(135, 2, 2, 'Sunday', 1, 'Methi water', 0),
(136, 2, 2, 'Sunday', 2, '2 boiled eggs with 2 bread toast', 0),
(137, 2, 2, 'Sunday', 3, 'Fruit of choice', 0),
(138, 2, 2, 'Sunday', 4, 'Curd Rice', 0),
(139, 2, 2, 'Sunday', 5, 'Makhana Salad - 1 cup', 0),
(140, 2, 2, 'Sunday', 6, 'Paneer Tikka and Veggies - 1 bowl', 0),
(141, 2, 2, 'Sunday', 7, 'Green Tea', 0),
(142, 4, 2, 'Monday', 1, 'Methi water', 0),
(143, 4, 2, 'Monday', 2, 'Overnight Oats - 1 medium bowl', 0),
(144, 4, 2, 'Monday', 3, 'Fruit of choice', 0),
(145, 4, 2, 'Monday', 4, 'Quinoa Salad - 1 big bowl', 0),
(146, 4, 2, 'Monday', 5, '1 Cup Sprouts Salad', 0),
(147, 4, 2, 'Monday', 6, 'Cauliflower Rice with Stir-Fried Vegetables and 100 gm grilled paneer', 0),
(148, 4, 2, 'Monday', 7, 'Green Tea', 0),
(149, 4, 2, 'Tuesday', 1, 'Methi water', 0),
(150, 4, 2, 'Tuesday', 2, '1 Omelet with 2 Bread Toast', 0),
(151, 4, 2, 'Tuesday', 3, 'Fruit of choice', 0),
(152, 4, 2, 'Tuesday', 4, 'Chicken Caesar Salad - 1 big bowl', 0),
(153, 4, 2, 'Tuesday', 5, 'Boiled Corn - 1 cup', 0),
(154, 4, 2, 'Tuesday', 6, 'Chicken and Vegetable Stir-Fry (150 g Chicken Breast, 165 cal)', 0),
(155, 4, 2, 'Tuesday', 7, 'Green Tea', 0),
(156, 4, 2, 'Wednesday', 1, 'Methi water', 0),
(157, 4, 2, 'Wednesday', 2, 'Chia Seed Pudding Bowl', 0),
(158, 4, 2, 'Wednesday', 3, 'Fruit of choice', 0),
(159, 4, 2, 'Wednesday', 4, 'Paneer and Vegetable Wrap (100 g Paneer)', 0),
(160, 4, 2, 'Wednesday', 5, 'Makhana (Fox Nuts) - 1 cup', 0),
(161, 4, 2, 'Wednesday', 6, 'Cabbage Soup', 0),
(162, 4, 2, 'Wednesday', 7, 'Green Tea', 0),
(163, 4, 2, 'Thursday', 1, 'Methi water', 0),
(164, 4, 2, 'Thursday', 2, '2 Oats Chilla - Medium', 0),
(165, 4, 2, 'Thursday', 3, 'Fruit of choice', 0),
(166, 4, 2, 'Thursday', 4, 'Chickpea Salad - 1 big bowl', 0),
(167, 4, 2, 'Thursday', 5, 'Chana Salad - 1 cup', 0),
(168, 4, 2, 'Thursday', 6, 'Chicken Tikka Wrap', 0),
(169, 4, 2, 'Thursday', 7, 'Green Tea', 0),
(170, 4, 2, 'Friday', 1, 'Methi water', 0),
(171, 4, 2, 'Friday', 2, 'Greek Yogurt with Mixed Fruits and Nuts', 0),
(172, 4, 2, 'Friday', 3, 'Fruit of choice', 0),
(173, 4, 2, 'Friday', 4, 'Rajma Salad - 1 big bowl', 0),
(174, 4, 2, 'Friday', 5, 'Dhokla - 100 gm', 0),
(175, 4, 2, 'Friday', 6, 'Fruit Custard (Sugarfree) with Lots of Fruits - 1 big bowl', 0),
(176, 4, 2, 'Friday', 7, 'Green Tea', 0),
(177, 4, 2, 'Saturday', 1, 'Methi water', 0),
(178, 4, 2, 'Saturday', 2, 'French Omelet - 3 Eggs', 0),
(179, 4, 2, 'Saturday', 3, 'Fruit of choice', 0),
(180, 4, 2, 'Saturday', 4, 'Egg Salad (1 big bowl with Mayonnaise)', 0),
(181, 4, 2, 'Saturday', 5, 'Roasted Channa - 1 cup', 0),
(182, 4, 2, 'Saturday', 6, '2 Oats Chilla - Medium Sized', 0),
(183, 4, 2, 'Saturday', 7, 'Green Tea', 0),
(184, 4, 2, 'Sunday', 1, 'Methi water', 0),
(185, 4, 2, 'Sunday', 2, '2 Boiled Eggs with 2 Bread Toast', 0),
(186, 4, 2, 'Sunday', 3, 'Fruit of choice', 0),
(187, 4, 2, 'Sunday', 4, 'Curd Rice', 0),
(188, 4, 2, 'Sunday', 5, 'Makhana Salad - 1 cup', 0),
(189, 4, 2, 'Sunday', 6, 'Paneer Tikka and Veggies - 1 bowl', 0),
(190, 4, 2, 'Sunday', 7, 'Green Tea', 0),
(191, 3, 1, 'Monday', 1, 'Bulletproof Coffee', 0),
(192, 3, 1, 'Monday', 2, 'Veggie Omelette', 0),
(193, 3, 1, 'Monday', 3, 'Oatmeal Milk with Almond and Seeds', 0),
(194, 3, 1, 'Monday', 4, 'Fish Curry + 1 Bowl Rice', 0),
(195, 3, 1, 'Monday', 5, 'Greek Salad', 0),
(196, 3, 1, 'Monday', 6, 'Stir-Fried Vegetables with Mushrooms + 2 Roti + Cucumber Raita', 0),
(197, 3, 1, 'Monday', 7, 'Coconut Water', 0),
(198, 3, 1, 'Tuesday', 1, 'Cucumber Mint Detox Water', 0),
(199, 3, 1, 'Tuesday', 2, 'Moong Dal Chilla', 0),
(200, 3, 1, 'Tuesday', 3, 'Greek Salad', 0),
(201, 3, 1, 'Tuesday', 4, 'Matar Paneer + 1 Bowl Rice', 0),
(202, 3, 1, 'Tuesday', 5, 'Mushroom Tikka', 0),
(203, 3, 1, 'Tuesday', 6, 'Baingan Bharta + 2 Roti', 0),
(204, 3, 1, 'Tuesday', 7, '1 Glass Turmeric Milk', 0),
(205, 3, 1, 'Wednesday', 1, 'Green Tea with Lemon', 0),
(206, 3, 1, 'Wednesday', 2, 'Boiled Egg Chaat', 0),
(207, 3, 1, 'Wednesday', 3, 'Spinach Soup', 0),
(208, 3, 1, 'Wednesday', 4, 'Grilled Chicken Salad', 0),
(209, 3, 1, 'Wednesday', 5, 'Sprouts Paneer Chaat', 0),
(210, 3, 1, 'Wednesday', 6, 'Soybean Curry', 0),
(211, 3, 1, 'Wednesday', 7, '2 Glass Turmeric Milk', 0),
(212, 3, 1, 'Thursday', 1, 'Ginger Lemon Detox Water', 0),
(213, 3, 1, 'Thursday', 2, 'Boiled Egg', 0),
(214, 3, 1, 'Thursday', 3, 'Orange', 0),
(215, 3, 1, 'Thursday', 4, 'Rajma Curry + Rice', 0),
(216, 3, 1, 'Thursday', 5, 'Lauki Vada', 0),
(217, 3, 1, 'Thursday', 6, 'Fish Fry', 0),
(218, 3, 1, 'Thursday', 7, 'Black Coffee', 0),
(219, 3, 1, 'Friday', 1, 'Cucumber Mint Detox Water', 0),
(220, 3, 1, 'Friday', 2, 'Vegetables Oats Poha', 0),
(221, 3, 1, 'Friday', 3, 'Lauki Soup', 0),
(222, 3, 1, 'Friday', 4, 'Malai Kofta', 0),
(223, 3, 1, 'Friday', 5, 'Greek Yogurt + Cucumber Salad', 0),
(224, 3, 1, 'Friday', 6, '2 Egg White Omelette', 0),
(225, 3, 1, 'Friday', 7, 'Black Coffee', 0),
(226, 3, 1, 'Saturday', 1, 'Bulletproof Coffee', 0),
(227, 3, 1, 'Saturday', 2, 'Egg White Omelette', 0),
(228, 3, 1, 'Saturday', 3, 'Sprouts Paneer Chaat', 0),
(229, 3, 1, 'Saturday', 4, 'Tandoori Chicken', 0),
(230, 3, 1, 'Saturday', 5, 'Spinach Soup', 0),
(231, 3, 1, 'Saturday', 6, 'Lauki Curry + 2 Roti', 0),
(232, 3, 1, 'Saturday', 7, 'Coconut Water', 0),
(233, 3, 1, 'Sunday', 1, 'Ginger Lemon Detox Water', 0),
(234, 3, 1, 'Sunday', 2, 'Grilled Paneer + Black Coffee', 0),
(235, 3, 1, 'Sunday', 3, 'Greek Salad', 0),
(236, 3, 1, 'Sunday', 4, 'Grilled Chicken with Steamed Vegetables', 0),
(237, 3, 1, 'Sunday', 5, 'Greek Salad', 0),
(238, 3, 1, 'Sunday', 6, 'Baingan Bharta + 2 Roti', 0),
(239, 3, 1, 'Sunday', 7, 'Black Coffee', 0),
(240, 3, 2, 'Monday', 1, 'Bulletproof Coffee', 0),
(241, 3, 2, 'Monday', 2, 'Veggie Omelette', 0),
(242, 3, 2, 'Monday', 3, 'Oatmeal Milk with Almond and Seeds', 0),
(243, 3, 2, 'Monday', 4, 'Fish Curry + 1 Bowl Rice', 0),
(244, 3, 2, 'Monday', 5, 'Greek Salad', 0),
(245, 3, 2, 'Monday', 6, 'Stir-Fried Vegetables with Mushrooms + 2 Roti + Cucumber Raita', 0),
(246, 3, 2, 'Monday', 7, 'Coconut Water', 0),
(247, 3, 2, 'Tuesday', 1, 'Cucumber Mint Detox Water', 0),
(248, 3, 2, 'Tuesday', 2, 'Moong Dal Chilla', 0),
(249, 3, 2, 'Tuesday', 3, 'Greek Salad', 0),
(250, 3, 2, 'Tuesday', 4, 'Matar Paneer + 1 Bowl Rice', 0),
(251, 3, 2, 'Tuesday', 5, 'Mushroom Tikka', 0),
(252, 3, 2, 'Tuesday', 6, 'Baingan Bharta + 2 Roti', 0),
(253, 3, 2, 'Tuesday', 7, '1 Glass Turmeric Milk', 0),
(254, 3, 2, 'Wednesday', 1, 'Green Tea with Lemon', 0),
(255, 3, 2, 'Wednesday', 2, 'Boiled Egg Chaat', 0),
(256, 3, 2, 'Wednesday', 3, 'Spinach Soup', 0),
(257, 3, 2, 'Wednesday', 4, 'Grilled Chicken Salad', 0),
(258, 3, 2, 'Wednesday', 5, 'Sprouts Paneer Chaat', 0),
(259, 3, 2, 'Wednesday', 6, 'Soybean Curry', 0),
(260, 3, 2, 'Wednesday', 7, '2 Glass Turmeric Milk', 0),
(261, 3, 2, 'Thursday', 1, 'Ginger Lemon Detox Water', 0),
(262, 3, 2, 'Thursday', 2, 'Boiled Egg', 0),
(263, 3, 2, 'Thursday', 3, 'Orange', 0),
(264, 3, 2, 'Thursday', 4, 'Rajma Curry + Rice', 0),
(265, 3, 2, 'Thursday', 5, 'Lauki Vada', 0),
(266, 3, 2, 'Thursday', 6, 'Fish Fry', 0),
(267, 3, 2, 'Thursday', 7, 'Black Coffee', 0),
(268, 3, 2, 'Friday', 1, 'Cucumber Mint Detox Water', 0),
(269, 3, 2, 'Friday', 2, 'Vegetables Oats Poha', 0),
(270, 3, 2, 'Friday', 3, 'Lauki Soup', 0),
(271, 3, 2, 'Friday', 4, 'Malai Kofta', 0),
(272, 3, 2, 'Friday', 5, 'Greek Yogurt + Cucumber Salad', 0),
(273, 3, 2, 'Friday', 6, '2 Egg White Omelette', 0),
(274, 3, 2, 'Friday', 7, 'Black Coffee', 0),
(275, 3, 2, 'Saturday', 1, 'Bulletproof Coffee', 0),
(276, 3, 2, 'Saturday', 2, 'Egg White Omelette', 0),
(277, 3, 2, 'Saturday', 3, 'Sprouts Paneer Chaat', 0),
(278, 3, 2, 'Saturday', 4, 'Tandoori Chicken', 0),
(279, 3, 2, 'Saturday', 5, 'Spinach Soup', 0),
(280, 3, 2, 'Saturday', 6, 'Lauki Curry + 2 Roti', 0),
(281, 3, 2, 'Saturday', 7, 'Coconut Water', 0),
(282, 3, 2, 'Sunday', 1, 'Ginger Lemon Detox Water', 0),
(283, 3, 2, 'Sunday', 2, 'Grilled Paneer + Black Coffee', 0),
(284, 3, 2, 'Sunday', 3, 'Greek Salad', 0),
(285, 3, 2, 'Sunday', 4, 'Grilled Chicken with Steamed Vegetables', 0),
(286, 3, 2, 'Sunday', 5, 'Greek Salad', 0),
(287, 3, 2, 'Sunday', 6, 'Baingan Bharta + 2 Roti', 0),
(288, 3, 2, 'Sunday', 7, 'Black Coffee', 0),
(289, 3, 3, 'Monday', 1, 'Bulletproof Coffee', 0),
(290, 3, 3, 'Monday', 2, 'Veggie Omelette', 0),
(291, 3, 3, 'Monday', 3, 'Oatmeal Milk with Almond and Seeds', 0),
(292, 3, 3, 'Monday', 4, 'Fish Curry + 1 Bowl Rice', 0),
(293, 3, 3, 'Monday', 5, 'Greek Salad', 0),
(294, 3, 3, 'Monday', 6, 'Stir-Fried Vegetables with Mushrooms + 2 Roti + Cucumber Raita', 0),
(295, 3, 3, 'Monday', 7, 'Coconut Water', 0),
(296, 3, 3, 'Tuesday', 1, 'Cucumber Mint Detox Water', 0),
(297, 3, 3, 'Tuesday', 2, 'Moong Dal Chilla', 0),
(298, 3, 3, 'Tuesday', 3, 'Greek Salad', 0),
(299, 3, 3, 'Tuesday', 4, 'Matar Paneer + 1 Bowl Rice', 0),
(300, 3, 3, 'Tuesday', 5, 'Mushroom Tikka', 0),
(301, 3, 3, 'Tuesday', 6, 'Baingan Bharta + 2 Roti', 0),
(302, 3, 3, 'Tuesday', 7, '1 Glass Turmeric Milk', 0),
(303, 3, 3, 'Wednesday', 1, 'Green Tea with Lemon', 0),
(304, 3, 3, 'Wednesday', 2, 'Boiled Egg Chaat', 0),
(305, 3, 3, 'Wednesday', 3, 'Spinach Soup', 0),
(306, 3, 3, 'Wednesday', 4, 'Grilled Chicken Salad', 0),
(307, 3, 3, 'Wednesday', 5, 'Sprouts Paneer Chaat', 0),
(308, 3, 3, 'Wednesday', 6, 'Soybean Curry', 0),
(309, 3, 3, 'Wednesday', 7, '2 Glass Turmeric Milk', 0),
(310, 3, 3, 'Thursday', 1, 'Ginger Lemon Detox Water', 0),
(311, 3, 3, 'Thursday', 2, 'Boiled Egg', 0),
(312, 3, 3, 'Thursday', 3, 'Orange', 0),
(313, 3, 3, 'Thursday', 4, 'Rajma Curry + Rice', 0),
(314, 3, 3, 'Thursday', 5, 'Lauki Vada', 0),
(315, 3, 3, 'Thursday', 6, 'Fish Fry', 0),
(316, 3, 3, 'Thursday', 7, 'Black Coffee', 0),
(317, 3, 3, 'Friday', 1, 'Cucumber Mint Detox Water', 0),
(318, 3, 3, 'Friday', 2, 'Vegetables Oats Poha', 0),
(319, 3, 3, 'Friday', 3, 'Lauki Soup', 0),
(320, 3, 3, 'Friday', 4, 'Malai Kofta', 0),
(321, 3, 3, 'Friday', 5, 'Greek Yogurt + Cucumber Salad', 0),
(322, 3, 3, 'Friday', 6, '2 Egg White Omelette', 0),
(323, 3, 3, 'Friday', 7, 'Black Coffee', 0),
(324, 3, 3, 'Saturday', 1, 'Bulletproof Coffee', 0),
(325, 3, 3, 'Saturday', 2, 'Egg White Omelette', 0),
(326, 3, 3, 'Saturday', 3, 'Sprouts Paneer Chaat', 0),
(327, 3, 3, 'Saturday', 4, 'Tandoori Chicken', 0),
(328, 3, 3, 'Saturday', 5, 'Spinach Soup', 0),
(329, 3, 3, 'Saturday', 6, 'Lauki Curry + 2 Roti', 0),
(330, 3, 3, 'Saturday', 7, 'Coconut Water', 0),
(331, 3, 3, 'Sunday', 1, 'Ginger Lemon Detox Water', 0),
(332, 3, 3, 'Sunday', 2, 'Grilled Paneer + Black Coffee', 0),
(333, 3, 3, 'Sunday', 3, 'Greek Salad', 0),
(334, 3, 3, 'Sunday', 4, 'Grilled Chicken with Steamed Vegetables', 0),
(335, 3, 3, 'Sunday', 5, 'Greek Salad', 0),
(336, 3, 3, 'Sunday', 6, 'Baingan Bharta + 2 Roti', 0),
(337, 3, 3, 'Sunday', 7, 'Black Coffee', 0),
(338, 1, 2, 'Monday', 1, 'Methi Water', 0),
(339, 1, 2, 'Monday', 2, '1 Moong Dal Cheela + Mint Chutney', 0),
(340, 1, 2, 'Monday', 3, 'Fruit of Choice', 0),
(341, 1, 2, 'Monday', 4, '1 Roti (~80 cal), Aloo Gobi (1 cup, ~150 cal), 1 Bowl Curd (~100 cal), Mixed Veg Salad (1 big bowl, ', 0),
(342, 1, 2, 'Monday', 5, '1 Cup Sprouts Salad', 0),
(343, 1, 2, 'Monday', 6, 'Cauliflower Rice with Stir-Fried Vegetables and 100 gm Grilled Paneer', 0),
(344, 1, 2, 'Monday', 7, 'Green Tea', 0),
(345, 1, 2, 'Tuesday', 1, 'Methi Water', 0),
(346, 1, 2, 'Tuesday', 2, '1 Bowl Vegetable Poha with Peanuts', 0),
(347, 1, 2, 'Tuesday', 3, 'Fruit of Choice', 0),
(348, 1, 2, 'Tuesday', 4, '1 Roti (~80 cal), Palak Paneer (1 cup, ~180 cal), 1 Mug Chaach (~60 cal), Cucumber Tomato Salad (1 b', 0),
(349, 1, 2, 'Tuesday', 5, 'Boiled Corn - 1 Cup', 0),
(350, 1, 2, 'Tuesday', 6, '1 Roti + Yellow Tarka Dal (1 big bowl) + 1 big bowl Mix Salad', 0),
(351, 1, 2, 'Tuesday', 7, 'Green Tea', 0),
(352, 1, 2, 'Wednesday', 1, 'Methi Water', 0),
(353, 1, 2, 'Wednesday', 2, '1 Bowl Upma', 0),
(354, 1, 2, 'Wednesday', 3, 'Fruit of Choice', 0),
(355, 1, 2, 'Wednesday', 4, '1 Roti (~80 cal), Bhindi Masala (1 cup, ~120 cal), 1 Bowl Curd (~100 cal), Carrot Beetroot Salad (1 ', 0),
(356, 1, 2, 'Wednesday', 5, 'Makhana (Fox Nuts) - 1 Cup', 0),
(357, 1, 2, 'Wednesday', 6, '1 Roti (~80 cal), Baingan Bharta (1 cup, ~130 cal), Carrot Beetroot Salad (1 big bowl, ~50 cal)', 0),
(358, 1, 2, 'Wednesday', 7, 'Green Tea', 0),
(359, 1, 2, 'Thursday', 1, 'Methi Water', 0),
(360, 1, 2, 'Thursday', 2, '1 Bowl Oats with Nuts and Seeds of Choice', 0),
(361, 1, 2, 'Thursday', 3, 'Fruit of Choice', 0),
(362, 1, 2, 'Thursday', 4, '1 Roti (~80 cal), Chana Masala (1 cup, ~160 cal), 1 Mug Chaach (~60 cal), Mixed Veg Salad (1 big bow', 0),
(363, 1, 2, 'Thursday', 5, 'Chana Salad - 1 Cup', 0),
(364, 1, 2, 'Thursday', 6, '1 Bowl Vegetable Khichdi', 0),
(365, 1, 2, 'Thursday', 7, 'Green Tea', 0),
(366, 1, 2, 'Friday', 1, 'Methi Water', 0),
(367, 1, 2, 'Friday', 2, 'Chia Seed Pudding with Nuts and Seeds for Topping', 0),
(368, 1, 2, 'Friday', 3, 'Fruit of Choice', 0),
(369, 1, 2, 'Friday', 4, '1 Roti (~80 cal), Lauki Sabzi (1 cup, ~100 cal), 1 Bowl Curd (~100 cal), Cucumber Tomato Salad (1 bi', 0),
(370, 1, 2, 'Friday', 5, 'Dhokla - 100 gm', 0),
(371, 1, 2, 'Friday', 6, '1 Bowl Moong Dal Soup (~150 cal) + 1 Small Bowl Steamed Vegetables (~100 cal) + 1 Cucumber (~30 cal)', 0),
(372, 1, 2, 'Friday', 7, 'Green Tea', 0),
(373, 1, 2, 'Saturday', 1, 'Methi Water', 0),
(374, 1, 2, 'Saturday', 2, '1 Bowl Vermicelli with Lots of Veggies', 0),
(375, 1, 2, 'Saturday', 3, 'Fruit of Choice', 0),
(376, 1, 2, 'Saturday', 4, 'Cholle (1 cup) + Rice (1 cup)', 0),
(377, 1, 2, 'Saturday', 5, 'Roasted Channa - 1 Cup', 0),
(378, 1, 2, 'Saturday', 6, '2 Oats Chilla - Medium Sized', 0),
(379, 1, 2, 'Saturday', 7, 'Green Tea', 0),
(380, 1, 2, 'Sunday', 1, 'Methi Water', 0),
(381, 1, 2, 'Sunday', 2, '2 Boiled Eggs with 2 Bread Toast', 0),
(382, 1, 2, 'Sunday', 3, 'Fruit of Choice', 0),
(383, 1, 2, 'Sunday', 4, '1 Roti (~80 cal), Mixed Vegetable Sabzi (1 cup, ~150 cal), 1 Bowl Curd (~100 cal), Mixed Veg Salad (', 0),
(384, 1, 2, 'Sunday', 5, 'Makhana Salad - 1 Cup', 0),
(385, 1, 2, 'Sunday', 6, 'Paneer Tikka and Veggies - 1 Bowl', 0),
(386, 1, 2, 'Sunday', 7, 'Green Tea', 0),
(387, 5, 1, 'Monday', 1, 'Cucumber Mint Detox Water', 0),
(388, 5, 1, 'Monday', 2, 'Vegetable Poha', 0),
(389, 5, 1, 'Monday', 3, 'Apple', 0),
(390, 5, 1, 'Monday', 4, 'Lauki Curry + 2 Roti', 0),
(391, 5, 1, 'Monday', 5, 'Carrot Slices with Nut Butter', 0),
(392, 5, 1, 'Monday', 6, 'Tofu Curry with Quinoa & Roasted Carrots', 0),
(393, 5, 1, 'Monday', 7, 'Coconut Water', 0),
(394, 5, 1, 'Tuesday', 1, 'Cucumber Mint Detox Water', 0),
(395, 5, 1, 'Tuesday', 2, '4 Dhokla', 0),
(396, 5, 1, 'Tuesday', 3, 'Orange', 0),
(397, 5, 1, 'Tuesday', 4, 'Dal Makhani Mix Veg + 2 Roti', 0),
(398, 5, 1, 'Tuesday', 5, 'Roasted Peanuts or a Handful of Almonds', 0),
(399, 5, 1, 'Tuesday', 6, 'Spinach Dal with Brown Rice and Mix Veg', 0),
(400, 5, 1, 'Tuesday', 7, 'Lemon Mint Water', 0),
(401, 5, 1, 'Wednesday', 1, 'Ginger Lemon Detox Water', 0),
(402, 5, 1, 'Wednesday', 2, 'Moong Dal Chilla', 0),
(403, 5, 1, 'Wednesday', 3, 'Papaya', 0),
(404, 5, 1, 'Wednesday', 4, 'Quinoa Pulao with Mixed Vegetable and Cucumber Tomato Salad', 0),
(405, 5, 1, 'Wednesday', 5, '1 Bowl of Seasonal Fruit', 0),
(406, 5, 1, 'Wednesday', 6, 'Mushroom Stir-Fry with Millet Roti and Coconut Chutney', 0),
(407, 5, 1, 'Wednesday', 7, 'Green Tea', 0),
(408, 5, 1, 'Thursday', 1, 'Ginger Lemon Detox Water', 0),
(409, 5, 1, 'Thursday', 2, 'Vegetable Daliya', 0),
(410, 5, 1, 'Thursday', 3, 'Roasted Fox Nuts', 0),
(411, 5, 1, 'Thursday', 4, 'Bajra Roti with Masoor Dal and Cabbage Sabji', 0),
(412, 5, 1, 'Thursday', 5, '1 Bowl of Roasted Makhana', 0),
(413, 5, 1, 'Thursday', 6, 'Soya Curry + 2 Roti', 0),
(414, 5, 1, 'Thursday', 7, 'Coconut Water', 0),
(415, 5, 1, 'Friday', 1, 'Lemon Water', 0),
(416, 5, 1, 'Friday', 2, '5 Appe', 0),
(417, 5, 1, 'Friday', 3, 'Apple', 0),
(418, 5, 1, 'Friday', 4, 'Brown Rice with Chana Masala and Cucumber Salad', 0),
(419, 5, 1, 'Friday', 5, 'Soya Besan Cheela', 0),
(420, 5, 1, 'Friday', 6, 'Vegan Palak Tofu with Quinoa and Beetroot Salad', 0),
(421, 5, 1, 'Friday', 7, 'Green Tea', 0),
(422, 5, 1, 'Saturday', 1, 'Cinnamon Apple Detox Water', 0),
(423, 5, 1, 'Saturday', 2, 'Gobhi Paratha', 0),
(424, 5, 1, 'Saturday', 3, 'Orange', 0),
(425, 5, 1, 'Saturday', 4, '1 Bowl Each Rajma + Rice', 0),
(426, 5, 1, 'Saturday', 5, 'Cucumber Beetroot Salad', 0),
(427, 5, 1, 'Saturday', 6, 'Moong Dal Khichdi with Roasted Papad & Salad', 0),
(428, 5, 1, 'Saturday', 7, 'Carrot Orange Juice', 0),
(429, 5, 1, 'Sunday', 1, 'Cinnamon Apple Detox Water', 0),
(430, 5, 1, 'Sunday', 2, 'Poha with Peanuts', 0),
(431, 5, 1, 'Sunday', 3, 'Papaya', 0),
(432, 5, 1, 'Sunday', 4, '1 Bowl Aloo Methi + 1 Bowl Dal Makhani + 2 Roti', 0),
(433, 5, 1, 'Sunday', 5, '1 Bowl of Seasonal Fruit', 0),
(434, 5, 1, 'Sunday', 6, 'Vegetable Biryani with Soy Yogurt Raita', 0),
(435, 5, 1, 'Sunday', 7, 'Green Tea', 0),
(436, 6, 1, 'Monday', 4, 'Quinoa Upma with Vegetable & Curd', 0),
(437, 6, 1, 'Monday', 5, 'Buttermilk', 0),
(438, 6, 1, 'Monday', 6, 'Grilled Fish + Cucumber Salad', 0),
(439, 6, 1, 'Tuesday', 4, 'Masala Oats with Mixed Vegetable + Boiled Egg', 0),
(440, 6, 1, 'Tuesday', 5, 'Fruit Salad', 0),
(441, 6, 1, 'Tuesday', 6, 'Vegetable Stir-fry with Paneer', 0),
(442, 6, 1, 'Wednesday', 4, 'Vegetable Dalia with Mixed Salad', 0),
(443, 6, 1, 'Wednesday', 5, 'Roasted Makhana', 0),
(444, 6, 1, 'Wednesday', 6, 'Ragi Dosa with Sambar & Coconut Chutney', 0),
(445, 6, 1, 'Thursday', 4, 'Brown Rice with Sambar and Stir-Fried Veggies + Curd', 0),
(446, 6, 1, 'Thursday', 5, 'Sprout Salad with Chopped Veggies & Lemon', 0),
(447, 6, 1, 'Thursday', 6, 'Paneer Curry with Veggies + 2 Roti', 0),
(448, 6, 1, 'Friday', 4, 'Moong Dal Cheela + 1 Boiled Egg', 0),
(449, 6, 1, 'Friday', 5, 'Seasonal Fruit', 0),
(450, 6, 1, 'Friday', 6, 'Vegetable Pulao with Mixed Vegetable Raita', 0),
(451, 6, 1, 'Saturday', 4, 'Vegetable Khichdi with Small Bowl Curd + Roasted Papad', 0),
(452, 6, 1, 'Saturday', 5, 'Buttermilk', 0),
(453, 6, 1, 'Saturday', 6, 'Grilled Tofu with Sauteed Veggies + 1 Roti', 0),
(454, 6, 1, 'Sunday', 4, 'Oats Idli with Sambar and Coconut Chutney', 0),
(455, 6, 1, 'Sunday', 5, 'Fruit Salad', 0),
(456, 6, 1, 'Sunday', 6, 'Ragi Dosa with Sambar & Coconut Chutney', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `dish_id` int(11) NOT NULL,
  `dish_name` varchar(100) NOT NULL,
  `calories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dish_id`, `dish_name`, `calories`) VALUES
(1, 'Masala Tea', 30),
(2, 'Bread', 80),
(3, 'Omelette', 150),
(4, 'Fried Rice', 250),
(5, 'Salad', 100),
(6, 'Pasta', 200),
(7, 'Fruit Salad', 150),
(8, 'Sandwich', 200),
(9, 'Idli', 50),
(10, 'Dosa', 100);

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`) VALUES
(1, 'Early Morning'),
(2, 'Breakfast'),
(3, 'Mid-Morning'),
(4, 'Lunch'),
(5, 'Evening'),
(6, 'Dinner'),
(7, 'Post Dinner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calorie_levels`
--
ALTER TABLE `calorie_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diet_chart`
--
ALTER TABLE `diet_chart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`),
  ADD KEY `calorie_id` (`calorie_id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dish_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calorie_levels`
--
ALTER TABLE `calorie_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `diet_chart`
--
ALTER TABLE `diet_chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `dish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diet_chart`
--
ALTER TABLE `diet_chart`
  ADD CONSTRAINT `diet_chart_ibfk_1` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`),
  ADD CONSTRAINT `diet_chart_ibfk_2` FOREIGN KEY (`calorie_id`) REFERENCES `calorie_levels` (`id`),
  ADD CONSTRAINT `diet_chart_ibfk_3` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
