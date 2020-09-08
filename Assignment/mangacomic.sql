-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 11:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mangacomic`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'nd9101112@gmail.com', 1, 1, 5),
(2, 'zeref91011@gmail.com', 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add author', 8, 'add_author'),
(30, 'Can change author', 8, 'change_author'),
(31, 'Can delete author', 8, 'delete_author'),
(32, 'Can view author', 8, 'view_author'),
(33, 'Can add comic', 9, 'add_comic'),
(34, 'Can change comic', 9, 'change_comic'),
(35, 'Can delete comic', 9, 'delete_comic'),
(36, 'Can view comic', 9, 'view_comic'),
(37, 'Can add genre', 10, 'add_genre'),
(38, 'Can change genre', 10, 'change_genre'),
(39, 'Can delete genre', 10, 'delete_genre'),
(40, 'Can view genre', 10, 'view_genre'),
(41, 'Can add publisher', 11, 'add_publisher'),
(42, 'Can change publisher', 11, 'change_publisher'),
(43, 'Can delete publisher', 11, 'delete_publisher'),
(44, 'Can view publisher', 11, 'view_publisher'),
(45, 'Can add wishlist', 12, 'add_wishlist'),
(46, 'Can change wishlist', 12, 'change_wishlist'),
(47, 'Can delete wishlist', 12, 'delete_wishlist'),
(48, 'Can view wishlist', 12, 'view_wishlist'),
(49, 'Can add comment', 13, 'add_comment'),
(50, 'Can change comment', 13, 'change_comment'),
(51, 'Can delete comment', 13, 'delete_comment'),
(52, 'Can view comment', 13, 'view_comment'),
(53, 'Can add news', 14, 'add_news'),
(54, 'Can change news', 14, 'change_news'),
(55, 'Can delete news', 14, 'delete_news'),
(56, 'Can view news', 14, 'view_news'),
(57, 'Can add tbluser', 15, 'add_tbluser'),
(58, 'Can change tbluser', 15, 'change_tbluser'),
(59, 'Can delete tbluser', 15, 'delete_tbluser'),
(60, 'Can view tbluser', 15, 'view_tbluser'),
(61, 'Can add request', 16, 'add_request'),
(62, 'Can change request', 16, 'change_request'),
(63, 'Can delete request', 16, 'delete_request'),
(64, 'Can view request', 16, 'view_request'),
(65, 'Can add email address', 17, 'add_emailaddress'),
(66, 'Can change email address', 17, 'change_emailaddress'),
(67, 'Can delete email address', 17, 'delete_emailaddress'),
(68, 'Can view email address', 17, 'view_emailaddress'),
(69, 'Can add email confirmation', 18, 'add_emailconfirmation'),
(70, 'Can change email confirmation', 18, 'change_emailconfirmation'),
(71, 'Can delete email confirmation', 18, 'delete_emailconfirmation'),
(72, 'Can view email confirmation', 18, 'view_emailconfirmation'),
(73, 'Can add social account', 19, 'add_socialaccount'),
(74, 'Can change social account', 19, 'change_socialaccount'),
(75, 'Can delete social account', 19, 'delete_socialaccount'),
(76, 'Can view social account', 19, 'view_socialaccount'),
(77, 'Can add social application', 20, 'add_socialapp'),
(78, 'Can change social application', 20, 'change_socialapp'),
(79, 'Can delete social application', 20, 'delete_socialapp'),
(80, 'Can view social application', 20, 'view_socialapp'),
(81, 'Can add social application token', 21, 'add_socialtoken'),
(82, 'Can change social application token', 21, 'change_socialtoken'),
(83, 'Can delete social application token', 21, 'delete_socialtoken'),
(84, 'Can view social application token', 21, 'view_socialtoken'),
(85, 'Can add email address', 22, 'add_emailaddress'),
(86, 'Can change email address', 22, 'change_emailaddress'),
(87, 'Can delete email address', 22, 'delete_emailaddress'),
(88, 'Can view email address', 22, 'view_emailaddress'),
(89, 'Can add email confirmation', 23, 'add_emailconfirmation'),
(90, 'Can change email confirmation', 23, 'change_emailconfirmation'),
(91, 'Can delete email confirmation', 23, 'delete_emailconfirmation'),
(92, 'Can view email confirmation', 23, 'view_emailconfirmation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$cK5BexMF3o4h$tJSL317QHQQQvaJzsnFuMu9fz3vQPsXRKtGliL5CjG4=', '2020-07-02 16:52:19.779062', 1, 'saurav', 'Saurav', 'Parajuli', 'sauravinmail@gmail.com', 1, 1, '2020-06-27 06:18:15.868719'),
(2, 'pbkdf2_sha256$180000$XpFkg6Kd24aL$e/y4rJUOnbXN5OeJOfcLf5oG6+K0lumG/bG4gha2owc=', '2020-06-27 12:15:17.911924', 0, 'luiz', 'David', 'Luiz', 'luiz@gmail.com', 0, 1, '2020-06-27 06:52:08.775389'),
(3, 'pbkdf2_sha256$180000$FQ3PAP3jQvbB$Uv9NDKkARJDoswvkjJOOe3FuO9LO/sS1K6Z6/vb0qHA=', '2020-09-08 09:07:58.488058', 1, 'saaz', '', '', 'saaz@gmail.com', 1, 1, '2020-07-06 08:40:06.078884'),
(4, 'pbkdf2_sha256$180000$gZ4HNOrMVxHY$k7vtQM9SemjgByt0+kJMhDzOFqP6Dxgp+PbnWBjf6YQ=', '2020-09-08 09:04:45.078402', 0, 'saaz123', 'saaz', 'neupane', 'saaz234@gmail.com', 0, 1, '2020-07-06 08:45:34.312606'),
(5, '!w6tJdcfavVM4zEPuoOjKmyrkkNyMG4ggi66mOgOc', '2020-09-08 09:06:05.933111', 0, 'natsu', 'Natsu', 'Dragneel', 'nd9101112@gmail.com', 0, 1, '2020-07-06 12:42:14.843290'),
(7, '!VWH6xwep6FspwQpEYxSe46CTjXzlTjUtpUuupYu6', '2020-09-08 09:06:36.650238', 0, 'zeref', 'Zeref', 'Tail', 'zeref91011@gmail.com', 0, 1, '2020-09-08 09:06:36.111244');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comic_author`
--

CREATE TABLE `comic_author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_author`
--

INSERT INTO `comic_author` (`id`, `name`) VALUES
(1, 'Masashi Kishimoto'),
(2, 'Eiichiro Oda'),
(3, 'Ukyō Kodachi'),
(4, 'Hajime Isayama'),
(5, 'Yūki Tabata'),
(6, 'Tite Kubo'),
(7, 'Koyoharu Gotōge'),
(8, 'Inagaki Riichiro'),
(9, 'Haruichi Furudate'),
(10, 'Yoshihiro Togashi'),
(11, 'Kouhei Horikoshi'),
(12, 'ONE'),
(13, 'Kaiu Shirai'),
(14, 'Maloto Yukimura'),
(15, 'Yuuto Tsukuda');

-- --------------------------------------------------------

