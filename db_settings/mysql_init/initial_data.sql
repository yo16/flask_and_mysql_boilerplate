-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   8.0.24 - MySQL Community Server - GPL
-- サーバー OS:                      Linux
-- HeidiSQL バージョン:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- my_mysql のデータベース構造をダンプしています
DROP DATABASE IF EXISTS `my_mysql`;
CREATE DATABASE IF NOT EXISTS `my_mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_mysql`;

--  テーブル my_mysql.voucher の構造をダンプしています
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE IF NOT EXISTS `voucher` (
  `voucher_id` int NOT NULL AUTO_INCREMENT COMMENT '伝票ID',
  `purchase_date` date NOT NULL COMMENT '購買日',
  `shop_name` varchar(50) NOT NULL DEFAULT 'tokyo',
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- テーブル my_mysql.voucher: ~0 rows (約) のデータをダンプしています
DELETE FROM `voucher`;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` (`voucher_id`, `purchase_date`, `shop_name`) VALUES
	(1, '2021-05-01', 'tokyo'),
	(2, '2021-05-02', 'osaka'),
	(3, '2021-05-02', 'fukuoka');
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;

--  テーブル my_mysql.voucher_detail の構造をダンプしています
DROP TABLE IF EXISTS `voucher_detail`;
CREATE TABLE IF NOT EXISTS `voucher_detail` (
  `voucher_id` int NOT NULL COMMENT '伝票ID',
  `detail_seq` int NOT NULL COMMENT 'SEQ',
  `item_name` varchar(50) NOT NULL COMMENT '商品名',
  `quantity` int NOT NULL COMMENT '個数',
  PRIMARY KEY (`voucher_id`,`detail_seq`),
  CONSTRAINT `voucher_id1` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- テーブル my_mysql.voucher_detail: ~0 rows (約) のデータをダンプしています
DELETE FROM `voucher_detail`;
/*!40000 ALTER TABLE `voucher_detail` DISABLE KEYS */;
INSERT INTO `voucher_detail` (`voucher_id`, `detail_seq`, `item_name`, `quantity`) VALUES
	(1, 1, 'マジック', 1),
	(1, 2, 'ボールペン', 2),
	(2, 1, '消しゴム', 1),
	(3, 1, 'ボールペン', 1),
	(3, 2, '筆', 1);
/*!40000 ALTER TABLE `voucher_detail` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
