-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 07:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `subtitle`, `content`, `date_created`) VALUES
(1, 'Exploring the Wonders of Nature', 'A journey through lush forests and serene landscapes', 'Today, I ventured into the heart of a dense forest, where the melody of chirping birds and the rustling of leaves enchanted my senses. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eos eveniet obcaecati, praesentium voluptatum officiis tempora ipsum aspernatur molestiae asperiores numquam molestias omnis illo nisi laboriosam repudiandae beatae expedita, accusantium perspiciatis saepe? Error debitis ducimus rerum sed sit earum iste explicabo ad voluptatibus sapiente quaerat cum rem deleniti, expedita adipisci. Sint! \r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Sunt itaque ad iure aut totam quasi provident voluptatibus eum! Aliquam obcaecati reiciendis alias temporibus ipsam quod provident atque. Accusantium in adipisci sequi nemo facilis. Quasi consectetur tempore earum ipsam ullam! Harum ad distinctio molestias, odit inventore repudiandae dolores nobis nesciunt accusamus reprehenderit animi corrupti optio excepturi nihil alias eius ullam ipsam molestiae, maxime necessitatibus? Qui impedit similique neque itaque, illum nostrum incidunt, quibusdam voluptate beatae modi veritatis officiis odit nihil! Eum, magni ea iste recusandae qui sint ipsa quisquam officia reiciendis rerum perspiciatis. ', '2023-11-20 14:42:29'),
(2, 'The Art of Cooking: A Culinary Adventure', 'Discovering flavors from around the world', 'In my quest for culinary excellence, I experimented with exotic spices and recipes, creating a symphony of tastes that delighted the palate. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eos eveniet obcaecati, praesentium voluptatum officiis tempora ipsum aspernatur molestiae asperiores numquam molestias omnis illo nisi laboriosam repudiandae beatae expedita, accusantium perspiciatis saepe? Error debitis ducimus rerum sed sit earum iste explicabo ad voluptatibus sapiente quaerat cum rem deleniti, expedita adipisci. Sint! \nLorem ipsum dolor, sit amet consectetur adipisicing elit. Sunt itaque ad iure aut totam quasi provident voluptatibus eum! Aliquam obcaecati reiciendis alias temporibus ipsam quod provident atque. Accusantium in adipisci sequi nemo facilis. Quasi consectetur tempore earum ipsam ullam! Harum ad distinctio molestias, odit inventore repudiandae dolores nobis nesciunt accusamus reprehenderit animi corrupti optio excepturi nihil alias eius ullam ipsam molestiae, maxime necessitatibus? Qui impedit similique neque itaque, illum nostrum incidunt, quibusdam voluptate beatae modi veritatis officiis odit nihil! Eum, magni ea iste recusandae qui sint ipsa quisquam officia reiciendis rerum perspiciatis. Dolor accusantium itaque labore, deserunt nostrum, velit blanditiis tenetur quaerat tempora eum quos praesentium ad commodi dolorem hic. Corporis, esse incidunt inventore quos odio saepe pariatur suscipit dignissimos vitae, modi sed ipsa illo fuga harum molestiae! Facere, velit ipsam nesciunt enim expedita vel itaque iste. Minima, nostrum cumque labore, tempore esse dolores hic repellat eos debitis nisi repudiandae maxime accusamus alias quidem eius blanditiis, repellendus reprehenderit architecto dolor at! Iure, mollitia amet! Iusto officia reprehenderit itaque illum, delectus mollitia consequuntur eveniet harum non maxime quae cum expedita omnis nobis recusandae voluptatibus fuga a! Quidem tenetur saepe maxime! Impedit officia blanditiis vero rem consequatur harum ut quisquam fugit, delectus pariatur id labore quos omnis debitis aut! Pariatur porro eligendi esse tempora tempore illo earum temporibus adipisci est animi id dolores, deleniti ipsum, aliquam, nulla itaque? Ex, aperiam dolor odit voluptates doloremque non a aut ipsa hic excepturi, enim iusto sint, ut odio? Eaque voluptatum optio in qui possimus commodi recusandae fugit nemo! Quaerat harum debitis quibusdam, quas, saepe veritatis, deserunt alias tenetur aliquid sequi repellat eos dignissimos repudiandae incidunt. Sint facere maiores pariatur sunt recusandae libero nobis incidunt porro minus esse, hic exercitationem quibusdam fugiat aspernatur ut quas! Eius deserunt eum error autem corporis inventore at iusto exercitationem, voluptatem sit aperiam molestias quo nisi adipisci atque. Repudiandae dolorum iure cupiditate esse praesentium, dicta nam a deserunt, exercitationem ducimus corporis, optio consectetur? Praesentium cumque architecto aperiam ullam accusantium, dolores saepe doloremque illo id voluptates laudantium rem quae tempore voluptatum fuga qui tempora. Necessitatibus harum, neque modi esse reiciendis tempora dolor rem quaerat consequatur quia? Ab facere suscipit ad eius asperiores nobis accusantium vitae temporibus obcaecati a maxime, ut nulla nam! Alias accusamus distinctio commodi facilis ratione, aperiam reiciendis reprehenderit earum tenetur neque ipsa soluta. Sequi voluptatem voluptatibus autem eaque assumenda dolore quis? Quod nobis aliquam natus. Modi, deleniti adipisci error officiis non dignissimos iste aliquam ut animi odio accusamus repellat facilis doloribus distinctio ratione aut doloremque? Sed accusantium praesentium cum iure, neque repellendus molestiae amet. Doloremque quae enim veritatis quisquam quaerat assumenda mollitia dolore necessitatibus deleniti ab minus minima, voluptatibus ipsam ea. In doloremque ipsum eveniet necessitatibus excepturi iusto expedita animi. Vel aliquam in maiores consequatur et consectetur iste laudantium architecto, dolore cupiditate nemo, harum quod, earum aperiam? Consequatur molestias deserunt nesciunt in reprehenderit esse cum quasi deleniti? Error ad mollitia consequuntur ipsum sunt asperiores odio, repudiandae voluptates non quae assumenda pariatur molestiae labore. Repellendus minima maxime voluptatibus aperiam facere.', '2023-11-20 13:35:57'),
(3, 'Unraveling the Mysteries of the Cosmos', 'A cosmic odyssey through space and time', 'Gazing at the night sky, I marveled at the vastness of the universe. The constellations whispered ancient tales, and the stars painted a canvas of celestial beauty. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eos eveniet obcaecati, praesentium voluptatum officiis tempora ipsum aspernatur molestiae asperiores numquam molestias omnis illo nisi laboriosam repudiandae beatae expedita, accusantium perspiciatis saepe? Error debitis ducimus rerum sed sit earum iste explicabo ad voluptatibus sapiente quaerat cum rem deleniti, expedita adipisci. Sint!', '2023-11-20 13:35:18'),
(4, 'Embracing Mindfulness: A Meditation Journey', 'Finding tranquility in the chaos', 'In the midst of a chaotic world, I embarked on a journey of mindfulness. Each breath became a moment of serenity, and every step echoed with the rhythm of inner peace.', '2023-11-15 10:00:00'),
(5, 'The Thrill of Adventure Sports', 'Conquering fears and pushing boundaries', 'Suspended in mid-air, the adrenaline surged through my veins as I zip-lined across breathtaking landscapes. Adventure sports brought an exhilarating rush and a sense of accomplishment.', '2023-11-14 03:10:00'),
(6, 'A Walk Through Historical Streets', 'Tracing the footsteps of the past', 'Wandering through cobblestone streets and ancient architectures, history whispered its tales. Each building stood as a silent witness to the events that shaped the course of time.', '2023-11-13 06:05:00'),
(7, 'Capturing Moments: The Art of Photography', 'Freezing time through the lens', 'With a camera in hand, I explored the world through a different perspective. Every click immortalized a moment, telling a unique story in the language of visuals.', '2023-11-12 12:30:00'),
(8, 'Rediscovering Childhood Favorites', 'Nostalgia and joy in simple pleasures', 'In the attic of memories, I found dusty boxes filled with childhood treasures. Toys, books, and forgotten games brought waves of nostalgia and simple, unbridled joy.', '2023-11-11 05:15:00'),
(9, 'Sailing into the Sunsets', 'Chasing horizons on the open sea', 'Aboard a sailboat, the salty breeze kissed my face as the sun dipped below the horizon. Sailing into the sunset, I felt the freedom of the open sea and the endless possibilities ahead.', '2023-11-20 15:18:22'),
(10, 'The Magic of Literature: A Bookworm\'s Tale', 'Journeying through worlds on the pages', 'Lost in the realms of imagination, I delved into the magic of literature. Each book was a portal to a new adventure, a new perspective, and a new understanding of the world.', '2023-11-09 01:55:00'),
(25, '32131', 'eqwewqqweqw', 'ewqewq eqw', '2023-11-20 19:20:46'),
(26, 'SAMPLE', '2', 'sample sample', '2023-12-12 04:51:24'),
(27, 'dsadsa', 'asda', 'dsadasdsa', '2023-12-12 04:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$wiQm83mYZm3Tl2UcXXdF9g$tXy4nkEDbbvoFSZbDtIhm/rH0eZV3OjsQbUI3UvtC/I', 'admin'),
(7, 'Aljon Cardeño', 'aljon@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$yJMt0KzKi9ai1ESsAARtow$2gLEtFQ1xFSjK+mvWWUGFTFZtOshH5/rpstpD9PoZ0Y', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
