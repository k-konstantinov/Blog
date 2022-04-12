-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 03:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `content`, `image`, `time`) VALUES
(1, 'Looking cool at Pink ', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://images.freeimages.com/images/large-previews/c87/hand-holding-flower-1353487.jpg', '2022-04-05 21:00:00'),
(2, 'Looking awesome with new update', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://cdn.vox-cdn.com/thumbor/3TMhcC-JfgrBgmktMfffuzgc0go=/0x0:5563x3709/1220x813/filters:focal(2302x1311:3192x2201):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/65752607/1048232144.jpg.0.jpg', '2022-04-05 21:00:00'),
(3, 'Suspedisse orci tortor, auctor non fuctus', 'Quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://th.bing.com/th/id/R.432dcfb4b329732f9ff8b4e31abcb2ed?rik=7QXnOYrP7aHd9g&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f03%2f10%2f315736-flowers-hand.jpg&ehk=EFDZayCofEp7q6qYiE9Xj3F9HuHN6G8etZbktnlG3mo%3d&risl=&pid=ImgRaw&r=0', '2022-04-05 21:00:00'),
(4, 'Looking cool at Pink ', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://images.freeimages.com/images/large-previews/c87/hand-holding-flower-1353487.jpg', '2022-04-05 21:00:00'),
(5, 'Suspedisse orci tortor, auctor non fuctus', 'Quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://th.bing.com/th/id/R.432dcfb4b329732f9ff8b4e31abcb2ed?rik=7QXnOYrP7aHd9g&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f03%2f10%2f315736-flowers-hand.jpg&ehk=EFDZayCofEp7q6qYiE9Xj3F9HuHN6G8etZbktnlG3mo%3d&risl=&pid=ImgRaw&r=0', '2022-04-05 21:00:00'),
(6, 'Looking awesome with new update', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://cdn.vox-cdn.com/thumbor/3TMhcC-JfgrBgmktMfffuzgc0go=/0x0:5563x3709/1220x813/filters:focal(2302x1311:3192x2201):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/65752607/1048232144.jpg.0.jpg', '2022-04-05 21:00:00'),
(7, 'Looking awesome with new update', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', 'https://cdn.vox-cdn.com/thumbor/3TMhcC-JfgrBgmktMfffuzgc0go=/0x0:5563x3709/1220x813/filters:focal(2302x1311:3192x2201):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/65752607/1048232144.jpg.0.jpg', '2022-04-05 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `email`, `token`) VALUES
(56, 'test', '123456', 'test@abv.bg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
