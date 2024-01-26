-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 03:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 2, 'avantika', '9011312973', 'abhikule152@gmail.com', 'paytm', 'flat no. 1, tingrenagar, pune, india - 411036', ', Black Lady Rose Plant (3) ', 120, '23-Apr-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(3, 'Yellow Rose Plant', 40, 'rose-plant-500x500.jpeg'),
(7, 'Adenium Obesum Full Sun Exposure Desert Rose Plant, For Garden', 150, 'desert-rose-500x500.jpg'),
(8, 'Sunflower Plant', 1600, 'sunflower-plant-rs-1650-500x500.jpeg'),
(9, 'Hibiscus Pink Flower Plants, Packaging Type: Box', 60, 'product-jpeg-500x500.jpg'),
(10, 'Red Salvia Flower Plant', 15, 'red-salvia-flower-plant-500x500.jpg'),
(11, 'Rose Plant', 30, 'product-jpeg-500x500 (1).jpg'),
(12, 'Jasmine Mogra Plant', 110, '61M+ao8b0BL._SX679_.jpg'),
(13, 'Green Sadafuli Plant', 25, 'sadafuli.png'),
(14, 'Shevanti Flower Plant', 20, 'shevanti.png'),
(15, 'Rose Plant(Dark Pink)', 100, 'nurserylive-g-plants-rose-dark-pink-plant-in-grower-round-black-pot_600x600.webp'),
(16, 'Full Sun Exposure Orange Flower Rose Hibiscus Plant, For Garden', 60, 'orange-rose-hibiscus-plant-500x500.jpg'),
(17, 'Rose (White) - Plant', 299, 'nurserylive-g-rose-white-plant_600x600.jpg'),
(18, 'Rose (Peach) - Plant', 299, 'nurserylive-g-rose-baby-pink-plant_600x600.jpg'),
(20, 'Juhi, Jasminum Auriculatum - Plant', 299, 'nurserylive-g-juhi-jasminum-auriculatum-plant_600x600.jpg'),
(21, 'Top 5 Annual Flowering Plants', 1699, 'nurserylive-combo-packs-plants-top-5-annual-flowering-plants-16969387769996_600x600.jpg'),
(22, 'Parijat Tree, Parijatak, Night Flowering Jasmine - Plant', 299, 'nurserylive-plants-parijat-tree-parijatak-night-flowering-jasmine-plant-16969158688908_600x600.jpg'),
(23, 'Top 4 Plants For Healthy Homes', 1050, 'combo-packs-plants-top-4-plants-for-healthy-homes_600x600.jpg'),
(24, 'Aster (Red) - Plant', 199, 'nurserylive-aster-red-plant_600x600.jpg'),
(25, 'Rajnigandha, Tuberose - Plant', 199, 'nurserylive-plants-rajnigandha-tuberose-plant-16969240019084_600x600.jpg'),
(26, 'Aesthetic Gift Combo with Rose and Tulsi', 799, 'nurserylive-gifts-aesthetic-gift-combo-with-rose-and-tulsi-16968552808588_600x600.jpg'),
(27, 'Fruit Plants Packs', 499, 'nurserylive-g-top-3-fruit-plants-to-grow-in-pots_600x600.jpg'),
(28, ' Click to expand  Lemon Balm - Herb Seeds - Nurserylive 1+1 Free - Lemon Balm - Herb Seeds', 150, 'nurserylive-seeds-lemon-balm-herb-seeds-16968998256780_600x600.jpg'),
(29, 'Nimboo, Lemon Tree - Plant', 349, 'nurserylive-plants-nimboo-lemon-tree-plant-16969045311628_600x600.jpg'),
(30, '1+1 Free - Lemon Grass - Herb Seeds', 150, 'nurserylive-seeds-lemon-grass-herb-seeds-16969077358732_600x600.jpg'),
(31, 'Apple, Seb - Plant', 199, 'nurserylive-apple-seb-plant_600x600.jpg'),
(33, 'Banana - G9, Kela - Plant', 349, 'PwXOpkeUBQ7DqbzrrqLAlJ8KnhftyWZRbv3epXqR.jpg'),
(34, 'Nariyal, Coconut Tree (Green, Grown Through Seeds) - Plant', 499, 'nurserylive-plants-nariyal-coconut-tree-green-grown-through-seeds-plant-16969041739916_600x600.jpg'),
(35, 'Chikoo, Sapota, Chiku Fruit (Grafted) - Plant', 549, 'nurserylive-chikoo-sapota-chiku-fruit-grafted-plant_600x600.jpg'),
(36, 'Kagda - Plant', 299, 'nurserylive-kagda-plant_600x600.jpg'),
(37, 'Guava Tree, Amrud, Psidium guajava (Sardar L49, Grown through seeds) - Plant', 349, 'E0043A32011CE9262629EB2EF6_1595268025932.jpg'),
(38, ' Click to expand  Papaya Honey dew - 0.5 kg Seeds - Nurserylive Papaya Honey dew - 0.5 kg Seeds', 1099, 'nurserylive-seeds-papaya-honey-dew-0-5-kg-seeds-16969157083276_600x600.jpg'),
(39, '1+1 Free - Bitter Gourd Chaman - Desi Vegetable Seeds', 60, 'nurserylive-seeds-bitter-gourd-chaman-desi-vegetable-seeds-16968641609868_600x600.jpg'),
(40, '1+1 Free - Krishna Tulsi - Herb Seeds', 150, 'nurserylive-seeds-krishna-tulsi-herb-seeds_600x600.webp'),
(41, 'Orange Fruit, Santra ( Grafted ) - Plant', 499, 'nurserylive-plants-orange-fruit-santra-grafted-plant-16969145090188_600x600.jpg'),
(42, ' Click to expand  Top 3 Wonder Plants Pack - Nurserylive Top 3 Wonder Plants Pack', 749, 'nurserylive-combo-packs-plants-top-3-wonder-plants-pack-16969386754188_600x600.jpg'),
(43, 'Ixora Long, Singapuri Ixora (Orange) - Plant', 349, 'nurserylive-plants-ixora-long-singapuri-ixora-orange-plant-16968961949836_600x600.jpg'),
(44, '1+1 Free - Capsicum Green - Desi Vegetable Seeds', 60, 'nurserylive-seeds-capsicum-green-desi-vegetable-seeds-16968684339340_600x600.jpg'),
(45, '  Click to expand  Cauliflower Snowball 16 - Desi Vegetable Seeds - Nurserylive  Cauliflower Snowbal', 60, 'nurserylive-seeds-cauliflower-snowball-16-desi-vegetable-seeds-16968696594572_600x600.jpg'),
(46, '  Click to expand  Methi Bombay Wali - Desi Vegetable Seeds - Nurserylive  Methi Bombay Wali - Desi ', 60, 'nurserylive-seeds-methi-bombay-wali-desi-vegetable-seeds-16969025978508_600x600.jpg'),
(47, '1+1 Free - Tomato Ped - Desi Vegetable Seeds', 60, 'nurserylive-seeds-tomato-ped-desi-vegetable-seeds-16969383772300_600x600.jpg'),
(48, '1+1 Free - Brinjal Purple Round - Desi Vegetable Seeds', 60, 'nurserylive-seeds-brinjal-purple-round-desi-vegetable-seeds-16968662614156_600x600.jpg'),
(49, '5 Best Fragrant Plants', 1599, 'nurserylive-combo-packs-plants-5-best-fragrant-plants-16968509653132_600x600.jpg'),
(50, '1+1 Free - Coriander Green Aroma - Desi Vegetable Seeds', 60, 'nurserylive-seeds-coriander-green-aroma-desi-vegetable-seeds-16968795881612_600x600.jpg'),
(51, '1+1 Free - Okra Pusa Sawni - Desi Vegetable Seeds', 60, 'nurserylive-seeds-okra-pusa-sawni-desi-vegetable-seeds-16969047081100_600x600.jpg'),
(52, '  Click to expand  Radish Imported Scarlet Red Globe - Vegetable Seeds - Nurserylive  Radish Importe', 120, 'nurserylive-seeds-radish-imported-scarlet-red-globe-vegetable-seeds-16969115959436_600x600.jpg'),
(53, ' Top 5 Plants to Bring Goodluck - Nurserylive Top 5 Plants to Bring Goodluck', 1449, 'nurserylive-combo-packs-plants-top-5-plants-to-bring-goodluck-16969392128140_600x600.jpg'),
(54, 'Independence Day Special (4 Plants Pack)', 849, 'nurserylive-combo-packs-plants-independence-day-special-4-plants-pack-16968950939788_600x600.jpg'),
(55, 'Oxygen Enriching Indoor Vertical Garden', 4599, 'nurserylive-g-oxygen-enriching-indoor-vertical-garden_600x600.jpg'),
(56, ' Click to expand  Charming Champa (Pack of 3 ) Plants - Nurserylive Charming Champa (Pack of 3 ) Pla', 1299, 'nurserylive-combo-packs-plants-charming-champa-pack-of-3-plants_600x600.jpg'),
(57, 'Caesalpinia Pulcherrima, Peacock Flower, Red Bird of Paradise - Plant', 299, '91ViIFCJcdL._SL1500_.jpg'),
(58, 'Wish Good Luck with Ficus Bonsai and Laughing Buddha', 899, 'nurserylive-gifts-wish-good-luck-with-ficus-bonsai-and-laughing-buddha-16969427845260_600x600.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'avantika', 'abhikule152@gmail.com', '3dfb991dbd640889d9b7d8b7330ba5bc', 'admin'),
(2, 'Vaishnavi', 'vkadam29112001@gmail.com', 'f7ed2a855d8e5b3c310f13258e522396', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
