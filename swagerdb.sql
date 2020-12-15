-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 06:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swagerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_featured_image` varchar(255) NOT NULL,
  `post_created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`post_id`, `post_title`, `post_description`, `post_featured_image`, `post_created_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '', '2020-04-16 22:10:29'),
(2, 'Where does it come from?\r\n', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', '', '2020-04-16 22:10:29'),
(3, 'Why do we use it?\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '', '2020-04-16 22:11:00'),
(4, 'Where can I get some?\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', '', '2020-04-16 22:11:00'),
(9, 'Post with image', 'Cool post with image. dont forget to subscribe and like', '', '2020-04-27 18:58:28'),
(10, 'Post with image 2', 'Cool post with image. dont forget to subscribe and like 2', '', '2020-04-27 19:08:59'),
(11, 'Post with image 3', 'Cool post with image. dont forget to subscribe and like 3', 'img1.jpg', '2020-04-27 19:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('061d0d8abd7d379b926d736e2ef1e9fdde73d966', 'testclient', '1', '2020-12-11 23:47:58', 'app'),
('0b3436be0beed34595bbf4a52b76f25a3268a2df', 'testclient', '1', '2020-12-01 00:43:59', 'app'),
('0ec06e853a2efa7cfeaa6ba3850b541a39e07aa8', 'testclient', '1', '2020-11-28 06:21:17', 'app'),
('14e2c7fde340a88f4c919b6c3bddd19b9d83e4f6', 'testclient', '1', '2020-11-29 00:52:24', 'app'),
('170ea22c81260cd41ded181cebb6fb389544e78e', 'testclient', '1', '2020-12-10 01:55:51', 'app'),
('17e737eb821bebc138d52e791465b90fbd334e16', 'testclient', '1', '2020-11-30 22:41:24', 'app'),
('1a2fb222f811a97f5686856a2c1870436caeae8a', 'testclient', '1', '2020-12-11 23:47:14', 'app'),
('1f6d826f2cca51356feb22293058c7043608415e', 'testclient', '1', '2020-12-12 02:59:58', 'app'),
('206c7e810c31e33a68581a93b09dd4d53a5839f7', 'testclient', '1', '2020-12-12 01:24:14', 'app'),
('2c1c7f2e2b47ce7bf5a0cf2eb42544508993fdf5', 'testclient', '1', '2020-11-30 22:29:24', 'app'),
('2ea011fd9a28a3995af5fe01596af5b37fed0607', 'testclient', '1', '2020-11-30 22:58:29', 'app'),
('31de442947e9a0350479c9526b063a1c5275b2a6', 'testclient', '1', '2020-12-12 01:07:41', 'app'),
('324c9dfc29426e75f9c7a10ef2bfa1fc956d5aa4', 'testclient', '1', '2020-12-01 01:09:31', 'app'),
('330e2d788a76bec1c924d39e9f5ae794d179ecf1', 'testclient', '1', '2020-11-28 06:20:41', 'app'),
('39b07a8fcadc6593036408c3931fe0c2f86682b3', 'testclient', '1', '2020-12-01 00:44:07', 'app'),
('413aabb0a1749194d7d980747fed1f9dc0279167', 'testclient', '1', '2020-11-30 22:52:52', 'app'),
('430d9102a94a322fa02c12e383a5f2c945b1404c', 'testclient', '1', '2020-12-12 03:04:41', 'app'),
('440d90cfe96046da49b53bf850f039712ed69f0f', 'testclient', '1', '2020-12-11 23:37:09', 'app'),
('4cee628cc0813724e924f4e2e480238d77f82d86', 'testclient', '1', '2020-11-30 23:57:45', 'app'),
('4df653c950f14d1fb850c580d43deb53a9c06cf2', 'testclient', '1', '2020-11-30 22:29:41', 'app'),
('5130a87b9c18204d85d1074fe8344813a44c17f3', 'testclient', '1', '2020-11-30 23:57:32', 'app'),
('51c7592ca741a2e5ecfe88c78ed329b21cf32842', 'testclient', '1', '2020-12-12 01:11:12', 'app'),
('52e804b721cf1e5a9843ea928c2a9b5524904ed2', 'testclient', '1', '2020-12-01 00:35:25', 'app'),
('54d5bd03772fae2431ad2daa48256fc880ee27d8', 'testclient', '1', '2020-12-01 00:38:03', 'app'),
('572fb43ba7efd2f365a010cb768b613a4ad8d4a4', 'testclient', '1', '2020-12-11 23:46:09', 'app'),
('5af8959e56ea1b28f7baf8e2c94a368a53fb0b34', 'testclient', '1', '2020-12-11 23:11:24', 'app'),
('5bd4d28f814d968542a5259b25b947e2d5a9f81c', 'testclient', '1', '2020-12-11 23:37:00', 'app'),
('5e99000a7f789f4221f2da1146f44afd8eb4b6c7', 'testclient', '1', '2020-12-11 22:44:57', 'app'),
('5ffec6ebcf90689cd092945a75c0513f3f5edf07', 'testclient', '1', '2020-11-30 22:25:29', 'app'),
('616e3738c5b819f3f4ca784080f8e7ce1e9ea180', 'testclient', '1', '2020-12-12 03:23:33', 'app'),
('64c987200c3e68a11c12b38d9374aaed0c97461f', 'testclient', '1', '2020-11-30 23:58:08', 'app'),
('677cd64dee21908a9ef524396232fe344bce2144', 'testclient', '1', '2020-12-11 23:48:03', 'app'),
('6aaf932db5c50a77466ba72a3e01bb6f50dc6683', 'testclient', '1', '2020-12-12 03:03:21', 'app'),
('714db375d807439a676398931c7509f0c5d99f1d', 'testclient', '1', '2020-12-11 23:52:54', 'app'),
('75bd0aef8ef094e0c3373a1b6db6f78fd95caf68', 'testclient', '1', '2020-12-01 00:38:50', 'app'),
('78b75f811af34ccc0a7bf1a08825d6359d6391f2', 'testclient', '1', '2020-12-12 05:08:45', 'app'),
('7b65c9fb29fdc6e6ed690988c1fbfff76532e8db', 'testclient', '1', '2020-11-27 22:11:37', 'app'),
('884135cbd6b865eae0fd21bd99d0de5c4139ba69', 'testclient', '1', '2020-12-11 23:10:06', 'app'),
('8abe4a3969eda41fcf8d2e66037aa56dd2c4f4ce', 'testclient', '1', '2020-11-30 23:51:20', 'app'),
('9806fd99d899152f61d8bde1caf4ee8d23d6bbf9', 'testclient', '1', '2020-12-11 23:22:26', 'app'),
('9b82f0d05042ee67b6b2f8a3f6cf889c7db7d401', 'testclient', '1', '2020-12-01 00:37:36', 'app'),
('9be540c6aa986e591bd261bbea47e23c6c4f621a', 'testclient', '1', '2020-12-11 23:09:37', 'app'),
('a1f57373afc8ae0574a152fa6b97e721b5658cb6', 'testclient', '1', '2020-12-01 00:02:30', 'app'),
('a86a8dc802fcf2095028d243c7c4af3bbadc7bcb', 'testclient', '1', '2020-12-12 01:07:08', 'app'),
('a8dc62dfd620a9233959f2cb715a6fc92684ac96', 'testclient', '1', '2020-11-30 23:57:34', 'app'),
('ae72055e0369cf801e4b7f0113ff41afbe6c7ecd', 'testclient', '1', '2020-12-11 23:11:35', 'app'),
('bd9a84f5d73aa258b2427aaca68627700c2c6496', 'testclient', '1', '2020-11-30 23:56:33', 'app'),
('c4533c87a76a590fb1d6aa94ad1a04b9f5156a0b', 'testclient', '1', '2020-11-30 23:58:10', 'app'),
('cfb8ddc167ae68f4bc497e0782623257e9bc2beb', 'testclient', '1', '2020-12-12 03:22:54', 'app'),
('d2b1a0a15ef284221cb1289bcc118693e541690b', 'testclient', '1', '2020-12-12 03:04:39', 'app'),
('d7a91f00238e6ba16d2d50ec08160de6c37e1e34', 'testclient', '1', '2020-11-27 22:03:16', 'app'),
('deeb6ecf7cfc0fe9f974881a75423ca6835d35fb', 'testclient', '1', '2020-12-12 02:34:38', 'app'),
('e2808c8e9ada6ac85f173c44210daa8809f773bc', 'testclient', '1', '2020-12-01 01:07:32', 'app'),
('e50e37b68822b784b5d024b287ace3d342e99a2f', 'testclient', '1', '2020-11-30 23:52:47', 'app'),
('e85607c8521665abba6afd4a27788d8da1943c8b', 'testclient', '1', '2020-11-30 23:15:07', 'app'),
('e93c4c1ce4329b1bd503fbfabd105d078e11b0c4', 'testclient', '1', '2020-12-12 01:24:00', 'app'),
('ecc5f94fa16be89562b2581c2d989d3659b17852', 'testclient', '1', '2020-11-30 23:11:00', 'app'),
('f48c8b97c2bc50af2f6671bf32d377752329a067', 'testclient', '1', '2020-11-28 07:01:26', 'app'),
('f9e7e34dc086d0993bf9f6971a13e6cfb8cea07e', 'testclient', '1', '2020-12-11 22:42:40', 'app'),
('fb89c28dd776502df005ae01e724f5f74c509501', 'testclient', '1', '2020-12-01 00:23:47', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', 'testsecret', NULL, 'password', 'app', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('011fae9cd73e01fe3c751825a1ad423d228c1bfa', 'testclient', '1', '2020-12-14 21:41:24', 'app'),
('02d851b735371d87513d650339ab6c40e2e3372e', 'testclient', '1', '2020-12-24 00:55:51', 'app'),
('03dff57814c68ee9b45c19414b1d3e0cbc509ecb', 'testclient', '1', '2020-12-11 18:45:00', 'app'),
('138414a06f5ce5bc60434556487c53fa80e5345b', 'testclient', '1', '2020-12-26 00:07:41', 'app'),
('14a79b3c6887c03dd31394dec8d86d86086ac24f', 'testclient', '1', '2020-12-14 22:58:10', 'app'),
('1796ec290e9ec271ccb729884103af02741b6c3f', 'testclient', '1', '2020-12-14 22:51:20', 'app'),
('1c0ab317dfcea4c4fff9bec5c428d37d5b0e0489', 'testclient', '1', '2020-12-11 19:10:28', 'app'),
('20a43fcdf0a2da4ae90b0260eb2850656f1f3e87', 'testclient', '1', '2020-12-26 00:07:08', 'app'),
('28f973b7dde2d819a9e72adca0778999bdb8acbc', 'testclient', '1', '2020-12-12 05:20:41', 'app'),
('2ad08189bcd4e585dfd5849d6687911fd5ddfaea', 'testclient', '1', '2020-12-12 06:01:26', 'app'),
('36029ddfe95cec5f65832f38b5c7a063b5ce135a', 'testclient', '1', '2020-12-14 23:44:00', 'app'),
('3654f9fa81aa512260604d16a2ddc1e99477c9b0', 'testclient', '1', '2020-12-14 22:58:09', 'app'),
('36eb9872ed6d22a6ef1058fbfa051d43e55270f5', 'testclient', '1', '2020-12-25 22:48:03', 'app'),
('38bf06ae35ab50d0b8d31f5a7e7d433e029e5b97', 'testclient', '1', '2020-12-15 00:07:32', 'app'),
('3f1a53d663e8fc64f898024fc55fbc4a35c94a64', 'testclient', '1', '2020-12-25 22:46:09', 'app'),
('4105f7f364c8a28dcb74c541ee04a94600b587bd', 'testclient', '1', '2020-12-12 23:52:24', 'app'),
('49ec99ef7b3f6012b4b358118409923ffd19c5ba', 'testclient', '1', '2020-12-12 05:21:18', 'app'),
('4a215852360f3db6c9035ea15c5a9dc7e53e8053', 'testclient', '1', '2020-12-14 21:58:29', 'app'),
('4b6c8e1ef501ffe36471be6e1c3b65bf2e78908f', 'testclient', '1', '2020-12-14 22:57:45', 'app'),
('4c55a7ee8698552f9d853ab3914b398e973dc865', 'testclient', '1', '2020-12-25 21:44:57', 'app'),
('4e0dfcb7456889c119b6c924147f1af6a7d730a3', 'testclient', '1', '2020-12-14 22:56:33', 'app'),
('5001f13c75cc912b776f44de6def3d24ac00db9c', 'testclient', '1', '2020-12-11 20:59:28', 'app'),
('55bd81756180ea179363663a9e6a6278d21a45d1', 'testclient', '1', '2020-12-26 02:04:41', 'app'),
('587cefacdd82293a01b4415b2e634796d8cd44a6', 'testclient', '1', '2020-12-25 22:11:35', 'app'),
('598af7bc9dc7fb2aa0a77d720850b89b964288b8', 'testclient', '1', '2020-12-26 01:34:39', 'app'),
('5f719fcc940fc7bff3beaad0c053d888df967905', 'testclient', '1', '2020-12-26 00:24:00', 'app'),
('60869b955ae544f589603dd249538ad30d2969ee', 'testclient', '1', '2020-12-26 02:04:39', 'app'),
('64b55445298e4836657d56f8a1d4e662d118249e', 'testclient', '1', '2020-12-11 18:45:35', 'app'),
('66a60897a9f71109549913e5edba2b75687c6825', 'testclient', '1', '2020-12-11 20:10:14', 'app'),
('6ba7f91302afac2b3c070f8270994ab1829e7715', 'testclient', '1', '2020-12-25 22:22:26', 'app'),
('6faff1b486ebe418fd113bdb9d93e86df563a09b', 'testclient', '1', '2020-12-25 22:10:06', 'app'),
('73cb32f5ffd4dd995308b410d38cc1958249d4d3', 'testclient', '1', '2020-12-25 22:09:37', 'app'),
('7450883390c1e6827c0e8e65504e6f36336eb829', 'testclient', '1', '2020-12-26 04:08:45', 'app'),
('74a338a5e6ee8707b475c521e34d44552dd2f039', 'testclient', '1', '2020-12-14 23:23:47', 'app'),
('76c18dd039e65d28ce2a4e002058c1b4c5ff4234', 'testclient', '1', '2020-12-14 22:57:32', 'app'),
('7822d9a2565059f323b7813e779583620404e56c', 'testclient', '1', '2020-12-25 22:37:09', 'app'),
('78c8d00d163f7856c97b4bbf2f491ac8a2bfe691', 'testclient', '1', '2020-12-11 20:05:24', 'app'),
('79599ca59229d9f049faff2ba240438f4e3b6e89', 'testclient', '1', '2020-12-25 22:47:58', 'app'),
('7bb30d110306da04ba7176adc747e256c4515743', 'testclient', '1', '2020-12-14 21:29:24', 'app'),
('7bf23557b947c5c7a985c76eb2feb537c82921f9', 'testclient', '1', '2020-12-15 00:09:31', 'app'),
('7eff1bb968469157a72d5bb3ebd93a03b111b196', 'testclient', '1', '2020-12-14 21:29:42', 'app'),
('80dc6dc6016d521f7d720019d61d6a5e8b25a1fd', 'testclient', '1', '2020-12-11 20:58:19', 'app'),
('81c87033167172283f07425373008d2e479d9d78', 'testclient', '1', '2020-12-11 19:26:08', 'app'),
('8a5a2113d65ca3186af1b5c53deb2051d94ecd49', 'testclient', '1', '2020-12-14 21:25:29', 'app'),
('976cef123a60f48e1e351fbe4c29d38a972f5080', 'testclient', '1', '2020-12-14 23:37:36', 'app'),
('9801442fb9e5fa841e57b060b421fd56c020f660', 'testclient', '1', '2020-12-11 19:40:40', 'app'),
('986b1335eda1a3f30ca776981e99a6aee68343ef', 'testclient', '1', '2020-12-26 02:22:54', 'app'),
('a5034896a56e9b675809ac5e52bf0930a54b6fa1', 'testclient', '1', '2020-12-14 22:52:47', 'app'),
('a9cca80630e507da45764ee1475e4b5c7ec68643', 'testclient', '1', '2020-12-14 22:11:00', 'app'),
('aa00ae52bf1e4b74de50b991b30bf70bbbfb2c7b', 'testclient', '1', '2020-12-14 23:44:07', 'app'),
('ae79db0ed1e73fe21513d329633e5db5952a51ca', 'testclient', '1', '2020-12-14 22:57:34', 'app'),
('b22b91d59a3f0e25d99fb56a5373be7c511ffee9', 'testclient', '1', '2020-12-26 02:23:33', 'app'),
('b27174b96823ae0d9549db57f8008428a54cdaba', 'testclient', '1', '2020-12-14 23:38:51', 'app'),
('b43154a9bf6eefe76c91a4690a2e9ff55a79c6d9', 'testclient', '1', '2020-12-11 21:03:16', 'app'),
('b62b4273b9717aa876638baa1061bb02b4d9b6ff', 'testclient', '1', '2020-12-25 21:42:40', 'app'),
('c3133a76cd40ad61236bbcd1dc6595f4c47417b7', 'testclient', '1', '2020-12-26 00:24:14', 'app'),
('c9eff908613bff774e9830612bdc96505a2dc659', 'testclient', '1', '2020-12-26 01:59:58', 'app'),
('cc76a9d1f4ecaa98b998ce6f3260c70ae2c6aa1a', 'testclient', '1', '2020-12-26 02:03:21', 'app'),
('d08f29474349ba8661475c01ff280c683095e519', 'testclient', '1', '2020-12-26 00:11:13', 'app'),
('d4215f4defdb2a3367a094e9907a114c5d472485', 'testclient', '1', '2020-12-11 20:25:48', 'app'),
('db02d29022b48c434efe164ce4bda15d884c502e', 'testclient', '1', '2020-12-14 23:35:25', 'app'),
('e0de8bfb6ed3dd36fd6f28c2ad0eea87db64af36', 'testclient', '1', '2020-12-14 23:02:30', 'app'),
('e438f980f8a7f7a7ca7c2fdaffaaddb63402ae5d', 'testclient', '1', '2020-12-14 22:15:07', 'app'),
('e5fedd918f9035c8cd45bb6d53de147990d603c0', 'testclient', '1', '2020-12-25 22:52:54', 'app'),
('e6cf6c91f6f9c2d87cb1c6e313eddf6a41ece72b', 'testclient', '1', '2020-12-25 22:11:24', 'app'),
('e9701dfc309f3764ad001911abe8f5ab5f0e08e5', 'testclient', '1', '2020-12-25 22:47:14', 'app'),
('f4b09fa40a7f91de56e912f22b1294b469b2701c', 'testclient', '1', '2020-12-14 23:38:03', 'app'),
('fc3593198c1e746b8cbd2b47c005da7ea6d2fe9b', 'testclient', '1', '2020-12-25 22:37:00', 'app'),
('fca7ebae6d6224981fd422f97c03f336dcec27e9', 'testclient', '1', '2020-12-11 21:11:37', 'app'),
('fddf717e2f33351d0a5233b4626c5319cf1144ae', 'testclient', '1', '2020-12-11 19:27:47', 'app'),
('fff538d20c04065726e12e6c859abced439f6f85', 'testclient', '1', '2020-12-14 21:52:52', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`, `email`, `email_verified`, `scope`) VALUES
('alexlancer', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Alex', 'Lancer', 'test@alexlancer.com', 1, 'app');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `scope` varchar(20) NOT NULL DEFAULT 'app',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `scope`, `created_at`) VALUES
(1, 'Alex', 'Lancer', 'test@alexlancer.com', '$2y$10$FKefMDOiw5PhFVMK1djqseHZlKwl5GwN/muVv/lnqEmPFapY9rBd6', 'app', '2020-04-20 01:49:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
