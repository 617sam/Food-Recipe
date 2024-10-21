-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 12:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_recipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `Admin_Name` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `Admin_Password` varchar(100) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Admin_Name`, `Admin_Password`) VALUES
('Swoyam', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(7, 'Namin Dangol', 'nameen017@gmail.com', '9843029753', '1234'),
(8, 'Nabinta ', 'nabeenta019@gmail.com', '9840180934', '2345'),
(12, 'Swoyam ', 'swo@gmail.com', '9876543434', '456');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'breakfast', 'Breakfast', NULL, NULL),
(3, 'lunch', 'Lunch', '2023-06-12 07:42:30', '2023-06-12 07:42:30'),
(4, 'dinner', 'Dinner', '2023-06-12 11:29:18', '2023-06-12 11:29:18'),
(5, 'snacks', 'Snacks', '2023-06-12 13:20:21', '2023-06-12 13:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`, `type`) VALUES
(41, 'rose', 'zdjhfsdihf fdhfkjaskjxcvnxc sdfyrfhjksrf skfjhgdfgmzndbcvdhf shfiuwryjvjcxvkjdhfv zjdbvhgiufdg', 40, 'product5.jpg', 'flower'),
(48, 'lilly', 'lily, (genus Lilium), genus of 80 to 100 species of herbaceous flowering plants of the family Liliaceae, native to temperate areas of the Northern Hemisphere. Many lilies are prized as ornamental plants, and they have been extensively hybridized.\r\n\r\nThe word lily is also used in the common names of many plants of other genera that resemble true lilies. These include the daylily (Hemerocallis) and various species of the family Amaryllidaceae.', 50, 'product1.jpg', 'Aquatic Plants'),
(49, 'Mango Plant', 'A mango is an edible stone fruit produced by the tropical tree Mangifera indica. It is believed to have originated between northwestern Myanmar, Bangladesh, and northeastern India. M. indica has been cultivated in South and Southeast Asia since ancient times resulting in two types of modern mango cultivars: the \"Indian type\" and the \"Southeast Asian type\". ', 55, 'white bouquet.jpg', 'Tree'),
(52, 'snake Plantt', 'hdfbgdhf  ierhgdfgjfdgb', 30, 'product1.png', 'Tree'),
(53, 'putaliFul', 'loremm lreoemkjsnjshuyksgkxhas,cjkcwg adiuhayucgsfghdsg', 69, 'home.png', 'Tree'),
(55, 'jasmine', 'akjsdskjdkjsncc', 49, 'banner1.jpg', 'Tree'),
(56, 'Dalle', 'sjbdjsdbcjsbdcjsdjcsdjbcsdjbc', 20, 'product2.jpg', 'Seculants'),
(57, 'lamche', 'sjdbfsjdfjsdfsdcxjcbxnbsdfsdgc', 50, 'cat2.jpg', 'Herbs'),
(58, 'patale', 'ihfsbxcbvudsgferfihdjhsbxjncbxnbvhjxc', 70, 'cat3.jpg', 'Others'),
(59, 'Khursani', 'kjwhdkjsdfhsfsdbmnncbx', 60, 'cat4.jpg', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ingredient` varchar(200) NOT NULL,
  `direction` varchar(200) NOT NULL,
  `preparationTime` varchar(200) NOT NULL,
  `cookingTime` varchar(200) NOT NULL,
  `serve` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `ingredients` text NOT NULL,
  `direction` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recipess`
--

CREATE TABLE `recipess` (
  `id` int(200) NOT NULL,
  `name` varchar(400) NOT NULL,
  `description` varchar(1200) DEFAULT NULL,
  `ingredients` varchar(500) DEFAULT NULL,
  `preparationTime` int(200) DEFAULT NULL,
  `cookingTime` int(200) DEFAULT NULL,
  `serve` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipess`
--

INSERT INTO `recipess` (`id`, `name`, `description`, `ingredients`, `preparationTime`, `cookingTime`, `serve`) VALUES
(1, 'Aalu', 'sjhbvckhdbjcdfbjchdbfjc', NULL, NULL, NULL, NULL),
(2, 'Dosa', 'On a heated tawa, pour the prepared batter and make a dosa, drizzle some ghee, add spring onion, tomato, onion, coriander leaves, paneer, cheese, chili flakes, mayonnaise, tomato ketchup green chutney and cook it for a minute. Roll it and cut into four equal parts. Garnish it with mayonnaise, cheese and coriander sprig. Serve hot.', NULL, NULL, NULL, NULL),
(3, 'Eggless omelets', 'In another non-stick pan, add oil once it\'s hot, add remaining onion, green chilli, ginger saute it well. Add tomatoes, coriander leaves and saute for a minute. Pour a ladle full of batter and rotate the pan so that it spreads evenly all around. Apply butter on both the bread slice, place the bread slice on the pan butter side upward. Flip the omelette on the other side, add grated cheese and fold', '¼ cup Process cheese, grated, चीज\r\nFor Bread Omelette \r\n1 tsp Oil,तेल 2 Bread slice, ब्रेड स्लाइस \r\n1 tbsp Butter, मक्खन \r\n3-4 tbsp Process cheese, grated, चीज ,Garnish Coriander sprig, धनिया पत्ता\r\nF', NULL, NULL, NULL),
(4, 'Mumbai Style Kanda Pooha', '1. Wash the poha in a colander. Poha should be moist but not mashed. Add salt and sugar and mix lightly.  \r\n2. Heat oil in a non-stick pan. Add mustard seeds and when they splutter add green chillies, curry leaves and peanuts. \r\n3. Sauté for half a minute and add onions and potato, continue to sauté.\r\n 4. Add salt, turmeric powder and mix. Sauté for two minutes and add poha. \r\n5. Mix and cook till', '2 tbsp Oil 1 tsp \r\nMustard Seeds\r\n 3 Green Chillies, chopped \r\n1 sprig Curry Leaves\r\n ¼ cup Peanuts\r\n 1 Medium Size Potato, \r\nsmall cubes 2 Onion, \r\nchopped Salt to Taste \r\n1 tsp Turmeric Powder \r\n200', NULL, NULL, NULL),
(5, 'UPMA', 'heat oil in a same kadhai and splutter mustard seeds, followed by chana dal, gota urad and cashew nuts. Saute until they turn light brown. \r\n● Now add ginger and cook for a minute until ginger releases its raw smell.\r\n ● Add onion, green chilli and curry leaves and saute until onion turn translucent.\r\n ● Add in water, salt, sugar and allow it to boil. When it starts boiling allow it it to boil for a 2 minute. In this way all the flavors will infuse in water.\r\n ● Now at this stage add in prepared', '3 tbsp oil (any refined oil) \r\n3/4 tsp mustard Seeds \r\n1 tbsp gota urad/ whole polished urad \r\n1 tbsp chana dal/ bengal gram\r\n 8 no cashew nuts, cut into half \r\n1 tsp ginger, chopped\r\n 1 medium onion, chopped \r\n1 medium fresh green chilli, chopped \r\n12-15 no curry leaves \r\n3 ½ cups water Salt to taste \r\n¼ tsp sugar 1 wedge of lime \r\n1 tbsp fresh coriander leaves with it’s tender stems, chopped\r\n 1 tbsp ghee', NULL, NULL, NULL),
(8, 'jhcjdchj', 'wjdgcjhdc', 'ejhdcjhedc', 0, NULL, NULL),
(10, 'ALOO PARATHA ', ' Add whole wheat flour, gram flour and ghee to a bowl. Mix well and form a crumb like mixture.\r\n • Add water as required and knead a soft dough. Cover with a muslin cloth and set aside for 20 minutes or till in use.\r\n • Add oil to the dough and knead a little till its absorbed.\r\n For the filling \r\n• Add boiled potatoes, onion, green chilli, fresh coriander, salt, coriander powder, chilli powder, cumin powder, garam masala, fennel seeds and amchur powder. Mix well \r\n• Divide the prepared dough into equal portions, and form small lemon sized balls.\r\n • Roll them into flat disc with a rolling pin and add the prepared stuffing in the centre. \r\n• Roll into a potli, remove the excess dough and roll back into a disc.\r\n • Heat a tawa, add the prepared paratha and roast on both sides for 30 seconds', 'For the Dough 2 cups whole wheat flour \r\n1 tsp salt \r\n2 tbsp gram flour\r\n ½ tsp carom seeds (ajwain)\r\n 2 tbsp ghee Water as required \r\n2 tsp oil ', 30, 50, 4),
(12, 'AaluP', 'Add whole wheat flour, gram flour and ghee to a bowl. Mix well and form a crumb like mixture. • Add water as required and knead a soft dough. Cover with a muslin cloth and set aside for 20 minutes or till in use. • Add oil to the dough and knead a little till its absorbed. For the filling • Add boiled potatoes, onion, green chilli, fresh coriander, salt, coriander powder, chilli powder, cumin powder, garam masala, fennel seeds and amchur powder. Mix well • Divide the prepared dough into equal portions, and form small lemon sized balls. • Roll them into flat disc with a rolling pin and add the prepared stuffing in the centre. • Roll into a potli, remove the excess dough and roll back into a disc. • Heat a tawa, add the prepared paratha and roast on both sides for 30 seconds', 'wkjnfkejbkjebjfbvkdfbvjdf', 40, 50, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dispaly_name` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `date_of_birth` date NOT NULL,
  `contact_number` varchar(150) NOT NULL,
  `image` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipess`
--
ALTER TABLE `recipess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipess`
--
ALTER TABLE `recipess`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
