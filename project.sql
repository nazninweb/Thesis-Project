-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 07:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:1;', 1726597337),
('admin@gmail.com|127.0.0.1:timer', 'i:1726597337;', 1726597337),
('naznin@gmail.com|127.0.0.1', 'i:1;', 1726597366),
('naznin@gmail.com|127.0.0.1:timer', 'i:1726597366;', 1726597366);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `json_data`
--

CREATE TABLE `json_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `taxon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `altitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`answers`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `json_data`
--

INSERT INTO `json_data` (`id`, `tag`, `date`, `notes`, `taxon`, `created_at`, `updated_at`, `images`, `altitude`, `latitude`, `longitude`, `answers`) VALUES
(291, 'Zechenpark', '2022-04-07 10:35:10+00', 'Test Eintrag ', 'Aubrieta deltoidea', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"694e3daf460654f12899196c636017a2.jpg\"]', '24.299999237061', '51.495598975057', '6.5239148667292', '{\"location\":2}'),
(292, 'Zechenpark', '2022-04-23 10:38:46+00', 'A\n30-40%', 'Anthoxanthum odoratum agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"04c29676ae03eca2f5435571d8d35a03.jpg\",\"d865875cd092d9de85835ec53619ffbb.jpg\",\"91df4e5d9de261877e010d474bd1a4ee.jpg\",\"81ecbb05df846844aaffc0c114738961.jpg\"]', '28.378284454346', '51.497744959314', '6.5501556539681', '{\"location\":1}'),
(293, 'Zechenpark', '2022-04-23 10:47:11+00', 'A\n30->40%', 'Anthoxanthum odoratum agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"57235806f277ad54c5f4479f82f4dfc0.jpg\",\"a063a03f9bfced77e9288b28c1da68b7.jpg\",\"5c107acdccaeda61111d12ade50044f3.jpg\"]', '20.110999298096', '51.497345066078', '6.5499445281246', '{\"location\":1}'),
(294, 'Zechenpark', '2022-04-23 10:52:12+00', 'A\n5%', 'Plantago lanceolata', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"a4e1ca87307d32a507e24ed07f8cd9cc.jpg\",\"37025ed865d776764492c40f5c6e8acc.jpg\",\"0f36a0001c5e4908ecee42d42914080b.jpg\",\"d3057d3c7c46031fe840e22619360f0a.jpg\",\"bcfab315625fbc3f708efad00ad8870d.jpg\"]', '26.623275555679', '51.497300682346', '6.5499716919375', '{\"location\":1}'),
(295, 'Zechenpark', '2022-04-23 11:09:11+00', 'A\n20% Vor allem an den Rändern \nweniger mitten drin', 'Trifolium repens', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"4517f130ea2f08fb68a54b8eb1baf221.jpg\",\"ce6467872f1e6810406de8c836fe3251.jpg\"]', '28.379835128784', '51.497842950631', '6.5495966483472', '{\"location\":1}'),
(296, 'Zechenpark', '2022-04-23 11:13:50+00', 'A\n7->10%\nAnfangsstadium \nnoch nicht am Blühen\n', 'Leucanthemum vulgare agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"44f7af309f9ee7733c989eed33bb2b4b.jpg\",\"3459d4842dc2deb7803f102d059f8554.jpg\",\"228564b5c9663a56c0f452e457fa65c1.jpg\",\"98cb2f7360d94d29d9d6367f99adfe1c.jpg\",\"1fc70625f9205e9164dce9df5c510be9.jpg\"]', '28.459203720093', '51.497599217212', '6.5501568553656', '{\"location\":1}'),
(297, 'Zechenpark', '2022-04-23 11:23:16+00', '', 'Anthoxanthum odoratum agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"3e5566fe54e180094b02971215a305d2.jpg\",\"e293091932cf6ba2cd69feb01d4f7696.jpg\",\"9ff3140cf925996a2027e7e186d2aa99.jpg\"]', '20.110999298096', '51.497246247992', '6.5499736326793', '{\"location\":1}'),
(298, 'Zechenpark', '2022-04-23 11:33:04+00', 'A\nWahrscheinlich eine Vogelwicke\nbis jetzt nicht blühend\n10<-15% in Bünden vorhanden', 'Unknown species', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"e9c02dfc4c756ab7a6dca68a40f449d0.jpg\",\"f4caa8a002305ace160d012ec0f7aa0c.jpg\",\"d0210a722e4aa6834e86d89a358e375b.jpg\"]', '28.378307342529', '51.497689032951', '6.5500934135566', '{\"location\":1}'),
(299, 'Zechenpark', '2022-04-23 12:40:56+00', '', 'Silene dioica', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"73441b1adeafc02d61c9877719cb0a3a.jpg\"]', '29.014206767497', '51.496631109326', '6.5488145212172', NULL),
(300, 'Zechenpark', '2022-04-23 12:43:11+00', '', 'Tulipa gesneriana', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"f658de6a71490a30d2e289097a4f1848.jpg\",\"aa093ad06d84433a8e1c7bfd74df52cb.jpg\",\"4dba708eee0273df1c614c5c66f4e0ba.jpg\"]', '20.832423400879', '51.49660436181', '6.5488761190839', NULL),
(301, 'Zechenpark', '2022-04-27 13:40:50+00', 'near the dorms\n', 'Sorbus aucuparia', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"03a035e40f06fb4736beb7fc23ab44fc.jpg\"]', '71.099998474121', '51.4995159', '6.5459807', NULL),
(302, 'Zechenpark', '2022-04-27 13:43:47+00', '', 'Cardamine pratensis agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"add9cda893b7b9ad8d26958cfca41790.jpg\",\"d67d5dd864d6d7901aa1d6d4814203c4.jpg\",\"65a5432b676d3cd03bcb710f95d89ca9.jpg\"]', '70.900001525879', '51.4994152', '6.5461058', NULL),
(303, 'Zechenpark', '2022-04-27 13:46:49+00', '', 'Glechoma hederacea agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"178d1cdd159cc17dc5280c370ef18a77.jpg\"]', '70.900001525879', '51.4994015', '6.5461567', NULL),
(304, 'Zechenpark', '2022-04-27 13:47:57+00', '', 'Symphytum officinale agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"1aff78cb392047d3f4f827728855c073.jpg\"]', '73.200004577637', '51.4993907', '6.5463487', NULL),
(305, 'Zechenpark', '2022-04-27 13:48:35+00', '', 'Symphytum officinale agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"318c755f85ea36490443db2e7a8e5d78.jpg\",\"ff8d0b96e8a9e9183bb610bd74e909cc.jpg\"]', '72.300003051758', '51.4993948', '6.5462389', NULL),
(306, 'Zechenpark', '2022-04-27 13:49:43+00', '', 'Alliaria petiolata', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"a385c8b01039a7623d9adbe123c43862.jpg\"]', '73.400001525879', '51.4994164', '6.5463416', NULL),
(307, 'Zechenpark', '2022-04-27 13:50:12+00', '', 'Alliaria petiolata', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"161f4a4390aab5d31ffa04e806ab39d7.jpg\"]', '71.300003051758', '51.4994283', '6.5464091', NULL),
(308, 'Zechenpark', '2022-04-27 13:54:09+00', '', 'Capsella bursa-pastoris', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"2a8a4504fa8c47b31cb1ac612b5cc4c2.jpg\"]', '73.300003051758', '51.499627', '6.5473922', NULL),
(309, 'Zechenpark', '2022-04-27 13:58:51+00', '', 'Leucanthemum vulgare agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"9dc40f4944a645e7cef37b944359cfc4.jpg\"]', '71.300003051758', '51.4991194', '6.5478479', NULL),
(310, 'Zechenpark', '2022-04-27 14:01:28+00', '', 'Tulipa sylvestris', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"8f03f902b0b8fb912417cef61bdf995c.jpg\",\"94cf45290b327494e8035fafadd365c0.jpg\",\"ce15bd822d733ff48de4057cf75c5caf.jpg\"]', '73.5', '51.4990331', '6.5486872', NULL),
(311, 'Zechenpark', '2022-04-27 14:06:01+00', '', 'Allium nigrum', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"7cbf797400cc564904bb187d323e8e70.jpg\",\"32c8db22aa93ac06244adb3354cd1b9a.jpg\",\"1071d11ffa4758160015e87927d02a57.jpg\"]', '73.599998474121', '51.4973561', '6.548016', NULL),
(312, 'Zechenpark', '2022-04-27 14:07:15+00', '', 'Medicago lupulina', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"e46593f43a1c8926fd7242310bbdeaed.jpg\"]', '73.400001525879', '51.4987028', '6.5486298', NULL),
(313, 'Zechenpark', '2022-04-27 14:10:13+00', '', 'Cytisus scoparius', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"71dda3f9c525f99572bb555ffaa0f262.jpg\",\"a9b1adc789a3323f0768ee3c4f0753dd.jpg\"]', '72.400001525879', '51.4987379', '6.549867', NULL),
(314, 'Zechenpark', '2022-04-27 14:15:06+00', '', 'Crataegus monogyna', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"b6d54a3f76950c41f70e81627a272861.jpg\"]', '73.300003051758', '51.4977847', '6.5495522', NULL),
(315, 'Zechenpark', '2022-04-27 14:23:43+00', '', 'Silene dioica', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"08d5e7cd8af8b93b761db8e28f13a166.jpg\"]', '73.200004577637', '51.4998651', '6.546748', NULL),
(316, 'Zechenpark', '2022-04-27 14:24:28+00', '', 'Plantago lanceolata', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"8967ea15a085a11f97db4715b86b538a.jpg\"]', '73.800003051758', '51.4960362', '6.5485432', NULL),
(317, 'Zechenpark', '2022-04-27 14:25:31+00', '', 'Isatis tinctoria agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"01908be0b994f86cbc7fcc1ee649480c.jpg\"]', '73.800003051758', '51.4961606', '6.5483217', NULL),
(318, 'Zechenpark', '2022-04-27 14:28:08+00', '', 'Veronica persica', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"32aaf1cd631098e14aa6cf4407dfb47f.jpg\"]', '73.700004577637', '51.4967705', '6.5484199', NULL),
(319, 'Zechenpark', '2022-04-27 14:31:06+00', '', 'Crepis biennis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"e0120b3306a7827c85900e0038c3e891.jpg\",\"6a936f0c6858bc624da9e7d542cf1417.jpg\"]', '73.800003051758', '51.4961457', '6.548201', NULL),
(320, 'Zechenpark', '2022-04-27 14:36:01+00', NULL, 'Tulipa gesneriana', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"0cacc438f3d77d3cb8f5cf7134df1944.jpg\",\"be28a9a54600a0d8848024ff545c8aac.jpg\",\"09bf2e13c14e4f616f6a1b9f54efc761.jpg\"]', '73.800003051758', '51.4970652', '6.547808', NULL),
(321, 'Zechenpark', '2022-04-27 14:40:50+00', '', 'Vicia sativa agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"4256833fc1c1334c314a3c5a8224422f.jpg\"]', '73.700004577637', '51.4979721', '6.5484503', NULL),
(322, 'Zechenpark', '2022-04-27 14:43:37+00', '', 'Nicotiana tabacum', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"536b3c27596fa2f5489474567368e0e0.jpg\",\"fa083275558d3f0df9b3b5a4bd77949c.jpg\",\"004dba8fba74699d3090f2680962880e.jpg\"]', '72.900001525879', '51.4986128', '6.547761', NULL),
(323, 'Zechenpark', '2022-04-29 12:03:43+00', NULL, 'Taraxacum', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"5f226fc59123ad34d77f4244bbb3fbf8.jpg\",\"c79bc9f3f05499fc13dc99ce013b7f47.jpg\",\"d4be93ab70188c1e49d205b7a89350b3.jpg\"]', '73.400001525879', '51.4973257', '6.5481098', NULL),
(324, 'Zechenpark', '2022-04-29 12:11:09+00', '', 'Lolium arundinaceum', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"2b982c022e7001e99a973a7e971e3fd2.jpg\",\"f3b7734553286333eb8d32e18d3e3561.jpg\",\"7ca7d05946184e76d5a93ff510f6fc08.jpg\"]', '73.400001525879', '51.4980758', '6.548234', NULL),
(325, 'Zechenpark', '2022-04-29 12:13:10+00', '', 'Sonchus oleraceus', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"b2820f6c6c908c58e69a273e90b5f9c5.jpg\",\"3e7211ef82085c1a61f53ca45ced32a4.jpg\",\"e63c0b1bb7595b5d10cf12f6a39f85dd.jpg\"]', '73.5', '51.4983614', '6.5477024', NULL),
(326, 'Zechenpark', '2022-04-29 12:14:31+00', '', 'Reseda lutea', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"3b169579500e74ec4e28fe66c7fccc5f.jpg\"]', '73.400001525879', '51.4972717', '6.548049', NULL),
(327, 'Zechenpark', '2022-04-29 12:15:43+00', '', 'Salvia pratensis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"60264e987647a8c4313b8ccfe3451278.jpg\",\"5929be150f2f35f33dca851179248b9a.jpg\",\"2376ccc9047c187fd35e7599a3ed5196.jpg\"]', '75.300003051758', '51.4993623', '6.5465865', NULL),
(328, 'Zechenpark', '2022-04-29 12:24:37+00', '', 'Myosotis arvensis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"8e669b63bb40206e7ac724eba396be1b.jpg\",\"293bf96f746480ca83340d6949f2716f.jpg\",\"b88ff4b406ac4ed2d3c3a0914932127d.jpg\"]', '73.5', '51.4988824', '6.548641', NULL),
(329, 'Zechenpark', '2022-04-29 12:35:07+00', '', 'Geranium molle agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"2369e965ec3ffa30e49f64bc4d562282.jpg\",\"4043e6ba7353f3991703ea9ec704082e.jpg\",\"ac972b3bbd17139aa4276a9aa827231c.jpg\"]', '73.300003051758', '51.4987439', '6.5485127', NULL),
(330, 'Zechenpark', '2022-05-03 09:48:34+00', '', 'Leucanthemum vulgare agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"51b8876a5da7f428d1eb43200cc278e4.jpg\"]', '29.229467391968', '51.493629337886', '6.547987179413', NULL),
(331, 'Zechenpark', '2022-05-03 09:53:09+00', '', 'Cytisus scoparius', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"025a96d3941ca9321782210469178e3d.jpg\"]', '26.81160376343', '51.493872153478', '6.5483426164838', NULL),
(332, 'Zechenpark', '2022-05-03 09:59:56+00', 'eco-gravel ', 'Leucanthemum vulgare agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"47024b6d45a19f042dadf4e57e3150a0.jpg\"]', '29.259119226431', '51.494525999922', '6.5487706742077', NULL),
(333, 'Zechenpark', '2022-05-09 11:42:13+00', 'Wiese IV\n\n', 'Crepis biennis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"f5803fb1bef3ba6c5a80b08ff4d1f8aa.jpg\",\"1d9294d5354a956468dbade5aba46ddc.jpg\",\"0b345f1fc213b91e9cac534b51b216de.jpg\"]', '72.700004577637', '51.4971619', '6.5510649', '{\"location\":2}'),
(334, 'Zechenpark', '2022-05-10 09:48:50+00', 'Promenade Süd', 'Geranium robertianum agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"9ee301258b21919102f4f331c7ab20db.jpg\"]', '72.599998474121', '51.4891808', '6.5483741', '{\"location\":0}'),
(335, 'Zechenpark', '2022-05-11 11:00:26+00', 'B 5-6', 'Silene dioica', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"3082b25aba5dcf5bb35f76a5638c8272.jpg\"]', '73.5', '51.4969275', '6.5477711', '{\"location\":1}'),
(336, 'Zechenpark', '2022-05-11 11:08:24+00', '', 'Isatis tinctoria agg.', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"795e479855c10bf2393468b9034b5b77.jpg\"]', '73.599998474121', '51.4970414', '6.5477608', '{\"location\":1}'),
(337, 'Zechenpark', '2022-05-11 11:11:01+00', '5-6', 'Bunias orientalis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"965b8becd3ece961fea00313637b8a53.jpg\"]', NULL, NULL, NULL, NULL),
(338, 'Zechenpark', '2022-05-11 14:19:54+00', NULL, 'Platanus occidentalis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"af1d7928e54beb9ac709429d0695c0a4.jpg\",\"9ce3ad263daa661e975c683a8c2bf18f.jpg\",\"5263ca2ba703bc13aac94c83627ed8ad.jpg\"]', '70.900001525879', '51.4994914', '6.5460911', NULL),
(339, 'Zechenpark', '2022-05-12 09:02:22+00', 'Boolplatz', 'Bunias orientalis', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"bc3490cf9a55f87d7fe17f133a7d999d.jpg\"]', '73.599998474121', '51.4922433', '6.5511966', '{\"location\":2}'),
(340, 'Zechenpark', '2022-05-12 09:07:23+00', 'Gs BLumen Rasen süd', 'Vicia hirsuta', '2024-05-08 05:08:20', '2024-05-08 05:08:20', '[\"7da5bc75dc562ad7821ce562c3c7d2d7.jpg\"]', '73.200004577637', '51.4920536', '6.5510424', '{\"location\":2}'),
(341, 'Zechenpark', '2022-05-12 09:11:03+00', '', 'Salvia pratensis', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"8585f5d85fa11b2eb93aee9b765bd865.jpg\"]', '73.300003051758', '51.4920678', '6.5511306', '{\"location\":2}'),
(342, 'Zechenpark', '2022-05-12 09:11:48+00', '', 'Hypochaeris radicata', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"641a345d6027bd31a5617ecf7b4324de.jpg\",\"1ffc84fc2714bae2a7973d6991c014e3.jpg\",\"1763411d990b12ab95f1e64f5c72d0db.jpg\",\"6bcf91c0930e48c1eb5474897e85bddb.jpg\"]', '73.300003051758', '51.4925605', '6.5514367', '{\"location\":2}'),
(343, 'Zechenpark', '2022-05-12 09:13:39+00', 'Gs  br süd', 'Leontodon hispidus', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"195cc44a838bac0cdc3033b6635ae792.jpg\",\"823138a953d2479a92a6bce5670287e9.jpg\",\"ae96245e9625b9586052c4f50a1269a1.jpg\"]', '72.900001525879', '51.4918805', '6.5513936', '{\"location\":2}'),
(344, 'Zechenpark', '2022-05-16 09:57:05+00', NULL, 'Unknown species', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"a76a429c05a2185bb5ec7b06b5943751.jpg\",\"066b16b82c02acca83b65a18aed1315e.jpg\"]', '72.599998474121', '51.4977458', '6.5489333', '{\"location\":1}'),
(345, 'Zechenpark', '2022-05-25 10:22:47+00', 'Wiesen', 'Leucanthemum vulgare agg.', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"1f58434452c665be33716c2560933011.jpg\"]', '73.400001525879', '51.4988178', '6.5490003', '{\"location\":2}'),
(346, 'Zechenpark', '2022-05-25 10:24:24+00', 'Wiese', 'Vicia villosa', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"3608bd0503d6055f614fadc7173b7c9d.jpg\"]', '73.700004577637', '51.4988785', '6.5490875', '{\"location\":2}'),
(347, 'Zechenpark', '2022-05-25 11:34:53+00', 'B\n50%', 'Leucanthemum vulgare agg.', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"1f122a3021570ef5aedeec9df40f550a.jpg\"]', '-500', '51.495365496022', '6.5521074522813', '{\"location\":1}'),
(348, 'Zechenpark', '2022-05-27 13:10:19+00', 'QUARTIERSPLATZ', 'Eschscholzia californica', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"aa4eaa5d3d046e2d8c76f68bf44b4743.jpg\"]', '73.900001525879', '51.494469', '6.5469965', NULL),
(349, 'Zechenpark', '2022-05-27 13:12:11+00', NULL, 'Malva sylvestris', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"cdd7a6578219542085389bba6579784d.jpg\"]', '73.900001525879', '51.4944727', '6.5470489', NULL),
(350, 'Zechenpark', '2022-05-31 11:50:42+00', 'Goorley', 'Onobrychis viciifolia agg.', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"634057a0cffd1ff71c17db8f118fe599.jpg\"]', '73.400001525879', '51.4972557', '6.5505328', '{\"location\":2}'),
(351, 'Zechenpark', '2022-05-31 11:55:35+00', 'Bieneneldorado', 'Tragopogon pratensis', '2024-05-08 05:08:21', '2024-05-08 05:08:21', '[\"782061fcf9797c4f86199d1522731877.jpg\"]', '73', '51.4976473', '6.5499572', '{\"location\":2}');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_21_091647_create_observation_data_table', 2),
(5, '2024_04_21_180921_create_plant_groups_table', 3),
(6, '2024_04_21_192209_create_plant_data_table', 4),
(7, '2024_04_21_221050_create_json_data_table', 5),
(8, '2024_04_21_222814_create_json_data_table', 6),
(9, '2024_04_21_223158_create_json_data_table', 7),
(10, '2024_04_21_192209_create_plant_data2_table', 8),
(11, '2024_05_06_121628_create_fields_to_plant_data_table', 9),
(12, '2024_05_06_123607_create_plant_data_table', 10),
(13, '2024_08_03_153201_create_news_data_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `news_data`
--

CREATE TABLE `news_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_data`
--

INSERT INTO `news_data` (`id`, `date`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '2024-09-28', 'news update', 'description about news', '2024-08-03 13:46:44', '2024-09-28 12:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `observation_data`
--

CREATE TABLE `observation_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `observation_data`
--

