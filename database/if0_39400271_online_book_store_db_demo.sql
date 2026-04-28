-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql211.infinityfree.com
-- Generation Time: Apr 28, 2026 at 01:14 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39400271_online_book_store_db_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(2, 'admin', 'admin@example.com', '$2y$10$IXvGcDNZTu8Tq9DONBK8NeFecl2fdqu.M5D3LcBdzDT1nCkyGYvkK');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'jack London'),
(8, 'charles dickens'),
(10, 'walt whitman'),
(11, 'Lord Byron'),
(12, 'Robert Cecil Martin'),
(13, 'Andrew Hunt'),
(14, 'Thomas H. Cormen'),
(15, 'Francis Scott Fitzgerald'),
(16, 'Josh Lockhart'),
(17, 'Jane Austen'),
(18, 'Arthur Conan Doyle'),
(19, 'Oscar Wilde'),
(20, 'Munshi Premchand'),
(21, 'Devkinandan Khatri'),
(22, 'Ved Vyas'),
(23, 'Valmiki'),
(27, 'Robert C. Martin'),
(28, 'Gayle Laakmann McDowell'),
(29, 'Charles Petzold'),
(30, 'H.D.CARLTON'),
(31, 'Ana Huang'),
(32, 'Test'),
(33, 'htrh'),
(35, 'Blanka LipiÅ„ska'),
(36, 'Sylvia Plath'),
(37, 'Franz Kafka');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`, `likes`, `dislikes`) VALUES
(1, 'Crime and Punishment', 1, 'Crime and Punishment by Fyodor Dostoevsky is a psychological novel that explores the moral dilemmas of Raskolnikov, a young man who commits murder believing he\'s above the law. The story delves into guilt, redemption, and the struggle between good and evil within the human soul.', 1, '6867b146635c16.72345793.jpg', '6867b10397f899.69454118.pdf', 11, 1),
(2, 'Great Expectations', 8, 'Great Expectations by Charles Dickens is a coming-of-age novel that follows Pip, an orphan who dreams of rising above his humble beginnings. Through unexpected fortune and painful lessons, he discovers the true meaning of gentility, loyalty, and love.', 1, '6866d0c00ebda7.98132941.jpg', '6866d0c00fc879.95848990.pdf', 2, 0),
(7, 'Pride and Prejudice', 17, 'A classic novel about love and social expectations in 19th-century England, featuring the witty Elizabeth Bennet and proud Mr. Darcy.', 13, '6867f1c2bb2597.65605507.jpg', '6867f1c2bb6b02.25725302.pdf', 1, 1),
(8, 'The Adventures of Sherlock Holmes', 18, 'Brilliant detective Sherlock Holmes solves mysteries in Victorian London using logic and observation.', 14, '6867f2679e0e48.56247330.jpg', '6867f2679e63b0.35301571.pdf', 2, 0),
(9, 'The Picture of Dorian Gray', 19, 'A young man remains eternally youthful while a hidden portrait of him ages and reflects his moral decay. It’s a chilling tale of vanity, sin, and supernatural consequences.', 15, '6867f347645c59.42987298.jpg', '6867f347652c93.83394651.pdf', 2, 0),
(10, 'Godaan', 20, 'A deep tale of the suffering and social injustice of Indian farmer\'s life', 16, '6867f47066fa58.69641596.jpg', '6867f47076bb84.82902042.pdf', 2, 0),
(11, 'Chandrakanta', 21, 'India\'s first fantasy genre book filled with kings, wizards and thrilling mysteries.', 17, '6867f5b7727257.86137234.jpg', '6867f5b77323f7.43254319.pdf', 2, 0),
(12, 'Mahabharat(English)', 22, 'The *Mahabharat* is one of the greatest Indian epics, narrating the war between the Pandavas and the Kauravas—two branches of the same royal family. It explores themes of dharma (duty), karma, loyalty, and justice. At its core is the legendary Kurukshetra war, with Lord Krishna guiding Arjuna in the *Bhagavad Gita*. The epic also includes rich stories of devotion, betrayal, sacrifice, and divine intervention. It remains a timeless guide to life, ethics, and spiritual wisdom.', 18, '6867f70137e543.66294593.jpg', '6867f70147a9a4.03065371.pdf', 2, 0),
(14, 'Ramayana By Valmiki (Hindi)', 23, 'The *Ramayana* is an ancient Indian epic written by Sage Valmiki. It narrates the life of Lord Rama, his exile to the forest, the abduction of his wife Sita by the demon king Ravana, and Rama\'s eventual victory over evil. The story highlights ideals of devotion, duty, honor, sacrifice, and righteousness. Lord Rama is portrayed as the perfect man (*Maryada Purushottam*), and the epic serves as a moral and spiritual guide. Even today, the *Ramayana* deeply influences Indian culture and values.', 18, '6867fb63714084.51756895.jpg', '6867fb6381b243.71382794.pdf', 8, 0),
(17, 'Clean Code: A Handbook of Agile Software Craftsmanship', 27, 'Clean Code teaches the principles and best practices of writing maintainable, readable, and efficient code. It explains common pitfalls in coding and how to avoid them, emphasizing meaningful naming, functions, and error handling. The book provides real-world examples and case studies, helping developers improve their craftsmanship. It is ideal for both beginners and experienced programmers aiming for cleaner code and better software design.', 23, '68ab45e99b9ed8.70283065.jpeg', '68ab45e99bcd29.45755866.pdf', 3, 0),
(18, 'Cracking the Coding Interview', 28, 'This book is a must-have for anyone preparing for software engineering interviews. It provides 189 programming questions with detailed solutions covering data structures, algorithms, and problem-solving techniques. Beyond coding questions, it offers tips on resume building, behavioral interviews, and career advice. Readers learn not just how to solve problems but also how to communicate their solutions effectively.', 23, '68ab46c2bf54b3.82198391.jpeg', '68ab46c2bf7c38.40431407.pdf', 2, 0),
(19, 'Code: The Hidden Language of Computer Hardware and Software', 29, 'Code explores how computers work from the ground up, starting with simple concepts like Morse code and logic gates. The book gradually explains binary systems, circuits, and programming languages, providing a deep understanding of both hardware and software. Itâ€™s an engaging guide for beginners who want to know what happens inside a computer and why things work the way they do.', 24, '68ab47c8c5c224.86062755.png', '68ab47c8c5fa35.07245322.pdf', 1, 0),
(20, 'Hunting Adeline', 30, 'Hunting Adeline by H.D. Carlton is a dark romance thriller and the second book in the Cat and Mouse Duet. The story follows Zade Meadows, a relentless anti-hero who blurs the line between obsession and love as he hunts Adeline, the woman he refuses to let go. Packed with intense emotions, danger, and morally grey themes, it explores obsession, power, and twisted passion.', 26, '68b9382a7adb84.55993505.jpg', '68b9382a87fa09.15266523.pdf', 4, 0),
(21, 'Twisted Love', 31, 'Twisted Love is a steamy, emotional romance about Alex Volkov, a brooding and cold billionaire with a dark past, and Ava Chen, a sweet, free-spirited photographer haunted by her own childhood trauma. When Alex becomes Avaâ€™s protector at her brotherâ€™s request, their worlds collide in a dangerous game of love, secrets, and healing. The story blends passion, suspense, and heartbreak, exploring how love can break walls and change even the coldest of hearts.', 27, '68b9afcfce10a8.96752049.jpeg', '68b9afcfce3603.27224603.pdf', 3, 0),
(22, 'Twisted Games', 31, 'Twisted Games follows Princess Bridget von Ascheberg, a strong-willed royal trapped by duty, and Rhys Larsen, her stoic, brooding bodyguard. Bound by rules and responsibilities, their simmering attraction grows into a forbidden romance full of longing, tension, and heartbreak. With themes of loyalty, sacrifice, and passion, the story explores how love can defy tradition and rewrite destiny.', 28, '68b9b08f79b218.12371662.jpeg', '68b9b08f79d765.81914428.pdf', 5, 0),
(23, 'Twisted Hate', 31, 'Twisted Hate tells the fiery story of Jules Ambrose, a feisty and ambitious law student, and Josh Chen, a cocky, arrogant doctor. Bound by mutual dislike, their constant banter and clashes ignite into a passionate, enemies-with-benefits relationship. As hidden layers unfold, their chemistry deepens into something far more vulnerable, forcing them to confront past wounds and the possibility of real love.', 27, '68b9b186041719.67471371.jpeg', '68b9b186045361.14598919.pdf', 6, 1),
(24, 'Twisted Lies', 31, 'Twisted Lies centers on Stella Alonso, a sweet, ambitious influencer hiding a painful past, and Christian Harper, a charming but dangerous billionaire with secrets of his own. When they enter into a fake-dating arrangement, sparks turn into an intense, consuming love. Beneath the lies and facades, they must decide if they can trust each other enough to build something real. The story blends passion, suspense, and the ultimate battle between truth and deception.', 27, '68b9b2250b1f88.49356121.jpeg', '68b9b2250b4419.61606297.pdf', 6, 1),
(28, '365 Days', 35, '365 Days is the first book in Blanka LipiÅ„skaâ€™s bestselling trilogy. It tells the story of Laura Biel, a woman kidnapped by Sicilian mafia boss Massimo Torricelli, who gives her one year to fall in love with him. The novel is an intense mix of passion, danger, and dark romance, exploring themes of obsession, power, and desire.', 27, '68c0215f8c61d8.48288972.jpg', '68c0215f8d02e8.84125821.pdf', 1, 0),
(29, 'The Bell Jar', 36, 'Esther Greenwood, a bright nineteen-year-old college student, wins a summer internship in New York but finds herself increasingly isolated, anxious, and suffocated by societal expectations. As she grapples with her ambitions, relationships, and sense of self, Estherâ€™s mental health deteriorates. Plagued by depression, she suffers a breakdown and undergoes psychiatric care, including electroshock therapy. The novel charts her struggle to break free from the metaphorical â€œbell jarâ€ that traps her in despair, culminating in a tentative hope of recovery.', 1, '68cac51e826f22.31288169.jpg', '68cac51e829bb7.63994383.pdf', 3, 0),
(30, 'Metamorphosis', 37, 'The story follows Gregor Samsa, a traveling salesman, who one morning wakes up to find himself transformed into a giant insect. As he struggles to adapt to his new condition, his family grows increasingly horrified and resentful of him. The novella explores themes of alienation, identity, family duty, and the absurdity of human existence. It remains one of Kafkaâ€™s most influential and haunting works.', 31, '68cac60ea9d019.56863319.jpg', '68cac60ea9f974.23375209.pdf', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Novel'),
(5, 'Poetry'),
(13, 'Romance'),
(14, 'Mystery'),
(15, 'Horror'),
(16, 'Classic'),
(17, 'Fiction'),
(18, 'Hindu Itihasa (History)'),
(23, 'Programming'),
(24, 'Computer Science'),
(26, 'Dark romance'),
(27, 'Contemporary Romance'),
(28, 'Royal Romance'),
(29, 'Test'),
(31, 'Novella (Fiction)');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `rating`, `message`, `created_at`) VALUES
(1, 'harsh', 'gohilharsh759@gmail.com', 4, 'this is so beautiful web site', '2025-07-06 00:26:12'),
(4, 'htrh', 'admin@example.com', 5, '87ii', '2025-09-06 05:21:29'),
(5, 'htrh', 'admin@example.com', 5, '87ii', '2025-09-06 05:21:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