--
-- Table structure for table `comic_comic`
--

CREATE TABLE `comic_comic` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `coverphoto` varchar(100) DEFAULT NULL,
  `backgroundphoto` varchar(100) NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `photo2` varchar(100) NOT NULL,
  `summary1` varchar(1000) NOT NULL,
  `summary2` varchar(1000) NOT NULL,
  `summary3` varchar(1000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `published` date DEFAULT NULL,
  `pdf` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `Membership` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_comic`
--

INSERT INTO `comic_comic` (`id`, `title`, `coverphoto`, `backgroundphoto`, `photo1`, `photo2`, `summary1`, `summary2`, `summary3`, `description`, `published`, `pdf`, `updated_at`, `Membership`, `author_id`) VALUES
(1, 'Naruto', 'naruto_fBnOuM4.jpg', 'naruto_sOSFcBu.jpg', 'naruto1_JbmojA2.jpg', 'naruto2_ro4cucw.jpg', 'Naruto is a cheeky orphan who causes a lot of trouble in their village, especially to Iroha-sensei', 'After failing to graduate, he heeds Mizuki-sensei and stole the forbidden scroll from the Hokage', 'Follow Naruto as he learns a dark secret from his past and his journey to become the next Hokage', 'Twelve years ago, the powerful Nine-Tailed Demon Fox attacked the ninja village of Konohagakure. The demon was quickly defeated and sealed into the infant Naruto Uzumaki, by the Fourth Hokage who sacrificed his life to protect the village. Now Naruto is the number one knucklehead ninja who\'s determined to become the next Hokage and gain recognition by everyone who ever doubted him!', '1999-09-21', 'Naruto_Dy9YGUj.pdf', '2020-07-06 11:00:10.060984', 1, 1),
(2, 'One Piece', 'onepiece_T1m6OyU.jpg', 'onepiece_ZF6ozQj.jpg', 'onepiece1.jpg', 'onepiece2.jpg', 'Monkey D. Luffy is an adventurous young lad with a unique ability dreaming to be the new Pirate King', 'He gathers friends and a pirate ship to sail the seas and find the ultimate treasure: One Piece!', 'An epic journey of memorable adventures across the Grand Line ocean awaits for Luffy and his crew', 'Gol D. Roger, a man referred to as the \"Pirate King,\" is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the Pirate King is executed and the Great Age of Pirates begins. Twenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new Pirate King. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.', '1997-07-22', 'onepiece.pdf', '2020-07-06 11:00:23.527677', 0, 2),
(3, 'Boruto', 'boruto_xS3oOHK.jpg', 'boruto_E1aHld5.jpg', 'boruto1.jpg', 'boruto2.jpg', 'Boruto is the adventurous son of the ninja leader Naruto Uzumaki, the Seventh Hokage of Konohagakure', 'During Boruto\'s Chunin exam, two villains intervene and kidnaps Naruto to unleash the beast Kurama', 'Along with his ninja team and mentors, Boruto goes on a rescue mission to save his abducted father', 'Naruto was a young shinobi with an incorrigible knack for mischief. He achieved his dream to become the greatest ninja in the village and his face sits atop the Hokage monument. But this is not his story... A new generation of ninja are ready to take the stage, led by Naruto\'s own son, Boruto!', '2016-05-09', 'boruto.pdf', '2020-07-06 11:01:05.387527', 0, 3),
(4, 'Attack on Titan', 'attackontitan_5JwWMYJ.jpg', 'attackontitan_qxbJxfs.jpg', 'attackontitan1.jpg', 'attackontitan2.jpg', 'Young boy Eren Yeager used to live a peaceful life inside a walled village with family and locals', 'After a traumatizing loss, he joins the Survey Corps hell-bent on eliminating titans on earth', 'Man-eating giants roam the land while heroic soldiers risk their lives in a post-apocalyptic world', '“On that day, mankind received a grim reminder. We lived in fear of the Titans, and were disgraced to live in these cages we called walls.” Over a century ago, terror rained upon humanity when monstrous giants named “titans” appeared and mercilessly devoured humans. With no other choice, mankind built large walls to barricade themselves safely in and keep the Titans out. Decades later, Eren Yeager is a boy that has grown up within the walls only knowing peace. He and his friends, Mikasa and Armin, innocently dream of exploring the vast world outside the walls. But none except the military have ever left their safe haven -- until the day comes when a colossal titan breaks through the wall, and humanity’s peace is shattered to ruins once again.', '2009-09-09', 'attackontitan.pdf', '2020-07-06 11:01:21.949342', 0, 4),
(5, 'Black Clover', 'blackclover_Mhpi7xM.jpg', 'blackclover_YW309aF.jpg', 'blackclover1.jpg', 'blackclover2.jpg', 'In a world ruled by magic, orphan Asta was born without it, while his friend Yuno is a prodigy', 'Once the closest of friends, Asta and Yuno grew apart as they joined two different magic squads', 'A touching story of friendship, courage, growth, and magic training', 'Asta and Yuno were abandoned together as babies in baskets at the same church on the same day, and have been inseparable since. As children, they promised that they would compete against each other to see who would become the next Wizard King. However, as they grew up, some differences between them became plain - Yuno was a magical prodigy, while Asta could not use magic at all. In a country where magic is everything and athletic ability is nothing, Asta tried every day to provoke even the simplest magic out of himself with physical training and loud proclamations of his will. At age 15, during the group ceremony where three-leaf-clover grimoires of different designs float down to each person, Yuno receives a spectacular book with the legendary four-leaf clover, while Asta receives nothing at all. Later, however, when Yuno was surprised and trapped by a fallen magic knight, the truth about Asta\'s power and determination was revealed—a dark-covered, obscurely patterned grimoire broke ou', '2015-02-16', 'blackclover.pdf', '2020-07-06 11:01:32.109973', 0, 5),
(6, 'Bleach', 'bleach_rUpeYLd.jpg', 'bleach_KzJzwF9.jpg', 'bleach1.jpg', 'bleach2.jpg', 'Ichigo Kurosaki is like any other high school student, except for the fact that he can see spirits', 'When his sister is targeted by a hollow—a masked monster—he meets a soul reaper named Rukia Kuchiki', 'Out of desperation, Rukia lends Ichigo her powers, opening his eyes to the real dangers that lurked', 'Death isn’t the end. In this action-packed supernatural tale, ghosts haunt the streets and have the potential to become a monstrous threat to both the living and the dead... Ichigo Kurosaki is a high schooler with the ability to see spirits, but he has a relatively normal life—until the day his path crosses with the Soul Reaper, Rukia Kuchiki. Rukia has a duty to guide spirits to the afterlife, but also to eradicate the masked monsters known as “Hollows”. In a twist of fate, Ichigo takes up Rukia’s offer in sharing her Soul Reaper powers after she’s critically injured when protecting his family. What unfolds after is Ichigo’s unexpected but inevitable journey through the spiritual realm of Soul Reapers, fearsome Hollows, and even more cruel threats to both worlds...', '2001-08-07', 'bleach.pdf', '2020-07-06 11:01:43.218393', 0, 6),
(7, 'Demon Slayer', 'demonslayer_9Jgm6qN.jpg', 'demonslayer_tEVjXSP.jpg', 'demonslayer1.jpg', 'demonslayer2.jpg', 'Responsible sibling Tanjiro has been living a peaceful life until he loses his family overnight', 'His sister Nezuko survives, but has turned into a demon, and Tanjiro aims to turn her back to human', 'A dark journey begins when he joins the Demon Slaying Corps to save his sister and avenge his family', 'The setting is Taisho era Japan. Tanjiro is a kindhearted young boy who lived peacefully with his family as a coal seller. Their normal life changes completely when his family is slaughtered by demons. The only other survivor, Tanjiro\'s younger sister Nezuko, has become a ferocious demon. In order to return Nezuko to normal and get revenge on the demon that killed their family, the two of them depart on a journey. From a young talent, an adventure tale of blood and swords begins!', '2016-02-15', 'demon.pdf', '2020-07-06 10:59:39.269054', 0, 7),
(8, 'Dr. Stone', 'drstone_svvqzDK.jpg', 'drstone_aEhT4d0.jpg', 'drstone1.jpg', 'drstone2.jpg', 'Taijuu was supposed to confess his love to his crush, until a stone apocalypse happened', 'He and his genius friend, Senku, try to save humanity from stone and bring back civilization', 'The stone apocalypse has petrified humanity, but the world still grows and turns', 'The science-fiction adventure series follows what happens when suddenly the world\'s biggest-ever \"crisis\" arrives.', '2016-12-14', 'drstone.pdf', '2020-07-06 11:13:54.530341', 0, 8),
(9, 'Haikyuu', 'haikyuu.jpg', 'haikyuu_W0YvDna.jpg', 'haikyuu1.jpg', 'haikyuu2.jpg', 'Despite being short, Hinata never gives up on playing volleyball', 'After a defeat in his first tournament, he follows the footsteps of his idol in high school', 'A sports manga filled with determined players and a lot of intense volleyball matches', '“It\'s true that I\'m not very tall. However! I can jump!” Inspired by the legendary player known as the “Little Giant,” Shouyou Hinata immerses himself in volleyball. Despite being put down because of his short stature, Hinata tirelessly trains himself and attends his first tournament with determination. Unfortunately, his team is quickly defeated almost single-handedly by Tobio Kageyama, known as the “King of the Court”. Refusing to give up, Hinata graduates into Karasuno High, following in the Little Giant’s footsteps. But when he opens the doors to the gym, he finds Kageyama there! The two are forced into teamwork by the other Karasuno players -- and with their skills together, they just might be able to bring Karasuno’s name back from the ashes...', '2017-02-25', 'haikyuu.pdf', '2020-07-06 11:20:09.551422', 0, 9),
(10, 'Hunter X Hunter', 'hunterxhunter.jpg', 'hunterxhunter_AnCUFm8.jpg', 'hunterxhunter1.jpg', 'hunterxhunter2_wE5BxGW.jpg', 'Gon became a licensed Hunter after passing the qualifying exam', 'His reason for being a Hunter is to find his father who is also a Hunter', 'He explores the world that is filled with rare monsters, treasure, and interesting people', 'Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the gruelling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.', NULL, 'hunter.pdf', '2020-07-06 11:21:46.111797', 0, 10),
(11, 'My Hero Academia', 'myhero.png', 'myheroacademia.jpg', 'myheroacademia1.jpg', 'myheroacademia2.jpg', 'Where having superpowers (Quirks) is the norm, Izuku was bullied for being born with none', 'After showing an act of courage, Izuku is granted his own Quirk by the world\'s greatest Hero', 'Izuku starts his training at a school for superheroes and gets involved in battling an evil force', 'One day, a four-year-old boy came to a sudden realization: the world is not fair. Eighty percent of the world\'s population wield special abilities, known as \"quirks,\" which have given many the power to make their childhood dreams of becoming a superhero a reality. Unfortunately, Izuku Midoriya was one of the few born without a quirk, suffering from discrimination because of it. Yet, he refuses to give up on his dream of becoming a hero; determined to do the impossible, Izuku sets his sights on the elite hero training academy, UA High. However, everything changes after a chance meeting with the number one hero and Izuku\'s idol, All Might. Discovering that his dream is not a dead end, the powerless boy undergoes special training, working harder than ever before. Eventually, this leads to him inheriting All Might\'s power, and with his newfound abilities, gets into his school of choice, beginning his grueling journey to become the successor of the best hero on the planet', '2014-09-21', 'hero.pdf', '2020-07-06 11:28:51.981863', 0, 11),
(12, 'One Punch-Man', 'onepunchman.jpg', 'onepunchman_03CqR2D.jpg', 'onepunchman1.jpg', 'onepunchman2.jpg', 'Saitama can knock out literally anyone and anything with just one punch.', 'In a world full of super beings that he can defeat, Saitama yearns to find a worthy opponent.', 'He had also lost all his hair due to extensive training, so he\'s bored and bald. Comically tragic.', '“I’m just an average guy who serves as an average hero.” In a world of superheroes and villains, Saitama appears to be a plain man -- from his lifeless expression to his sluggish personality, nothing stands out. But once danger strikes, he’s an insanely powerful superhero that can take down villains with a single punch! Although his strength keeps the city safe, Saitama can’t help but grow bored with how easily his opponents are defeated. One day, his path crosses with the young cyborg, Genos, who wishes to be Saitama’s disciple. Thus a new chapter in Saitama’s life unfolds, opening up this action-packed seinen comedy of an average-looking man craving excitement and popularity in his “hobby” of being a superhero!', '2015-05-19', 'onepunchman.pdf', '2020-07-06 11:31:23.506059', 0, 12),
(13, 'The Promised Neverland', 'thepromisedneverland.jpg', 'promiseneverland.jpg', 'promiseneverland1.jpg', 'promiseneverland2.jpg', 'Set in 2045, Grace Field House is an orphanage housing Emma and 37 other children', 'The kids are well taken care of, put through daily vigorous tests and forbidden to leave the premise', 'After a kid is found dead, Emma and Norman start investigating and discover harrowing secrets', 'Emma lives in the Grace Field House, an orphanage, with 38 other children. In the ten years since she’s been there, she’s never had reason to question their quiet everyday lives of being family, the identification numbers on their necks, or the rigorous tests they have to take daily. But the house has mysterious rules, such as being forbidden to go beyond the gates to the outside world, and children leaving once they come of age -- and are never heard from again. One day, Emma chases after one of those children that leaves...only to discover horrifying monsters and the real reason they’re forbidden to go outside...', '2018-01-23', 'promise.pdf', '2020-07-06 11:33:48.258087', 0, 13),
(14, 'Vinland Saga', 'vinlandsaga.jpg', 'vinlandsaga_YQXn1q1.jpg', 'vinlandsaga1.jpg', 'vinlandsaga2.jpg', 'Thorfinn is a cold and fine viking among mercenaries with a lust for vengeance in his heart', 'Vowing to kill Askeladd in a fair duel, he works hard in honing his skills even at a young age', 'Follow Thorfinn on his quest to avenge his father\'s death and Askeladd\'s political plans for England', 'Thorfinn, son of one of the Vikings\' greatest warriors, is among the finest fighters in the merry band of mercenaries run by the cunning Askeladd, an impressive feat for a person his age. However, Thorfinn is not part of the group for the plunder it entails—instead, for having caused his family great tragedy, the boy has vowed to kill Askeladd in a fair duel. Not yet skilled enough to defeat him, but unable to abandon his vengeance, Thorfinn spends his boyhood with the mercenary crew, honing his skills on the battlefield among the war-loving Danes, where killing is just another pleasure of life. One day, when Askeladd receives word that Danish prince Canute has been taken hostage, he hatches an ambitious plot—one that will decide the next King of England and drastically alter the lives of Thorfinn, Canute, and himself. Set in 11th century Europe, Vinland Saga tells a bloody epic in an era where violence, madness, and injustice are inescapable, providing a paradise for the battle-crazed', '2016-01-09', 'vinlandsaga.pdf', '2020-07-06 11:35:39.607721', 0, 14),
(15, 'FOOD WARS: Shokugeki no Soma', 'foodwar.jpg', 'soma_bWomDqh.jpg', 'soma1.jpg', 'soma2.jpg', 'Soma Yukihira, son of a famous chef, enrolls in the prestigious Totsuki Saryo Culinary Institute', 'Where only the top 10 percent graduates each year, Soma plans on becoming the best', 'Plus, to secure his housing residence, he and other characters must compete in cooking fights', 'Yukihira Souma is an ambitious 15-year-old whose dream is to surpass the culinary skills of his father. But just as Souma graduates from middle school, his father abruptly closes down the family restaurant and leaves to cook in Europe. Although downtrodden, Souma\'s fighting spirit is rekindled when his father enrolls him in an elite culinary school where only 10% of the students graduate. Can Souma survive in the cut-throat world of Tootsuki Academy?', '2001-01-20', 'soma.pdf', '2020-07-06 11:37:26.497864', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `comic_comic_genre`
--

CREATE TABLE `comic_comic_genre` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_comic_genre`
--

INSERT INTO `comic_comic_genre` (`id`, `comic_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 3, 1),
(7, 3, 2),
(8, 4, 4),
(9, 4, 5),
(10, 4, 6),
(11, 4, 7),
(12, 5, 1),
(13, 5, 2),
(15, 6, 1),
(14, 6, 8),
(16, 7, 1),
(17, 7, 3),
(18, 7, 5),
(19, 8, 1),
(20, 8, 4),
(22, 9, 4),
(21, 9, 9),
(23, 10, 1),
(24, 10, 2),
(25, 10, 4),
(28, 11, 4),
(26, 11, 8),
(27, 11, 10),
(31, 12, 4),
(29, 12, 8),
(30, 12, 10),
(32, 13, 8),
(33, 13, 11),
(34, 14, 1),
(35, 14, 4),
(36, 15, 10),
(37, 15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `comic_comic_likes`
--

CREATE TABLE `comic_comic_likes` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_comic_likes`
--

INSERT INTO `comic_comic_likes` (`id`, `comic_id`, `user_id`) VALUES
(4, 1, 1),
(3, 1, 2),
(19, 1, 7),
(5, 2, 1),
(18, 2, 4),
(16, 5, 4),
(13, 5, 5),
(7, 7, 4),
(12, 9, 3),
(11, 9, 4),
(14, 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `comic_comic_publisher`
--

CREATE TABLE `comic_comic_publisher` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_comic_publisher`
--

INSERT INTO `comic_comic_publisher` (`id`, `comic_id`, `publisher_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 3),
(8, 4, 4),
(9, 5, 1),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 6, 5),
(14, 7, 1),
(15, 7, 2),
(16, 8, 6),
(17, 9, 7),
(18, 10, 6),
(19, 11, 6),
(20, 12, 2),
(21, 13, 7),
(22, 14, 3),
(23, 15, 7);

-- --------------------------------------------------------

--
-- Table structure for table `comic_comment`
--

CREATE TABLE `comic_comment` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_comment`
--

INSERT INTO `comic_comment` (`id`, `content`, `timestamp`, `comic_id`, `reply_id`, `user_id`) VALUES
(1, 'Hello', '2020-06-27 08:58:52.784342', 1, NULL, 1),
(2, 'Hey there!\r\n', '2020-06-27 09:49:54.258735', 1, 1, 2),
(3, 'Hello One Piece\r\n', '2020-07-01 17:00:28.084483', 2, NULL, 1),
(4, 'How are you, my friend?', '2020-07-01 17:11:56.959500', 1, 1, 1),
(6, 'One of the best\r\n', '2020-07-06 12:58:06.263894', 9, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `comic_genre`
--

CREATE TABLE `comic_genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_genre`
--

INSERT INTO `comic_genre` (`id`, `name`) VALUES
(1, 'Adventure'),
(2, 'Fantasy'),
(3, 'Martial Arts'),
(4, 'Action'),
(5, 'Dark Fantasy'),
(6, 'Apocalyptic'),
(7, 'Post Apocalyptic'),
(8, 'Supernatural'),
(9, 'Sports'),
(10, 'Comedy'),
(11, 'Sci-Fi'),
(12, 'Ecchi');

-- --------------------------------------------------------

--
-- Table structure for table `comic_publisher`
--

CREATE TABLE `comic_publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_publisher`
--

INSERT INTO `comic_publisher` (`id`, `name`, `location`) VALUES
(1, 'Shueisha', 'Tokyo, Japan'),
(2, 'VIZ Media', 'San Francisco, USA'),
(3, 'Kodansha', 'Tokyo, Japan'),
(4, 'Kodansha USA', 'New York, USA'),
(5, 'Madman Entertainment', 'Victoria, Australia'),
(6, 'Weekly Shonen Jump', 'Japan'),
(7, 'Shueisha', 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `comic_wishlist`
--

CREATE TABLE `comic_wishlist` (
  `id` int(11) NOT NULL,
  `added` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wished_comic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic_wishlist`
--

INSERT INTO `comic_wishlist` (`id`, `added`, `user_id`, `wished_comic_id`) VALUES
(1, '2020-06-27 08:58:52.871112', 1, 1),
(9, '2020-06-27 12:14:55.103936', 2, 1),
(10, '2020-07-01 17:00:28.235653', 1, 2),
(17, '2020-07-06 12:59:01.311554', 3, 9),
(20, '2020-07-07 06:13:18.386060', 5, 14),
(22, '2020-09-06 07:58:46.531663', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-27 06:26:34.513844', '1', 'Masashi Kishimoto', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-06-27 06:27:43.178064', '1', 'Adventure', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-06-27 06:27:49.901453', '2', 'Fantasy', 1, '[{\"added\": {}}]', 10, 1),
(4, '2020-06-27 06:27:56.245149', '3', 'Martial Arts', 1, '[{\"added\": {}}]', 10, 1),
(5, '2020-06-27 06:28:14.770094', '1', 'Shueisha', 1, '[{\"added\": {}}]', 11, 1),
(6, '2020-06-27 06:28:21.880729', '2', 'VIZ Media', 1, '[{\"added\": {}}]', 11, 1),
(7, '2020-06-27 06:32:21.287587', '1', 'Naruto', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-06-27 08:24:43.790500', '1', 'Naruto', 2, '[{\"changed\": {\"fields\": [\"Membership\"]}}]', 9, 1),
(9, '2020-06-27 08:49:07.496089', '1', 'Naruto', 2, '[{\"changed\": {\"fields\": [\"Membership\"]}}]', 9, 1),
(10, '2020-06-27 09:21:13.298667', '1', 'Naruto', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 1),
(11, '2020-06-27 09:22:22.845595', '1', 'Naruto', 2, '[{\"changed\": {\"fields\": [\"Backgroundphoto\"]}}]', 9, 1),
(12, '2020-06-27 13:48:50.003685', '1', 'Naruto', 2, '[{\"changed\": {\"fields\": [\"Published\"]}}]', 9, 1),
(13, '2020-07-01 16:35:44.165542', '2', 'Eiichiro Oda', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-07-01 16:40:00.466673', '2', 'One Piece', 1, '[{\"added\": {}}]', 9, 1),
(15, '2020-07-02 14:42:22.097042', '3', 'Ukyō Kodachi', 1, '[{\"added\": {}}]', 8, 1),
(16, '2020-07-02 14:45:33.765606', '3', 'Boruto', 1, '[{\"added\": {}}]', 9, 1),
(17, '2020-07-02 14:48:32.266167', '4', 'Hajime Isayama', 1, '[{\"added\": {}}]', 8, 1),
(18, '2020-07-02 14:49:08.548791', '4', 'Action', 1, '[{\"added\": {}}]', 10, 1),
(19, '2020-07-02 14:49:17.040448', '5', 'Dark Fantasy', 1, '[{\"added\": {}}]', 10, 1),
(20, '2020-07-02 14:50:31.404441', '6', 'Apocalyptic', 1, '[{\"added\": {}}]', 10, 1),
(21, '2020-07-02 14:50:46.848137', '7', 'Post - Apocalyptic', 1, '[{\"added\": {}}]', 10, 1),
(22, '2020-07-02 14:51:36.946688', '3', 'Kodansha', 1, '[{\"added\": {}}]', 11, 1),
(23, '2020-07-02 14:52:12.723397', '4', 'Kodansha USA', 1, '[{\"added\": {}}]', 11, 1),
(24, '2020-07-02 14:54:02.892876', '4', 'Attack on Titan', 1, '[{\"added\": {}}]', 9, 1),
(25, '2020-07-02 14:56:48.150306', '5', 'Yūki Tabata', 1, '[{\"added\": {}}]', 8, 1),
(26, '2020-07-02 14:59:24.964292', '5', 'Black Clover', 1, '[{\"added\": {}}]', 9, 1),
(27, '2020-07-02 15:00:12.342499', '3', 'Boruto', 2, '[{\"changed\": {\"fields\": [\"Published\"]}}]', 9, 1),
(28, '2020-07-02 15:02:53.017226', '6', 'Tite Kubo', 1, '[{\"added\": {}}]', 8, 1),
(29, '2020-07-02 15:03:04.958788', '8', 'Supernatural', 1, '[{\"added\": {}}]', 10, 1),
(30, '2020-07-02 15:03:41.502224', '5', 'Madman Entertainment', 1, '[{\"added\": {}}]', 11, 1),
(31, '2020-07-02 15:05:47.581551', '6', 'Bleach', 1, '[{\"added\": {}}]', 9, 1),
(32, '2020-07-02 15:08:08.339168', '7', 'Koyoharu Gotōge', 1, '[{\"added\": {}}]', 8, 1),
(33, '2020-07-02 15:10:08.423611', '7', 'Demon Slayer', 1, '[{\"added\": {}}]', 9, 1),
(34, '2020-07-02 15:13:53.835857', '1', 'News object (1)', 1, '[{\"added\": {}}]', 14, 1),
(35, '2020-07-02 15:15:12.121759', '2', 'News object (2)', 1, '[{\"added\": {}}]', 14, 1),
(36, '2020-07-02 15:15:50.548604', '3', 'News object (3)', 1, '[{\"added\": {}}]', 14, 1),
(37, '2020-07-02 15:16:12.428251', '4', 'News object (4)', 1, '[{\"added\": {}}]', 14, 1),
(38, '2020-07-06 10:59:39.277951', '7', 'Demon Slayer', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(39, '2020-07-06 11:00:10.167496', '1', 'Naruto', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(40, '2020-07-06 11:00:23.558594', '2', 'One Piece', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(41, '2020-07-06 11:01:05.420445', '3', 'Boruto', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(42, '2020-07-06 11:01:21.959099', '4', 'Attack on Titan', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(43, '2020-07-06 11:01:32.210782', '5', 'Black Clover', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(44, '2020-07-06 11:01:43.325723', '6', 'Bleach', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(45, '2020-07-06 11:08:22.906255', '8', 'Inagaki Riichiro', 1, '[{\"added\": {}}]', 8, 3),
(46, '2020-07-06 11:11:20.515779', '6', 'Weekly Shonen Jump', 1, '[{\"added\": {}}]', 11, 3),
(47, '2020-07-06 11:13:30.552661', '8', 'Dr. Stone', 1, '[{\"added\": {}}]', 9, 3),
(48, '2020-07-06 11:13:54.623200', '8', 'Dr. Stone', 2, '[{\"changed\": {\"fields\": [\"Coverphoto\"]}}]', 9, 3),
(49, '2020-07-06 11:17:00.649331', '7', 'Shueisha', 1, '[{\"added\": {}}]', 11, 3),
(50, '2020-07-06 11:17:08.577608', '9', 'Sports', 1, '[{\"added\": {}}]', 10, 3),
(51, '2020-07-06 11:19:03.918280', '9', 'Haruichi Furudate', 1, '[{\"added\": {}}]', 8, 3),
(52, '2020-07-06 11:19:40.501842', '9', 'Haikyuu', 1, '[{\"added\": {}}]', 9, 3),
(53, '2020-07-06 11:20:09.561548', '9', 'Haikyuu', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 3),
(54, '2020-07-06 11:20:34.266849', '10', 'Yoshihiro Togashi', 1, '[{\"added\": {}}]', 8, 3),
(55, '2020-07-06 11:21:46.123034', '10', 'Hunter X Hunter', 1, '[{\"added\": {}}]', 9, 3),
(56, '2020-07-06 11:27:24.779903', '11', 'Kouhei Horikoshi', 1, '[{\"added\": {}}]', 8, 3),
(57, '2020-07-06 11:27:57.959341', '10', 'Comedy', 1, '[{\"added\": {}}]', 10, 3),
(58, '2020-07-06 11:28:52.380206', '11', 'My Hero Academia', 1, '[{\"added\": {}}]', 9, 3),
(59, '2020-07-06 11:29:38.144433', '12', 'ONE', 1, '[{\"added\": {}}]', 8, 3),
(60, '2020-07-06 11:31:23.635757', '12', 'One Punch-Man', 1, '[{\"added\": {}}]', 9, 3),
(61, '2020-07-06 11:31:43.409122', '13', 'Kaiu Shirai', 1, '[{\"added\": {}}]', 8, 3),
(62, '2020-07-06 11:32:13.936575', '11', 'Sci-Fi', 1, '[{\"added\": {}}]', 10, 3),
(63, '2020-07-06 11:33:48.269514', '13', 'The Promised Neverland', 1, '[{\"added\": {}}]', 9, 3),
(64, '2020-07-06 11:34:05.714464', '14', 'Maloto Yukimura', 1, '[{\"added\": {}}]', 8, 3),
(65, '2020-07-06 11:35:39.730431', '14', 'Vinland Saga', 1, '[{\"added\": {}}]', 9, 3),
(66, '2020-07-06 11:35:57.405680', '15', 'Yuuto Tsukuda', 1, '[{\"added\": {}}]', 8, 3),
(67, '2020-07-06 11:36:29.893870', '12', 'Ecchi', 1, '[{\"added\": {}}]', 10, 3),
(68, '2020-07-06 11:37:26.602507', '15', 'FOOD WARS: Shokugeki no Soma', 1, '[{\"added\": {}}]', 9, 3),
(69, '2020-07-06 12:14:12.577104', '2', '127.0.0.1:8000/', 1, '[{\"added\": {}}]', 7, 3),
(70, '2020-07-06 12:14:20.069708', '1', 'Facebook-login', 1, '[{\"added\": {}}]', 20, 3),
(71, '2020-07-06 12:14:44.412292', '2', 'Google-login', 1, '[{\"added\": {}}]', 20, 3),
(72, '2020-07-06 12:16:16.160212', '1', 'example.com', 3, '', 7, 3),
(73, '2020-09-08 09:08:58.689363', '4', 'Tbluser object (4)', 2, '[{\"changed\": {\"fields\": [\"Membership\"]}}]', 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(22, 'account', 'emailaddress'),
(23, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(17, 'allauth', 'emailaddress'),
(18, 'allauth', 'emailconfirmation'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'comic', 'author'),
(9, 'comic', 'comic'),
(13, 'comic', 'comment'),
(10, 'comic', 'genre'),
(11, 'comic', 'publisher'),
(12, 'comic', 'wishlist'),
(5, 'contenttypes', 'contenttype'),
(14, 'news', 'news'),
(16, 'requested', 'request'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(19, 'socialaccount', 'socialaccount'),
(20, 'socialaccount', 'socialapp'),
(21, 'socialaccount', 'socialtoken'),
(15, 'tbluser', 'tbluser');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-27 06:13:44.691469'),
(2, 'auth', '0001_initial', '2020-06-27 06:13:46.113668'),
(3, 'admin', '0001_initial', '2020-06-27 06:13:55.582350'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-27 06:13:58.146462'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-27 06:13:58.192338'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-27 06:13:58.721462'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-27 06:13:59.418682'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-27 06:13:59.513547'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-27 06:13:59.566887'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-27 06:13:59.981809'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-27 06:14:00.002719'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-27 06:14:00.040617'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-27 06:14:00.122400'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-27 06:14:00.205178'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-27 06:14:00.321897'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-27 06:14:00.404645'),
(17, 'comic', '0001_initial', '2020-06-27 06:14:03.846509'),
(18, 'news', '0001_initial', '2020-06-27 06:14:15.775969'),
(19, 'requested', '0001_initial', '2020-06-27 06:14:16.269649'),
(20, 'sessions', '0001_initial', '2020-06-27 06:14:17.142314'),
(21, 'sites', '0001_initial', '2020-06-27 06:14:17.533302'),
(22, 'sites', '0002_alter_domain_unique', '2020-06-27 06:14:17.688358'),
(23, 'socialaccount', '0001_initial', '2020-06-27 06:14:20.106447'),
(24, 'socialaccount', '0002_token_max_lengths', '2020-06-27 06:14:25.583137'),
(25, 'socialaccount', '0003_extra_data_default_dict', '2020-06-27 06:14:25.619053'),
(26, 'tbluser', '0001_initial', '2020-06-27 06:14:25.872392'),
(27, 'account', '0001_initial', '2020-06-27 06:26:00.558351'),
(28, 'account', '0002_email_max_length', '2020-06-27 06:26:02.302806');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04xmo34rmbruny72lzk09e1cgcska3gc', 'ODg4ZDhiYWM0YzBiMTFkZTg3MWZkMThkYTRiZmVhYTA0YTE0YmZiMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZTg2MWYxMTRkMDMwOWU3OGZkOTUxZmIxNWViNjJlZDY0OWRjZWEzIn0=', '2020-07-20 10:58:09.128831'),
('06hmmukogko3gx121x96bxsty9u0lfth', 'MmI5M2RhOGEyZWE4YzNhYmE1MjhkNWI1YTZlMmI0YmVhY2Y1YmZjZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MGNjOWE3YTlkZDA4MmU5YWY3YTFkNDQzMzdmNWRjNTcwZjcyNzEwIn0=', '2020-07-11 06:53:34.880200'),
('24uveej24zosc0ja1sc3srex1hxgy2zt', 'NWM4ZDcyOGJjZDE4Y2M3MmNmZDMyMWRlMTlkNGNiOGYyMDQ1NGZjYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyY2U2ODRkZWUzOWU3NWRmZjNhN2YzNGQxYWYyZTVlZDdiYmJhNGFmIn0=', '2020-07-15 16:34:26.366088'),
('8bxuharqe27mjiq9dydzvdwgkumf2fwo', 'MjRlYWFhZGYwOTU4OTc2NDM1MTBjMjVkNmQwMGVlYTUyZDA5NTY4NTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWU4ZTY4YjhlMjMzYWZkYTEwMGZkYmQ4MmFhMWE1YmQ1NDc1Zjk3In0=', '2020-07-20 12:59:24.327120'),
('apaep2qzz4minsthrqgbgx0ccc59153i', 'MjRlYWFhZGYwOTU4OTc2NDM1MTBjMjVkNmQwMGVlYTUyZDA5NTY4NTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWU4ZTY4YjhlMjMzYWZkYTEwMGZkYmQ4MmFhMWE1YmQ1NDc1Zjk3In0=', '2020-07-20 10:40:05.029576'),
('eaexcpx0glao4douztbn51emq7smx9q3', 'NWM4ZDcyOGJjZDE4Y2M3MmNmZDMyMWRlMTlkNGNiOGYyMDQ1NGZjYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyY2U2ODRkZWUzOWU3NWRmZjNhN2YzNGQxYWYyZTVlZDdiYmJhNGFmIn0=', '2020-07-16 16:52:19.827932'),
('h6w99r061g9wemy7v9al1i4ye0hxp7gq', 'MjRlYWFhZGYwOTU4OTc2NDM1MTBjMjVkNmQwMGVlYTUyZDA5NTY4NTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWU4ZTY4YjhlMjMzYWZkYTEwMGZkYmQ4MmFhMWE1YmQ1NDc1Zjk3In0=', '2020-07-20 10:09:06.061182'),
('nqt76vqlz16g5mfklwn5sohcouz5l9ef', 'ODg4ZDhiYWM0YzBiMTFkZTg3MWZkMThkYTRiZmVhYTA0YTE0YmZiMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZTg2MWYxMTRkMDMwOWU3OGZkOTUxZmIxNWViNjJlZDY0OWRjZWEzIn0=', '2020-07-20 12:06:37.782397'),
('tpbfi2g5zgsrqqgu5rru2db6oymktkug', 'MjRlYWFhZGYwOTU4OTc2NDM1MTBjMjVkNmQwMGVlYTUyZDA5NTY4NTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWU4ZTY4YjhlMjMzYWZkYTEwMGZkYmQ4MmFhMWE1YmQ1NDc1Zjk3In0=', '2020-07-20 09:45:27.442369'),
('umsw2tglm4hjitanxb9gk35zqskefhi8', 'ODg4ZDhiYWM0YzBiMTFkZTg3MWZkMThkYTRiZmVhYTA0YTE0YmZiMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZTg2MWYxMTRkMDMwOWU3OGZkOTUxZmIxNWViNjJlZDY0OWRjZWEzIn0=', '2020-07-20 12:08:43.535477');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(2, '127.0.0.1:8000/', 'localhost');

-- --------------------------------------------------------

--
-- Table structure for table `news_news`
--

CREATE TABLE `news_news` (
  `id` int(11) NOT NULL,
  `newsphoto` varchar(100) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `news` varchar(1000) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `othernews1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_news`
--

INSERT INTO `news_news` (`id`, `newsphoto`, `headline`, `news`, `photo`, `date`, `othernews1`) VALUES
(1, 'duranki.jpg', 'Berserk Author Miura Kentaro Announces New Manga!', 'Berserk author Miura Kentarou is set to produce a new manga based on his original story, titled Duranki! Duranki will run in new manga magazine Young Animal Zero, the sister magazine to Young Animal, which ran Berserk. It will publish its first issue on Sept. 9, which will contain the first two chapters of Duranki. Miura\'s new series will revolve around Usmugar, a child with a dragon\'s name who is neither human nor god. Duranki will hit the shelves in issue one of Young Animal Zero on Sept. 9.', 'duranki_t6kzCyo.jpg', '2020-07-02 15:13:53.808922', 'duranki_N9Vd5ZP.jpg'),
(2, 'soma.jpg', 'Shokugeki no Soma to End in 3 More Chapters', 'Hit gourmet manga Shokugeki no Soma is set to end in just 3 more chapters. Along with Soma\'s final chapter, Weekly Shonen Jump has promised a \"super huge announcement\". Written by Tsukuda Yuto and illustrated by Saeki Shun, Shokugeki no Soma began serialization in Weekly Shonen Jump in 2012. Since then, it has enjoyed popularity not only as a manga, but also a light novel plus an anime adaptation with three seasons.', 'soma_iULIbaV.jpg', '2020-07-02 15:15:12.099817', 'soma_QM9n1Z4.jpg'),
(3, 'gintama.png', 'Gintama Manga to Continue Through Official App!', 'In the Feb. 22 edition of manga magazine Jump Giga, it was announced that Sorachi Hideaki\'s Gintama will continue through an official app. Set in an alternate Edo period where aliens have invaded the earth, Gintama follows the adventures of samurai Sakata Gintoki and his friends Shinpachi and Kagura as they struggle to pay the rent. Having run in Weekly Shonen Jump for 15 years, the manga was originally set to end in Sept. 2018 but ended up moving to Jump Giga. It has been adapted into a successful TV anime and two anime movies, as well as two live action movies and a live action webdrama.', 'gintama_FKpVK4z.png', '2020-07-02 15:15:50.544619', 'gintama_u0k0UKo.png'),
(4, 'samurai.jpg', 'Naruto’s Kishimoto Masashi Launches New Sci-fi Series Samurai 8!', 'Hit ninja manga Naruto wrapped up over four years ago, but now its author, Kishimoto Masashi, is back with a new series titled Samurai 8: The Tale of Hachimaru! Illustrated by manga artist Okubo Akira, who is also a former assistant of Kishimoto, Samurai 8 began its run in Issue 24 of Weekly Shonen Jump. The story follows a young boy called Hachimaru who cannot leave his house due to poor health. Dreaming of being a samurai with a mechanical body and power beyond that of any human, he spends his days indoors playing games online until a cat calling himself a samurai suddenly appears before him. Samurai 8: The Tale of Hachimaru is currently running in Weekly Shonen Jump.', 'samurai_3XUBp5K.jpg', '2020-07-02 15:16:12.391282', 'samurai_wFCBOiY.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requested_request`
--

CREATE TABLE `requested_request` (
  `id` int(11) NOT NULL,
  `manganame` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `information` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requested_request`
--

INSERT INTO `requested_request` (`id`, `manganame`, `email`, `file`, `information`) VALUES
(1, 'Any', 'wwe@gmail.c', 'Anymgapartment.webp', 'Anything about other comic like marvel?'),
(2, 'Miss Mystic', 'saaz@gmail.com', 'Miss MysticmgPinClipart.com_clipart-icecream_240420.png', '10/10');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '117459861620952956618', '2020-09-08 09:06:05.747432', '2020-07-06 12:42:15.139459', '{\"id\": \"117459861620952956618\", \"email\": \"nd9101112@gmail.com\", \"verified_email\": true, \"name\": \"Natsu Dragneel\", \"given_name\": \"Natsu\", \"family_name\": \"Dragneel\", \"picture\": \"https://lh3.googleusercontent.com/-0Q8cVIypHwk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclAam6WQQw8awrojdcDIiqOyun6xA/photo.jpg\", \"locale\": \"en\"}', 5),
(2, 'google', '100979527703343234127', '2020-09-08 09:06:36.303809', '2020-09-08 09:06:36.303809', '{\"id\": \"100979527703343234127\", \"email\": \"zeref91011@gmail.com\", \"verified_email\": true, \"name\": \"Zeref Tail\", \"given_name\": \"Zeref\", \"family_name\": \"Tail\", \"picture\": \"https://lh4.googleusercontent.com/-7ch1KD8mNP0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclh76o3viGYtgafajA5nExh9H-ZlA/photo.jpg\", \"locale\": \"en\"}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'google', 'Google-login', '85756670026-mg0f9tjtlq5cvo1h0p1pjhu14n4al9l8.apps.googleusercontent.com', 'yU9LjnkScsKw2iGq50-OoeJ0', ''),
(2, 'facebook', 'Facebook-login', '191090138958810', '7e182a8255a22898fe29c57970a3840e', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 2),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialtoken`
--

INSERT INTO `socialaccount_socialtoken` (`id`, `token`, `token_secret`, `expires_at`, `account_id`, `app_id`) VALUES
(1, 'ya29.a0AfH6SMAbURAaQ2-JtHkMlDS_30CCu-EMxTrKq1KzpQ7lM1ABJdMXRrhbL8t4g-vipGPehsjA4ZJLKnKKjUK_lBYWUna3hnk1H7Y5HN5t-cnwJRyXNWOEA5qQj6f5Br0FBAGs9bHQkSgWEiD3f2hdsLpFMQ5xAVl_umU', '', '2020-09-08 10:06:04.383092', 1, 1),
(2, 'ya29.a0AfH6SMBdGrIYir5omEvspg4FUReORlPqUZEpZWviSR_0nNQcR7XKL2BsomdZXxwUCqvpM-eWpDcAgEouVJtN40lUcTyAdMynPW6MAVKjZ2rlBSYEq_hdN5vk7ofC4ZI4BDF5t42wRGSyvwkPJuHwv4E0BerIN9T-Y6U', '', '2020-09-08 10:06:34.792325', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_tbluser`
--

CREATE TABLE `tbluser_tbluser` (
  `id` int(11) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `nickname` varchar(500) NOT NULL,
  `City` varchar(100) NOT NULL,
  `profilephoto` varchar(100) NOT NULL,
  `backgroundphoto` varchar(100) NOT NULL,
  `Membership` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser_tbluser`
--

INSERT INTO `tbluser_tbluser` (`id`, `bio`, `nickname`, `City`, `profilephoto`, `backgroundphoto`, `Membership`, `user_id`) VALUES
(1, 'Handle with care ;)', '', 'Kathmandu', 'hunterxhunter2.jpg', 'bg1.jpg', 'No', 1),
(2, '', '', '', '', '', 'Yes', 2),
(3, '', '', '', '', '', 'No', 3),
(4, 'hi', 'hi', 'hi', 'friends.jpg', 'apartment.webp', 'No', 4),
(5, 'Hi', 'Hi', 'Hi', 'DC_Comics_logo.png', 'Softwarica-logo-final-e1571488686593.png', 'Yes', 5),
(6, '', '', '', '', '', 'Yes', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `comic_author`
--
ALTER TABLE `comic_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comic_comic`
--
ALTER TABLE `comic_comic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comic_comic_author_id_415d3ae7_fk_comic_author_id` (`author_id`);

--
-- Indexes for table `comic_comic_genre`
--
ALTER TABLE `comic_comic_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comic_comic_genre_comic_id_genre_id_467a4317_uniq` (`comic_id`,`genre_id`),
  ADD KEY `comic_comic_genre_genre_id_9ffc8f7d_fk_comic_genre_id` (`genre_id`);

--
-- Indexes for table `comic_comic_likes`
--
ALTER TABLE `comic_comic_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comic_comic_likes_comic_id_user_id_cc971a13_uniq` (`comic_id`,`user_id`),
  ADD KEY `comic_comic_likes_user_id_df64e789_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `comic_comic_publisher`
--
ALTER TABLE `comic_comic_publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comic_comic_publisher_comic_id_publisher_id_f2e4bf41_uniq` (`comic_id`,`publisher_id`),
  ADD KEY `comic_comic_publishe_publisher_id_ac34fe9e_fk_comic_pub` (`publisher_id`);

--
-- Indexes for table `comic_comment`
--
ALTER TABLE `comic_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comic_comment_comic_id_1ac108a9_fk_comic_comic_id` (`comic_id`),
  ADD KEY `comic_comment_reply_id_a611e6ca_fk_comic_comment_id` (`reply_id`),
  ADD KEY `comic_comment_user_id_d37dea03_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `comic_genre`
--
ALTER TABLE `comic_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comic_publisher`
--
ALTER TABLE `comic_publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comic_wishlist`
--
ALTER TABLE `comic_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comic_wishlist_user_id_1c6c91d4_fk_auth_user_id` (`user_id`),
  ADD KEY `comic_wishlist_wished_comic_id_9c8d2680_fk_comic_comic_id` (`wished_comic_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `news_news`
--
ALTER TABLE `news_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requested_request`
--
ALTER TABLE `requested_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `tbluser_tbluser`
--
ALTER TABLE `tbluser_tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comic_author`
--
ALTER TABLE `comic_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comic_comic`
--
ALTER TABLE `comic_comic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comic_comic_genre`
--
ALTER TABLE `comic_comic_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `comic_comic_likes`
--
ALTER TABLE `comic_comic_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comic_comic_publisher`
--
ALTER TABLE `comic_comic_publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `comic_comment`
--
ALTER TABLE `comic_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comic_genre`
--
ALTER TABLE `comic_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comic_publisher`
--
ALTER TABLE `comic_publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comic_wishlist`
--
ALTER TABLE `comic_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_news`
--
ALTER TABLE `news_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requested_request`
--
ALTER TABLE `requested_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser_tbluser`
--
ALTER TABLE `tbluser_tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `comic_comic`
--
ALTER TABLE `comic_comic`
  ADD CONSTRAINT `comic_comic_author_id_415d3ae7_fk_comic_author_id` FOREIGN KEY (`author_id`) REFERENCES `comic_author` (`id`);

--
-- Constraints for table `comic_comic_genre`
--
ALTER TABLE `comic_comic_genre`
  ADD CONSTRAINT `comic_comic_genre_comic_id_4aed3271_fk_comic_comic_id` FOREIGN KEY (`comic_id`) REFERENCES `comic_comic` (`id`),
  ADD CONSTRAINT `comic_comic_genre_genre_id_9ffc8f7d_fk_comic_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `comic_genre` (`id`);

--
-- Constraints for table `comic_comic_likes`
--
ALTER TABLE `comic_comic_likes`
  ADD CONSTRAINT `comic_comic_likes_comic_id_2c495800_fk_comic_comic_id` FOREIGN KEY (`comic_id`) REFERENCES `comic_comic` (`id`),
  ADD CONSTRAINT `comic_comic_likes_user_id_df64e789_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `comic_comic_publisher`
--
ALTER TABLE `comic_comic_publisher`
  ADD CONSTRAINT `comic_comic_publishe_publisher_id_ac34fe9e_fk_comic_pub` FOREIGN KEY (`publisher_id`) REFERENCES `comic_publisher` (`id`),
  ADD CONSTRAINT `comic_comic_publisher_comic_id_33bfac13_fk_comic_comic_id` FOREIGN KEY (`comic_id`) REFERENCES `comic_comic` (`id`);

--
-- Constraints for table `comic_comment`
--
ALTER TABLE `comic_comment`
  ADD CONSTRAINT `comic_comment_comic_id_1ac108a9_fk_comic_comic_id` FOREIGN KEY (`comic_id`) REFERENCES `comic_comic` (`id`),
  ADD CONSTRAINT `comic_comment_reply_id_a611e6ca_fk_comic_comment_id` FOREIGN KEY (`reply_id`) REFERENCES `comic_comment` (`id`),
  ADD CONSTRAINT `comic_comment_user_id_d37dea03_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `comic_wishlist`
--
ALTER TABLE `comic_wishlist`
  ADD CONSTRAINT `comic_wishlist_user_id_1c6c91d4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `comic_wishlist_wished_comic_id_9c8d2680_fk_comic_comic_id` FOREIGN KEY (`wished_comic_id`) REFERENCES `comic_comic` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `tbluser_tbluser`
--
ALTER TABLE `tbluser_tbluser`
  ADD CONSTRAINT `tbluser_tbluser_user_id_61df7703_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
