-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.25 - MySQL Community Server (GPL)
-- 服务器OS:                        Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gamefestival
CREATE DATABASE IF NOT EXISTS `gamefestival` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gamefestival`;

-- Dumping structure for table gamefestival.postmessage
CREATE TABLE IF NOT EXISTS `postmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `comment_theme` enum('question','reservation','remarque') DEFAULT 'remarque',
  `comment` varchar(300) NOT NULL,
  `isnick` enum('0','1') NOT NULL,
  `post_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言板信息数据表\r\n';

-- Dumping data for table gamefestival.postmessage: ~1 rows (大约)
/*!40000 ALTER TABLE `postmessage` DISABLE KEYS */;
INSERT INTO `postmessage` (`id`, `username`, `email`, `comment_theme`, `comment`, `isnick`, `post_date`) VALUES
	(1, 'lengyuer', '978080458@qq.com', 'reservation', '我的留言内容是这样的', '0', '2019-11-21');
/*!40000 ALTER TABLE `postmessage` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
