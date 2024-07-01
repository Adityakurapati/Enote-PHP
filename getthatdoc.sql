SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `contact` (
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `contact` (`name`, `email`, `mobile`, `message`) VALUES
('Hitarth Patel', 'patelhitarth08@gmail.com', '7016421539', 'Hitarth Patel,\r\nManagement  Team Member at Malgadi DDU');

CREATE TABLE `fileupload` (
  `id` int(11) NOT NULL,
  `file` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `filepath` varchar(256) NOT NULL,
  `downloads` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `fileupload` (`id`, `file`, `size`, `user_name`, `fname`, `lname`, `title`, `filepath`, `downloads`) VALUES
(6, 'ACPC ENDORSED LIST_DDU_CE_Page4.pdf', '565833', 'rushigandhi14', 'Rushi', 'Gandhi', 'ACPC', 'uploaded/ACPC ENDORSED LIST_DDU_CE_Page4.pdf', 2),
(7, '62d408512f7db-1658062929.pdf', '1403661', 'dhruv', 'Rushi ', 'Gandhi', 'Javascript', 'uploaded/62d408512f7db-1658062929.pdf', 2),
(8, '62d408bce7c7e-1658063036.pdf', '1403661', 'dhruv', 'Rushi', 'Gandhi', 'Java ', 'uploaded/62d408bce7c7e-1658063036.pdf', 2),
(9, '62d408e5aa6da-1658063077.pdf', '55815', 'dhruv', 'Rushi', 'Gandhi', 'Cpp', 'uploaded/62d408e5aa6da-1658063077.pdf', 1);

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joinDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`userid`, `username`, `email`, `password`, `joinDate`) VALUES
(12, 'rushigandhi14', 'rushigandhi14@gmail.com', '$2y$10$YMRqSP.uBzi7L.0Hi4f6KOPqIdRu/3KK3MU8nC4dWHtv5YRKzz7q6', '2022-07-14'),
(13, 'dhruv', 'dabhi@123', '$2y$10$gGGmTvjdwm6gqQ4SAu085ed5wB62uCRM8mnAeDnGmwy9K95y2RNbi', '2022-07-14'),
(14, 'hitarth', 'hitarth123@j.com', '$2y$10$XUfd80brpTobUKHmEiggJ.Uifo8eCJHNFoO7DGu.Vv.NYzZx75gJK', '2022-07-14'),
(15, 'dhruv123', 'yuuil@gmail.com', '$2y$10$BMg38E2M8GHhyJkTiid/7..52uHsaw.hibWCjw86H9/lnOZso0qMu', '2022-07-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fileupload`
--
ALTER TABLE `fileupload`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

ALTER TABLE `fileupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
