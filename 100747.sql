/*
-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2019 at 07:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `100747`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--
/*
CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 180000, '2019-06-21 06:27:22', '2019-06-21 06:27:22'),
(2, 2, 1850000, '2019-06-21 06:30:37', '2019-06-21 06:30:37'),
(3, 2, 185000, '2019-06-21 06:31:26', '2019-06-21 06:31:26'),
(4, 3, 100000, '2019-06-23 12:07:16', '2019-06-23 12:07:16'),
(5, 3, 100000, '2019-06-23 12:07:17', '2019-06-23 12:07:17'),
(6, 4, 20000, '2019-06-24 12:11:55', '2019-06-24 12:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_08_113856_create_students_table', 1),
(4, '2018_06_08_114031_create_fees_table', 1),
(5, '2018_06_09_094513_add_gender_to_students', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hubert.kivuguto@strathmore.edu', '$2y$10$HyLjA7CEMZKEimqwDaFzhepjyRnNCuUZH9MXNQjaedzoJ5huLE/bO', '2019-06-24 07:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullName`, `DateOfBirth`, `Address`, `Balance`, `created_at`, `updated_at`, `gender`) VALUES
(1, 'Hubert kivuguto', '2019-06-12', 'Rwanda', 20000, '2019-06-21 06:26:13', '2019-06-21 06:26:13', 'Male'),
(2, 'Gatware Fiston Murenzi', '2019-06-06', 'Gisenyi', -1835000, '2019-06-21 06:29:12', '2019-06-21 06:29:12', 'Male'),
(3, 'Nyenye', '2000-06-13', 'Mombasa', 0, '2019-06-23 12:06:30', '2019-06-23 12:06:30', 'Female'),
(4, 'Brian', '2019-06-11', 'Nairobi', 180000, '2019-06-24 12:11:25', '2019-06-24 12:11:25', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'austin', 'admin@admin.com', '$2y$10$.3i2CeF1jMSaSM/mCz2pv.PtZaubgNY4VuMXYo4nOpGqfxeqxaeHW', 'ErT3KFfJm9XqQmdT2T2oKi2XomE7asoI9OX1GWUaLNg19T0NDLzqYB665C7D', '2019-06-12 07:58:27', '2019-06-12 07:58:27'),
(2, 'user', 'user@user.com', '$2y$10$KvwG8Xaph1tDTzJhSpOBCuNZNQMrm7hFjqy0f5zZQsGzR3/MstE.e', 'GSmg0i8uwwA8rVQ7XCW8CvaX7KxOmkDXCv7WnCnFoAekbuwU7hFCVYI04eRE', '2019-06-18 06:15:21', '2019-06-18 06:15:21'),
(3, 'hubert', 'hubert.kivuguto@strathmore.edu', '$2y$10$K3sQbBW3Y3b3Svjupx4FMO9jZt3O4j13cPIb/fyNOsNUEl/RhO9oW', NULL, '2019-06-21 06:01:36', '2019-06-21 06:01:36'),
(4, 'hubert kivuguto', 'kivuguto20@gmail.com', '$2y$10$6b0VLHeeBnmt0WGTV1B22uCt4iyWVq6iSpvJpHP967m5trjVF/h2y', 'TWP6XOJQaDa852VuFFh0c09qo4pURalhobqD26Ye8c4jhfzugmvBqYtfEnL2', '2019-06-23 07:57:42', '2019-06-23 07:57:42'),
(5, 'hubert', 'yes@gmail.com', '$2y$10$ksUnIt2z1cYjATruyirx7uT75CsCPKr2zTAXK3H0WaxV.dSUfjD/y', 'NWTwnG8yBXIciixLFdpSIbO4s2QMVnIr8qnqofJhk8wWd5w1QfpdPWw8O0Ro', '2019-06-24 10:40:11', '2019-06-24 10:40:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_student_id_foreign` (`student_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
