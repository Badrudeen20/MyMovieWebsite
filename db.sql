-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `postId` varchar(255) NOT NULL,
  `responseTo` int(11) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `publish` int(255) DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `created_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `postId`, `responseTo`, `content`, `publish`, `name`, `created_at`) VALUES
(75, 'Chat-man 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'fhtdh', 1, 'g', '2022-11-20'),
(77, 'Chat-man 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 75, 'fhtdh', 1, 'g', '2022-11-20'),
(78, 'Chat-man 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 75, 'red', 1, 'egr', '2022-11-20'),
(79, 'Chat-man 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 77, 'odghsed', 1, 'drhr', '2022-11-20'),
(80, 'The Devils Hour 2022 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'fed', 1, 'efeds', '2022-11-20'),
(81, 'Catman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'oidgjpred', 1, 'dryr', '2022-11-20'),
(82, 'Spiderman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'Hi', 1, 'Badru', '2022-11-20'),
(83, 'Spiderman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'Hello', 1, 'Arman', '2022-11-20'),
(84, 'Spiderman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 82, 'Hi ', 1, 'Chetan', '2022-11-20'),
(85, 'Spiderman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 84, 'Yes Please', 1, 'Mohit', '2022-11-20'),
(86, 'Spiderman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 82, 'Kon bhi', 1, 'Oggy', '2022-11-20'),
(87, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'R1ger', 1, 'R1', '2022-11-20'),
(88, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', NULL, 'egtet5r', 1, 'R2', '2022-11-20'),
(89, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 87, 'ete4r', 1, 'R1.2', '2022-11-20'),
(90, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 87, 'dfe', 1, 'R1.3', '2022-11-20'),
(91, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 89, 'rhygre', 1, 'R1.4', '2022-11-20'),
(92, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 87, 'dfrhbt', 1, 'R1.4', '2022-11-20'),
(93, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 87, 'fdhbdft', 1, 'R1.5', '2022-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `genres` varchar(255) DEFAULT NULL,
  `movie_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `post_id`, `genres`, `movie_data`) VALUES
(1, 1, 'Sci-Fi', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(2, 3, 'Comedy,Sci-Fi', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(3, 2, 'Action', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(4, 4, 'Action,Sci-FI', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(5, 5, 'Action,Comedy', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(6, 6, 'Action,Sci-FI', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(7, 7, 'Action,Comedy', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(8, 8, 'Action,Sci-FI', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(9, 9, 'Sci-Fi', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(10, 10, 'Comedy,Sci-Fi', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(11, 11, 'Action', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(12, 12, 'Action,Sci-FI', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(13, 13, 'Action,Comedy', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(14, 14, 'Action,Sci-FI', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(15, 15, 'Action,Comedy', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]'),
(16, 16, 'Action,Sci-FI', '[{\"quality\":\"MKV 480p\",\"story\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, facere totam. Dolorem ut, fuga officia dignissimos laudantium accusamus rem illo...\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `publish` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `publish`) VALUES
(1, 'Horror', 1),
(2, 'Sci-Fi', 1),
(3, 'Action', 1),
(4, 'Comedy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `publish` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `publish`) VALUES
(1, 'HINDI', 1),
(2, 'ENGLISH', 1),
(3, 'HINDI-ENGLISH', 1),
(4, 'TAMIL-ENGLISH', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `imdb` varchar(255) DEFAULT NULL,
  `poster` varchar(255) NOT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `publish` int(11) DEFAULT 1,
  `trend` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `language_id`, `imdb`, `poster`, `trailer`, `link`, `publish`, `trend`, `created_at`, `updated_at`) VALUES
(1, 'Avanger', 1, '6.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', '', 'The Takeover 2022 WEB-DL Hindi Dual Audio ORG Full Movie Download 1080p 720p 480p', 1, 0, '2022-10-07 16:00:44', '2022-10-07 16:00:44'),
(2, 'Avanger', 1, '8.9', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', '', 'Inside Man 2022 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 1, '2022-10-07 16:00:44', '2022-10-07 16:00:44'),
(3, 'Crood', 1, '5.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'The Devils Hour 2022 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(4, 'Toy Story', 3, '9.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Toy Story 2019 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(5, 'Spiderman', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Spiderman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(6, 'Batman', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Batman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 1, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(7, 'Catman', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Catman 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(8, 'Chat-man', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Chat-man 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 1, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(9, 'Home Lander', 1, '6.8', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgINFunvdxlAd8qjJUAsxfRvNN81T02DVWiDw76E4jxJeQv_0d7uEdQnXtLio2agiSRdh24SsvRzMGWnfW2C_V4ce_Ihn1DsdPnypPVrUthyBPoZv9qwI9pQnquG2q5aJ-HsYqwTUQM5rfAXYnk8oCLYvtGNPatrEWTPjEh3JnWjcwg-VDAMkm_lpBjqg/s225/se', '', 'Home Lander 2022 WEB-DL Hindi Dual Audio ORG Full Movie Download 1080p 720p 480p', 1, 0, '2022-10-07 16:00:44', '2022-10-07 16:00:44'),
(10, 'Moon Fall', 1, '4.9', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgINFunvdxlAd8qjJUAsxfRvNN81T02DVWiDw76E4jxJeQv_0d7uEdQnXtLio2agiSRdh24SsvRzMGWnfW2C_V4ce_Ihn1DsdPnypPVrUthyBPoZv9qwI9pQnquG2q5aJ-HsYqwTUQM5rfAXYnk8oCLYvtGNPatrEWTPjEh3JnWjcwg-VDAMkm_lpBjqg/s225/se', '', 'Moon Fall 2022 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:00:44', '2022-10-07 16:00:44'),
(11, 'Cars', 1, '5.9', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Cars Hour 2022 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 1, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(12, 'Toy Story 2', 3, '9.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Toy Story 2 2019 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(13, 'Plane', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Plane 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(14, 'Badroom', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Badroom 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(15, 'AI', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'AI 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 1, '2022-10-07 16:05:28', '2022-10-07 16:05:28'),
(16, 'Bus-Truck', 3, '7.7', 'https://1.bp.blogspot.com/-3xMZ6yrLKm4/YM1tvFp3f0I/AAAAAAAAAXo/pXkUJ8DCdrElPMi-ZZbg9-x2t7wTOByogCLcBGAsYHQ/s722/the%2Bcroods.png', NULL, 'Bus-Truck 2021 WEB-DL Hindi Dual Audio ORG S01 Complete Download 720p 480p', 1, 0, '2022-10-07 16:05:28', '2022-10-07 16:05:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
