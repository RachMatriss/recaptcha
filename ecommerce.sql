-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 29 juin 2021 à 15:55
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-cart_items-product_id` (`product_id`),
  KEY `idx-cart_items-created_by` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1622047789);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `satim_order_id` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `response` text,
  PRIMARY KEY (`id`),
  KEY `idx-orders-created_by` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=639 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `total_price`, `status`, `firstname`, `lastname`, `email`, `transaction_id`, `satim_order_id`, `created_at`, `created_by`, `response`) VALUES
(40, '20.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'emNcpWBGDOquH4AABDLU', 1623658569, 1, ''),
(60, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'QKKYwwLnnhvU24AABDLV', 1623658800, 1, ''),
(100, '20.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'CPYCaWoEdBIoQUAABDLW', 1623658866, 1, ''),
(500, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'dXfOnjHllbIeYYAABDLX', 1623659005, 1, ''),
(302, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'axYxr6H4RkUz5MAABDLY', 1623659120, 1, ''),
(303, '20.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623659594, 1, ''),
(304, '30.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'HUPPqblnMwdv3IAABDL3', 1623659778, 1, ''),
(501, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'xUlp7fbJRfmv54AABDL4', 1623659871, 1, ''),
(502, '30.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'r8eJFBYSTSiLIAAABDL5', 1623660055, 1, ''),
(503, '20.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '3rHuHkmvG1pNJUAABDL6', 1623660167, 1, ''),
(504, '20.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Twc3o6gVG8LCFYAABDMA', 1623660342, 1, ''),
(505, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ghpfrCFXbUVcTIAABDMB', 1623660434, 1, ''),
(506, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'unWonvA5e27sAQAABDMC', 1623660829, 1, ''),
(507, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'y16SqRpau6qiKUAABDMD', 1623660955, 1, ''),
(508, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'zuw43n4HwC5WQ4AABDME', 1623661249, 1, ''),
(509, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'DH7JP633VrNbJQAABDMF', 1623661441, 1, ''),
(510, '180.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'FVn70DChqeJnYIAABDMG', 1623661867, 1, ''),
(511, '10.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'oCmjcYuAjYwTVQAABDMJ', 1623662629, 1, ''),
(512, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '6q1sPzp1mmtcSIAABDMK', 1623662645, 1, ''),
(513, '45.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'XTjGzC0rKM57H4AABDML', 1623663152, 1, ''),
(514, '45.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'YtGfjpS1lGTCCMAABDMM', 1623663473, 1, ''),
(515, '20.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ZrAgxMpqBQJxPAAABDMN', 1623663745, 1, ''),
(516, '45.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'AmhZgATT1youUMAABDMO', 1623664045, 1, ''),
(517, '65.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'BKVll4SJAxfwQIAABDMP', 1623664253, 1, ''),
(518, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'MyEtR7ii6ScBQ4AABDMR', 1623664589, 1, ''),
(519, '225.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'P2bRyvGDfTOs5QAABDMS', 1623664852, 1, ''),
(520, '90.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '3GRvwJ1G3TVx74AABDMT', 1623665029, 1, ''),
(521, '90.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Wv4HEaW4BrfbAYAABDMU', 1623665372, 1, ''),
(522, '90.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'BPiBqxEgStT8VEAABDMV', 1623665691, 1, ''),
(523, '45.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'EYJkMsSbBRzxOIAABDMW', 1623666009, 1, ''),
(524, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '7YcmciaY1rAqMQAABDMX', 1623666206, 1, ''),
(525, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'iPDBsQB59o95HIAABDMY', 1623666379, 1, ''),
(526, '10.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'UWTLyuvmfesY2EAABDMZ', 1623667199, 1, ''),
(527, '10.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'KUnrCjPRWbXaQQAABDM2', 1623667381, 1, ''),
(528, '55.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Ii4a3EQZ9ka24YAABDM3', 1623667493, 1, ''),
(529, '55.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623667563, 1, ''),
(530, '55.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '8qKpd1SBrQJbOEAABDM5', 1623667600, 1, ''),
(531, '100.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'bdq8Bb2GJwNXBEAABDM6', 1623667860, 1, ''),
(532, '55.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623668935, 1, ''),
(533, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ANHGC1wvtMSvHYAABDNA', 1623669505, 1, ''),
(534, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '5UFqzEqdUh4bDUAABDNB', 1623669692, 1, ''),
(535, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Am6A9UECt4KKBQAABDNC', 1623669823, 1, ''),
(536, '90.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '2Ar6sospoViSTEAABDND', 1623669982, 1, ''),
(537, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Mncf20m5WG79CAAABDNE', 1623670434, 1, ''),
(538, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'qL0Tg6Qgciu9K4AABDNN', 1623676132, 1, ''),
(539, '55.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'zViPddiirPDRVUAABDNP', 1623676297, 1, ''),
(540, '55.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'yAWF19Zy3TJ8EAAABDNT', 1623677293, 1, NULL),
(541, '90.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'G38Qkv54FmrOA4AABDNU', 1623677462, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":9000,\"currency\":\"012\",\"approvalCode\":\"079399\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"541\",\"Pan\":\"628071**0314\",\"Amount\":9000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(545, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '5Jqw3BxygXiLAUAABDNY', 1623678757, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"079702\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"545\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(543, '65.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'bo0xXvfxchyVUMAABDNW', 1623677877, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":6500,\"currency\":\"012\",\"approvalCode\":\"079486\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"543\",\"Pan\":\"628071**0314\",\"Amount\":6500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(544, '55.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'JDROeRqx8ntdAAAABDNX', 1623677946, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":5500,\"currency\":\"012\",\"approvalCode\":\"079504\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"544\",\"Pan\":\"628071**0314\",\"Amount\":5500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(546, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '9nnlWzHSgcObFAAABDNZ', 1623678875, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"546\",\"Pan\":\"628056**0112\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(547, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'DMYwybmW3TUfMQAABDN2', 1623678983, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"547\",\"Pan\":\"628056**0112\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(548, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '3J0RpcLmYdPLXQAABDN3', 1623679169, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"MAKHLOUF ABDESSLAH\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"548\",\"Pan\":\"628056**0618\",\"Amount\":104500,\"Ip\":\"105.97.17.168\"}'),
(549, '1045.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'nItI7hwfJ1qmQQAABDN4', 1623679500, 1, NULL),
(550, '90.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '19TcyDe2wvwsNYAABDN5', 1623679528, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHRI RIAD\",\"depositAmount\":9000,\"currency\":\"012\",\"approvalCode\":\"079994\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"550\",\"Pan\":\"628071**0314\",\"Amount\":9000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(551, '2000.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'WPAsv2n0IkWe7QAABDN7', 1623679962, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHRI RIAD\",\"depositAmount\":200000,\"currency\":\"012\",\"approvalCode\":\"080014\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"551\",\"Pan\":\"628071**0314\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(552, '2000.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Of6s3Ll5JCGDMUAABDOB', 1623680056, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHRI RIAD\",\"depositAmount\":200000,\"currency\":\"012\",\"approvalCode\":\"080039\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"552\",\"Pan\":\"628071**0314\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(553, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'IzUpyjDIGVCOEYAABDOC', 1623680142, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"553\",\"Pan\":\"628056**0112\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(554, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'aMe4LI9aBeRpQMAABDOD', 1623680231, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"554\",\"Pan\":\"628056**0112\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(555, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'JykTdeTU1QZoQYAABDOE', 1623680324, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"555\",\"Pan\":\"628056**0112\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(556, '3000.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'DPHKOzavWJV9JAAABDOF', 1623680451, 1, NULL),
(557, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'E6pwzhpAVWzPHMAABDOG', 1623680468, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"MAKHLOUF ABDESSLAH\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"557\",\"Pan\":\"628056**0618\",\"Amount\":200000,\"Ip\":\"105.97.17.168\"}'),
(558, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'DKJKOLu7wICTOQAABDOI', 1623680631, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"MAKHLOUF ABDESSLAH\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"558\",\"Pan\":\"628056**0618\",\"Amount\":200000,\"Ip\":\"105.97.17.168\"}'),
(559, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'EGVwJQ7ghiXGRYAABDOJ', 1623680684, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"BRAHMI MOHAMED\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"559\",\"Pan\":\"628056**0310\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(560, '2045.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'h9fvoi8cXyqjDQAABDOK', 1623680815, 1, NULL),
(561, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'TslG2H9grako6EAABDOM', 1623681097, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"BRAHMI MOHAMED\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"561\",\"Pan\":\"628056**0310\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(562, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '9O4ZVUCKRucw5MAABDON', 1623681172, 1, '{\"expiration\":\"202210\",\"cardholderName\":\"YOUSFI MAAMAR\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Cr\\u00e9dit insuffisant, veuillez recharger votre compte bancaire pour effectuer cette op\\u00e9ration. Code erreur : 51\",\"udf1\":\"2018105301346\",\"respCode\":\"51\"},\"actionCode\":116,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Cr\\u00e9dit insuffisant, veuillez recharger votre compte bancaire pour effectuer cette op\\u00e9ration. Code erreur : \",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"562\",\"Pan\":\"628056**0617\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"51\"}'),
(563, '2045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Xn7mwpxK3z9r3UAABDOO', 1623681311, 1, '{\"expiration\":\"202210\",\"cardholderName\":\"YOUSFI MAAMAR\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Cr\\u00e9dit insuffisant, veuillez recharger votre compte bancaire pour effectuer cette op\\u00e9ration. Code erreur : 51\",\"udf1\":\"2018105301346\",\"respCode\":\"51\"},\"actionCode\":116,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Cr\\u00e9dit insuffisant, veuillez recharger votre compte bancaire pour effectuer cette op\\u00e9ration. Code erreur : \",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"563\",\"Pan\":\"628056**0617\",\"Amount\":204500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"51\"}'),
(564, '2090.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'QIytmJgQb3XX2UAABDOP', 1623681377, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"SMAILI NASSER\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"564\",\"Pan\":\"628056**0211\",\"Amount\":209000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(565, '2000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'RzPAlDNU4NdQZMAABDOQ', 1623681458, 1, '{\"expiration\":\"202310\",\"cardholderName\":\"SMAILI NASSER\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"565\",\"Pan\":\"628056**0211\",\"Amount\":200000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(566, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'yKK0deS1UBGuLMAABDOR', 1623681515, 1, '{\"expiration\":\"202408\",\"cardholderName\":\"YASSA TOUFIK\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"566\",\"Pan\":\"628056**0116\",\"Amount\":104500,\"Ip\":\"105.97.17.168\"}'),
(567, '2045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'bzO1iyt4NXl1S4AABDOS', 1623681585, 1, '{\"expiration\":\"202408\",\"cardholderName\":\"YASSA TOUFIK\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"567\",\"Pan\":\"628056**0116\",\"Amount\":204500,\"Ip\":\"105.97.17.168\"}'),
(568, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'VEXprrj27rpi5EAABDOT', 1623681663, 1, '{\"expiration\":\"202201\",\"cardholderName\":\"MECHRI RIAD\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Veuillez rectifier la date d\'expiration s\\u00e9lectionn\\u00e9e.  Code erreur: AD\",\"udf1\":\"2018105301346\",\"respCode\":\"AD\"},\"actionCode\":-1,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, veuillez contacter votre banque. Code erreur: 1\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"568\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"AD\"}'),
(569, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'fk9z7WKIbFlV34AABDOU', 1623681726, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHRI RIAD\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Veuillez rectifier le CVV2 saisi.  Code erreur: AB\",\"udf1\":\"2018105301346\",\"respCode\":\"AB\"},\"actionCode\":111,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Veuillez rectifier votre saisi oubien contacte votre banque.  Code erreur: 111\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"569\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"AB\"}'),
(570, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '6sjxamJK7HYTWUAABDOV', 1623681837, 1, '{\"expiration\":\"202402\",\"cardholderName\":\"Ouarda MERABET\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"570\",\"Pan\":\"628056**3111\",\"Amount\":104500,\"Ip\":\"105.97.17.168\"}'),
(571, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '2tV9sa1nZcrvBAAABDOW', 1623681969, 1, '{\"expiration\":\"202402\",\"cardholderName\":\"LILIA ZIAD\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"571\",\"Pan\":\"628056**3111\",\"Amount\":104500,\"Ip\":\"105.97.17.168\"}'),
(572, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'dxYtU4BtK1ZvNQAABDOY', 1623683664, 1, '{\"expiration\":\"202210\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"080888\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"572\",\"Pan\":\"628056**4914\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(573, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Id1PM78A4u4LEMAABDOZ', 1623683785, 1, '{\"expiration\":\"202210\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"080912\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"573\",\"Pan\":\"628056**4914\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(574, '1000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'D1z8FgsfLbStREAABDO3', 1623684032, 1, '{\"expiration\":\"202204\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"574\",\"Pan\":\"628056**0815\",\"Amount\":100000,\"Ip\":\"105.97.17.168\"}'),
(575, '1000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '13LElLeW3nu7N4AABDO4', 1623684109, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"575\",\"Pan\":\"628056**0815\",\"Amount\":100000,\"Ip\":\"105.97.17.168\"}'),
(576, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ufFWAKIkvyqSVIAABDO5', 1623684304, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"576\",\"Pan\":\"628056**0815\",\"Amount\":104500,\"Ip\":\"105.97.17.168\"}'),
(577, '90.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Hv8k7dD1EGE3PQAABDO6', 1623684356, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, veuillez contacter votre banque. Code erreur :05\",\"udf1\":\"2018105301346\",\"respCode\":\"05\"},\"actionCode\":111,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Veuillez rectifier votre saisi oubien contacte votre banque.  Code erreur: 111\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"577\",\"Pan\":\"628056**1011\",\"Amount\":9000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"05\"}'),
(578, '1000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'hvN88wjdGUqPSQAABDO7', 1623684451, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, veuillez contacter votre banque. Code erreur :05\",\"udf1\":\"2018105301346\",\"respCode\":\"05\"},\"actionCode\":111,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Veuillez rectifier votre saisi oubien contacte votre banque.  Code erreur: 111\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"578\",\"Pan\":\"628056**1011\",\"Amount\":100000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"05\"}'),
(579, '1000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ygDv4Li2xtzJWYAABDPA', 1623684542, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"579\",\"Pan\":\"628056**9710\",\"Amount\":100000,\"Ip\":\"105.97.17.168\"}'),
(580, '1000.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'gSLjUUeqLKFbXAAABDPB', 1623684697, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"580\",\"Pan\":\"628056**9710\",\"Amount\":100000,\"Ip\":\"105.97.17.168\"}'),
(581, '1000.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'wgoAl6xK217dWIAABDPD', 1623685878, 1, NULL),
(582, '1000.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'SwFn87b1zXy1LEAABDPE', 1623686137, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":100000,\"currency\":\"012\",\"approvalCode\":\"081199\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"2\",\"ErrorMessage\":\"Order is already confirmed\",\"OrderStatus\":2,\"OrderNumber\":\"582\",\"Pan\":\"628071**0314\",\"Amount\":100000,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"00\"}'),
(583, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ZKQiYmBzk3HH4QAABDPF', 1623686808, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"583\",\"Pan\":\"628056**0112\",\"Amount\":104500,\"Ip\":\"105.97.17.168\",\"SvfeResponse\":\"33\"}'),
(584, '135.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623687569, 1, NULL),
(585, '90.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'sS3QV1ghM9Dk24AABDRX', 1623746819, 1, NULL),
(586, '1045.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623747122, 1, NULL),
(587, '90.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623748147, 1, NULL),
(588, '135.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623748486, 1, NULL),
(589, '1045.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623748830, 1, NULL),
(590, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'iqwz9ZtikxzVTMAABDSN', 1623749653, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"590\",\"Pan\":\"628056**0815\",\"Amount\":104500,\"Ip\":\"105.97.45.27\"}'),
(591, '90.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '0EXbwhSOEqdE2IAABDSO', 1623749733, 1, '{\"expiration\":\"202210\",\"cardholderName\":\"TEST TEST\",\"depositAmount\":9000,\"currency\":\"012\",\"approvalCode\":\"087888\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"591\",\"Pan\":\"628056**4914\",\"Amount\":9000,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(592, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '5gidYwRCRNMc2AAABD7Z', 1623751447, 1, '{\"expiration\":\"202301\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Veuillez rectifier la date d\'expiration s\\u00e9lectionn\\u00e9e.  Code erreur: AD\",\"udf1\":\"2018105301346\",\"respCode\":\"AD\"},\"actionCode\":-1,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, veuillez contacter votre banque. Code erreur: 1\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"592\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"AD\"}'),
(593, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'Q6orx2yJZXe2JEAABD72', 1623751563, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"088106\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"2\",\"ErrorMessage\":\"Order is already confirmed\",\"OrderStatus\":2,\"OrderNumber\":\"593\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(594, '1000.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '72oVzgUHsa4oDQAABEAD', 1623753537, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":100000,\"currency\":\"012\",\"approvalCode\":\"088331\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"594\",\"Pan\":\"628071**0314\",\"Amount\":100000,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(595, '1045.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'sKef06W6lquQ2EAABEAR', 1623755579, 1, '{\"expiration\":\"202304\",\"cardholderName\":\"ABDELLATIF\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :33\",\"udf1\":\"2018105301346\",\"respCode\":\"33\"},\"actionCode\":101,\"actionCodeDescription\":\"Votre transaction a \\u00e9t\\u00e9 rejet\\u00e9e, Votre carte a expir\\u00e9, veuillez contacter votre banque. Code erreur :101\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"595\",\"Pan\":\"628056**0112\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"33\"}'),
(596, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'QQ3W3BKWiPsFLUAABECD', 1623765271, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"089641\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"596\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(597, '1045.00', 4, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'hbYGuejVQoqvHMAABECI', 1623766178, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":0,\"currency\":\"012\",\"approvalCode\":\"089782\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"2\",\"ErrorMessage\":\"Order is already confirmed\",\"OrderStatus\":4,\"OrderNumber\":\"597\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(598, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'WjNYXr8JDxgcKEAABECJ', 1623766492, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"089819\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"598\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(599, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'daQdmqlTpeL8L4AABECM', 1623767028, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"089879\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"599\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(600, '1090.00', 6, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'YwdmrSSr7lcGO4AABECX', 1623770062, 1, '{\"expiration\":\"202404\",\"cardholderName\":\"MAKHLOUF ABDESSLAH\",\"depositAmount\":0,\"currency\":\"012\",\"authCode\":2,\"params\":{},\"actionCode\":2003,\"actionCodeDescription\":\"votre transaction a \\u00e9t\\u00e9 rejete,  vous avez d\\u00e9j\\u00e0 saisie 3 fois mot passe errone pour cela,Votre service e-paiement est bloqu\\u00e9 , veuillez contacter votre banque, Code erreur :2003\",\"ErrorCode\":\"3\",\"ErrorMessage\":\"Order is not confirmed due to order\\u2019s state\",\"OrderStatus\":6,\"OrderNumber\":\"600\",\"Pan\":\"628056**0618\",\"Amount\":109000,\"Ip\":\"105.97.45.27\"}'),
(601, '1045.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, 'ZignBtSteRvgXMAABECZ', 1623771461, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":104500,\"currency\":\"012\",\"approvalCode\":\"090376\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"601\",\"Pan\":\"628071**0314\",\"Amount\":104500,\"Ip\":\"105.97.45.27\",\"SvfeResponse\":\"00\"}'),
(602, '90.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '2fUUk0BVQaxH5AAABEFR', 1623833191, 1, NULL),
(603, '78500.00', 2, 'mdr', 'Rach', 'rachid@gmail.com', NULL, '5vaqzm1rdXYLBUAABEFU', 1623841296, 1, '{\"expiration\":\"202401\",\"cardholderName\":\"MECHERI RIAD\",\"depositAmount\":7850000,\"currency\":\"012\",\"approvalCode\":\"097723\",\"authCode\":2,\"params\":{\"udf5\":\"ggsf85s42524s5uhgsf\",\"respCode_desc\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"udf1\":\"2018105301346\",\"respCode\":\"00\"},\"actionCode\":0,\"actionCodeDescription\":\"Votre paiement a \\u00e9t\\u00e9 accept\\u00e9\",\"ErrorCode\":\"0\",\"ErrorMessage\":\"Success\",\"OrderStatus\":2,\"OrderNumber\":\"603\",\"Pan\":\"628071**0314\",\"Amount\":7850000,\"Ip\":\"105.102.218.75\",\"SvfeResponse\":\"00\"}'),
(604, '78500.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623841470, 1, NULL),
(605, '70400.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623842319, 1, NULL),
(606, '30000.00', 0, 'mdr', 'Rach', 'rachid@gmail.com', NULL, NULL, 1623853869, 1, NULL),
(607, '16600.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624458806, 1, NULL),
(608, '8500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624458854, 1, NULL),
(609, '13000.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624459122, 1, NULL),
(610, '16600.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624459142, 1, NULL),
(611, '12600.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624523195, 1, NULL),
(612, '4500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624534087, 1, NULL),
(613, '8100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624541082, 1, NULL),
(614, '21100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624542377, 1, NULL),
(615, '8500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624542481, 1, NULL),
(616, '8100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624542544, 1, NULL),
(617, '8100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624542580, 1, NULL),
(618, '148400.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624543369, 1, NULL),
(619, '12600.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624548712, 1, NULL),
(620, '29600.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624789169, 1, NULL),
(621, '26000.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624790027, 1, NULL),
(622, '74000.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624790512, 1, NULL),
(623, '12600.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624791897, 1, NULL),
(624, '17500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624793432, 1, NULL),
(625, '8100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624794197, 1, NULL),
(626, '4500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624794232, 1, NULL),
(627, '8100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624794512, 1, NULL),
(628, '8500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624794720, 1, NULL),
(629, '4500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624800087, 1, NULL),
(630, '8500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624800831, 1, NULL),
(631, '4500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624800888, 1, NULL),
(632, '8500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624801011, 1, NULL),
(633, '13000.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624870340, 1, NULL),
(634, '65900.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624870424, 1, NULL),
(635, '4500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624870513, 1, NULL),
(636, '8100.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624870602, 1, NULL),
(637, '8500.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624885510, 1, NULL),
(638, '78900.00', 0, 'mdr', 'Rach', 'rachidmatriss21@gmail.com', NULL, NULL, 1624894230, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `order_addresses`
--

DROP TABLE IF EXISTS `order_addresses`;
CREATE TABLE IF NOT EXISTS `order_addresses` (
  `order_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx-order_addresses-order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-order_items-product_id` (`product_id`),
  KEY `idx-order_items-order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `image` varchar(2000) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-products-created_by` (`created_by`),
  KEY `idx-products-updated_by` (`updated_by`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'huawei 2021 phone', '<p><em>HUAWEI</em>&nbsp;P smart&nbsp;<em>2021</em>&nbsp;features 22.5W&nbsp;<em>HUAWEI</em>&nbsp;SuperCharge, 5000mAh large battery, FHD+ display, quad rear camera, ultra-wide angle lens, super night shot,&nbsp;</p>\r\n', 'huawei.png', '8100.00', 1, 1622050535, 1622222302, 1, 1),
(2, 'IPhone 12 Pro max', '<p><strong>Prix IPhone 12 Pro max</strong>&nbsp;: 1259 euros pour la version 128 Go, 1379 euros pour la version 256 Go et 1 609 euros pour la version 512 Go.</p>\r\n', 'iPhone-12-Pro-Max', '8500.00', 1, 1623661681, 1623839652, 1, 1),
(3, 'Samsung Galaxy A21s', '<p>Fiche Technique Samsung Galaxy A21s : Ecran 6,5 pouces Android 10 64 Go disque 4 Go RAM 3G / 4G / 13 MP APN 48 MP Batterie 5000 mAh. Samsung Galaxy ...</p>\r\n', 'samsung-galaxy-a21s', '4500.00', 1, 1623837343, NULL, 1, NULL),
(4, ' REDMI Note 10 ', '<p>Syst&egrave;me d&#39;exploitation: Android 11, MIUI 12 - Processeur: Octa-core, Qualcomm SDM678 Snapdragon 678 (11 nm) - M&eacute;moire: 4GB - Stockage: 128GB - Ecran: ...</p>\r\n', 'xiaomi-redmi-note10-11', '65900.00', 1, 1623837560, 1623839677, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `response_message`
--

DROP TABLE IF EXISTS `response_message`;
CREATE TABLE IF NOT EXISTS `response_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_code` varchar(10) NOT NULL,
  `action_code` int(11) NOT NULL,
  `error_code` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `response_message`
--

INSERT INTO `response_message` (`id`, `response_code`, `action_code`, `error_code`, `message`) VALUES
(1, '00', 0, 0, 'VALIDE'),
(2, '', 10, 3, 'vous avez annulé votre operation'),
(3, '33', 101, 3, 'TEMPORARY BLOCK'),
(4, '', 2003, 3, 'DEPASSEMENT NB AUTORISé DES PASSWORDS (3CODES FAUX)'),
(5, '51', 116, 3, 'SOLDE CARTE INSUFFISANT'),
(6, 'AD', -1, 3, 'Saisie erronnée de date d\'expiration'),
(7, 'AB', 111, 3, 'Erronnée du CVV2'),
(8, '05', 111, 3, 'Carte non acceptée par le commerçant (Negative CGW)');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `admin` tinyint(1) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `admin`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'mdr', 'Rach', 'rachid', 'rX7UmSkbhXLjd1ULOThA7bWvVcEngQps', '$2y$13$D4dfc26xRthYxqD8s/KzcuzpRoRAq/WZv9NYs4.EnNQwLFu/Hn1PO', NULL, 'rachidmatriss21@gmail.com', 10, NULL, 1622048293, 1622048293, '_fO01oh_HlwN8sEqw8mWf6QlycPTmCEe_1622048293');

-- --------------------------------------------------------

--
-- Structure de la table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE IF NOT EXISTS `user_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-user_addresses-user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