INSERT INTO `observation_data` (`id`, `date`, `number`, `created_at`, `updated_at`) VALUES
(1, '2021-04-01', '90', '2024-04-21 07:19:05', '2024-05-05 12:43:58'),
(2, '2021-05-01', '15', '2024-04-21 07:19:36', '2024-05-05 12:42:38'),
(3, '2021-06-01', '29', '2024-04-21 07:19:51', '2024-04-21 07:19:51'),
(4, '2021-07-01', '93', '2024-04-21 07:20:08', '2024-04-21 07:20:08'),
(5, '2021-08-01', '3', '2024-04-21 07:20:29', '2024-04-21 07:20:29'),
(6, '2021-09-01', '20', '2024-04-21 07:20:46', '2024-04-21 07:20:46'),
(7, '2022-05-01', '116', '2024-04-21 07:21:09', '2024-04-21 07:21:09'),
(8, '2022-06-01', '44', '2024-04-21 07:21:26', '2024-04-21 07:21:26'),
(9, '2022-07-01', '2', '2024-04-21 11:59:54', '2024-04-21 11:59:54'),
(10, '2022-08-01', '0', '2024-04-21 12:00:15', '2024-04-21 12:00:15'),
(11, '2021-04-01', '91', '2024-05-05 12:10:09', '2024-05-05 12:10:09'),
(15, '2024-09-28', '3400', '2024-09-27 10:00:06', '2024-09-27 16:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('naznin289@gmail.com', '$2y$12$M/mFubNiYkU.mfvlPRK0Ie2vO4dg1nQH5WotzFkdO71YBZoVATaby', '2024-09-27 08:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `plant_data`
--

CREATE TABLE `plant_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `altitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plant_data`
--

INSERT INTO `plant_data` (`id`, `name`, `number`, `tag`, `date`, `notes`, `location`, `altitude`, `latitude`, `longitude`, `images`, `created_at`, `updated_at`) VALUES
(2, 'Leucanthemum vulgare agg.', '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Cichorium intybus', '21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Achillea millefolium agg.', '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Cirsium arvense', '18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Silene latifolia', '18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Daucus carota', '17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Centaurea jacea agg.', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Leontodon hispidus', '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Hypericum perforatum', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Plantago lanceolata', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Silene vulgaris', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Cota tinctoria', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Lotus corniculatus agg.', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Malva moschata', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Tanacetum vulgare', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Salvia pratensis', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Echium vulgare', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Erigeron canadensis', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Senecio inaequidens', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Sinapis arvensis', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Crepis capillaris', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Oenothera', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Crepis biennis', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Knautia arvensis agg.', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Origanum vulgare', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Prunella vulgaris', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Artemisia vulgaris agg.', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Galium mollugo agg.', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Medicago sativa', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Melilotus albus', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Verbascum densiflorum', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Verbena rigida', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Agastache foeniculum', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Jacobaea vulgaris', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Linaria vulgaris agg.', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Malva sylvestris', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Medicago lupulina', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Silene dioica', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Trifolium repens', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Tripleurospermum maritimum agg.', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Ballota nigra', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Buddleja davidii', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Cirsium vulgare', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Convolvulus arvensis', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Dipsacus sylvestris', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Isatis tinctoria agg.', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Lolium perenne', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Scorzoneroides autumnalis', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Symphytum officinale agg.', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Verbena bonariensis', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Vicia cracca agg.', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Bunias orientalis', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Centaurea scabiosa', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Centaurea stoebe', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Dactylis glomerata agg.', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Erigeron annuus', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Eschscholzia californica', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Geranium robertianum agg.', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Glebionis coronaria', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Hypochaeris radicata', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Papaver rhoeas', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Pastinaca sativa', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Plantago media', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Ranunculus repens', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Silene coronaria', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Trifolium pratense', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Alliaria petiolata', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Anchusa officinalis', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Anthemis arvensis', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Anthoxanthum odoratum agg.', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Arctium lappa', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Calendula arvensis', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Cynosurus cristatus', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Cytisus scoparius', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Dianthus deltoides', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Foeniculum vulgare', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Galium verum agg.', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Glebionis segetum', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Hemerocallis fulva', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Lactuca serriola', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Linaria purpurea', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Reseda lutea', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Rumex crispus', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Saponaria officinalis', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Solidago canadensis', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Sonchus asper', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Sonchus oleraceus', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Trifolium arvense', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Urtica dioica', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Verbascum nigrum', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Verbascum thapsus', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Vicia hirsuta', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Vicia villosa', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Agastache rugosa', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Agastache urticifolia', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Armeria arenaria', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Arrhenatherum elatius', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Carduus acanthoides', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Carduus crispus', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Cenchrus alopecuroides', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Centaurea cyanus', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Clinopodium vulgare', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Diplotaxis tenuifolia', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Dipsacus sativus', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Echinochloa crus-galli', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Epilobium angustifolium', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Euphorbia cyparissias', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Geranium molle agg.', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Geranium pusillum', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Lamium purpureum', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Lapsana communis', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Linum grandiflorum', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Linum perenne agg.', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Melilotus officinalis', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Nicotiana sylvestris', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Rumex obtusifolius', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Salvia nemorosa', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Salvia verticillata', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Sanguisorba minor', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Securigera varia', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Sisymbrium officinale', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Taraxacum', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Tulipa gesneriana', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Verbascum phlomoides', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'Agrostemma githago', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Allium nigrum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Anthriscus sylvestris agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Antirrhinum majus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Arenaria serpyllifolia agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Atriplex hortensis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Aubrieta deltoidea', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Barbarea vulgaris agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Borago officinalis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Bromus hordeaceus agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Bromus secalinus agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Campanula patula', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Capsella bursa-pastoris', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Cardamine pratensis agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Centaurium erythraea', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Chaerophyllum temulum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Clarkia amoena', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Clematis vitalba', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Consolida regalis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Crataegus monogyna', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Crepis foetida agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Cymbalaria muralis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Cynoglossum officinale', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Dianthus carthusianorum agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Echinacea pururea', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Elymus repens', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Epilobium ciliatum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Epilobium hirsutum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Eupatorium cannabinum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Fallopia convolvulus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Geranium pratense', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Glechoma hederacea agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Helianthus tuberosus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Heracleum sphondylium', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Hypochaeris maculata', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Lamium album', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Lavandula angustifolia', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Leonurus cardiaca', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Lepidium sativum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Linum usitatissimum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Lobularia maritima', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Lolium arundinaceum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'Lycopsis arvensis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Medicago arabica', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'Melica ciliata agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'Mentha spicata', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'Mirabilis jalapa', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'Monarda fistulosa', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Myosotis arvensis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Nepeta cataria', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'Nepeta grandiflora', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'Nigella damascena', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'Onobrychis viciifolia agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Ononis spinosa agg', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'Papaver dubium', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'Persicaria maculosa', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'Phacelia tanacetifolia', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'Platanus occidentalis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'Poa pratensis agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'Potentilla reptans', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Ranunculus acris agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Rudbeckia fulgida', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Salix caprea', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Salvia coccinea', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Scabiosa columbaria agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Scabiosa ochroleuca', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'Scrophularia nodosa', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'Silene dichotoma', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'Solanum nigrum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'Solidago gigantea', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Sonchus arvensis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'Sorbus aucuparia', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'Teucrium chamaedrys', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'Tragopogon pratensis', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'Trifolium alexandrinum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Trifolium angustifolium', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'Trifolium incarnatum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Tulipa sylvestris', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'Verbascum speciosum', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Vicia faba', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Vicia sativa agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'Vicia tetrasperma agg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'Tussilago farfara', '1', 'Zechenpark', '2024-02-13 12:27:07+00', 'prom Süd', '0', '74.200004577637', '51.4889519', '6.5488216', NULL, '2024-05-06 13:09:30', '2024-05-06 14:04:36'),
(217, 'Primula veris', '2', 'Zechenpark', '2023-04-13 07:52:41+00', NULL, '2', NULL, NULL, NULL, 'uploads/1715123702.jpg', '2024-05-07 21:15:02', '2024-05-07 21:17:19'),
(218, 'Veronica persica', '10', 'Zechenpark', '2023-04-17 11:38:59+00', 'Wiese Böschung treppe', '1', '73.700004577637', '51.4945455', '6.5520864', 'uploads/1720279853.jpg', '2024-05-07 21:16:23', '2024-07-06 13:30:53'),
(221, 'test', '90', 'Zechenpark', '2024-02-13 12:27:07+00', 'prom Süd', '2', '74.200004577637', '51.4889519', '6.5488216', 'uploads/1727529191.jpg', '2024-09-28 11:13:11', '2024-09-28 11:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('e2YZ62PlG6y2yIevlQVE79BtpjlIMEWmO5zvb0k3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGdPNE9yb295VTU1UXpVRlNzS1AyUmhFMklHb2ZhazBPWjhQd1VFcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0Ijt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO319', 1727542152);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Naznin Yasmin Rumky', 'nazninweb2@gmail.com', NULL, '$2y$12$sNJjuntS7wYEiozEu3tJTOYN1UtaWSL.ymrCrYBEhzkkwO/zS8AJ.', NULL, '2024-04-21 19:14:55', '2024-09-27 09:29:24'),
(4, 'admin', 'admin@gmail.com', NULL, '$2y$12$g926dKBksHiDPf3iLhReJuh05uPWXhyjMea8qlfuYvPFue9FrIVIy', 'yegWNSghU0e6tKcwCoWkRPS6MlbQtxXiMC1zzQzZuwpl2Lgrq5VNx6TaVTuH', '2024-07-06 07:35:28', '2024-07-06 07:35:28'),
(5, 'Naznin', 'admin1@gmail.com', NULL, '$2y$12$6lLAbnMrCjZ/YjPZIES1secuD26riIJMXBHqjs.y71LYsbLJdYXha', NULL, '2024-09-17 16:22:24', '2024-09-17 16:22:24'),
(6, 'Naznin Yasmin', 'naznin289@gmail.com', NULL, '$2y$12$8.mjlzBoKwAjKi/G9qROl.vgTd2AJtcnGz6hWZ0Inkt6u7AiehXqO', NULL, '2024-09-27 08:00:38', '2024-09-27 08:00:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `json_data`
--
ALTER TABLE `json_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_data`
--
ALTER TABLE `news_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `observation_data`
--
ALTER TABLE `observation_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `plant_data`
--
ALTER TABLE `plant_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `json_data`
--
ALTER TABLE `json_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news_data`
--
ALTER TABLE `news_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `observation_data`
--
ALTER TABLE `observation_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `plant_data`
--
ALTER TABLE `plant_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
