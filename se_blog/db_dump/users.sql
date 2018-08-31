-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 31, 2018 at 08:28 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `isAdmin`) VALUES
(1, 'BurbaCodes', 'dilushadasanayaka@gmail.com', '$2y$10$rO5B61MhRXNG9GMnc/IsQ.XfVgS.uewYhaitRwfLzH62Awo8bN4Yy', '5HfjQE87tU7jyF02cvrbkzl9eeHS9SM9gPoJT1PCUHWnEScuKUKMA7O6boAV', '2018-08-31 02:13:15', '2018-08-31 02:13:15', 0),
(2, 'Dilusha Dasanayaka', 'dilushadasanayaka@yahoo.com.au', '$2y$10$MzZ/dkKk6Ujdinb.d85NyO4KrW2YZxDpT05kHSWdXNfOBtWf36w4i', 'U32nVojEqoBZHsa0zDrXqohmyL616srALHDu7ta0g1B9jvdvBVjaABLewvx8', '2018-08-31 03:24:41', '2018-08-31 03:24:41', 1),
(3, 'banuka', 'd@gmail.com', '$2y$10$aTwqdVo2QfIXbHwtacgh1eXZGpoxOz7OjfpGPtDA2I8mgt0VraUqO', '1DcbmPhELE7HOVo3KyZMD2G10z4LlLHZnbvjltZlB7wKjptPnb3zalYNTtg2', '2018-08-31 11:55:26', '2018-08-31 11:55:26', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
