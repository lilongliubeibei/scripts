-- MySQL dump 10.13  Distrib 9.0.1, for Linux (aarch64)
--
-- Host: localhost    Database: pbac-biz
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
                        `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                        `descriptions` varchar(100) DEFAULT NULL COMMENT '描述',
                        `price` decimal(11,2) DEFAULT NULL COMMENT '成交价',
                        `first_price` decimal(11,2) DEFAULT NULL COMMENT '首付',
                        `salesman_id` bigint DEFAULT NULL COMMENT '销售员id',
                        `customer_id` bigint DEFAULT NULL COMMENT '客户id',
                        `area_id` bigint DEFAULT NULL COMMENT '所在地区',
                        `area_name` varchar(10) DEFAULT NULL COMMENT '地区名称',
                        `bill_status` tinyint DEFAULT NULL COMMENT '订单状态',
                        `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                        `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                        `deleted_time` datetime DEFAULT '1000-01-01 00:00:00' COMMENT '删除时间',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='成交单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'万科金域榕郡',2500000.00,750000.00,1,1,1,'福州市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(2,'世茂云锦',3000000.00,900000.00,2,3,2,'厦门市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(3,'融信白金湾',3200000.00,960000.00,3,5,3,'泉州市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(4,'恒大山水城',4000000.00,1200000.00,4,7,4,'宁德市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(5,'融信江南',4200000.00,1260000.00,5,9,5,'莆田市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(6,'正荣润城',2100000.00,630000.00,6,11,6,'龙岩市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(7,'新城璟悦城',2200000.00,660000.00,7,13,7,'三明市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(8,'万科金域榕郡',2300000.00,690000.00,8,15,8,'南平市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(9,'世茂云锦',2800000.00,840000.00,9,17,9,'漳州市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(10,'融信白金湾',2600000.00,780000.00,10,19,10,'福州市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(11,'恒大山水城',2400000.00,720000.00,11,21,1,'厦门市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(12,'融信江南',3500000.00,1050000.00,12,23,2,'泉州市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(13,'正荣润城',3800000.00,1140000.00,13,25,3,'宁德市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(14,'新城璟悦城',2700000.00,810000.00,14,27,4,'莆田市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(15,'万科金域榕郡',3100000.00,930000.00,15,29,5,'龙岩市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(16,'世茂云锦',4500000.00,1350000.00,16,31,6,'三明市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(17,'融信白金湾',2600000.00,780000.00,17,33,7,'南平市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(18,'恒大山水城',2300000.00,690000.00,18,35,8,'漳州市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(19,'融信江南',3000000.00,900000.00,19,37,9,'福州市',1,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(20,'正荣润城',3200000.00,960000.00,20,39,10,'厦门市',2,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00'),(21,'新城璟悦城',2800000.00,840000.00,21,41,1,'泉州市',3,'2024-08-01 01:33:24','2024-08-01 01:33:24','1000-01-01 00:00:00');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
                            `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                            `account_id` bigint DEFAULT NULL COMMENT '登录账号ID',
                            `nick_name` varchar(10) DEFAULT NULL COMMENT '昵称',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            `deleted_time` datetime DEFAULT '1000-01-01 00:00:00' COMMENT '删除时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='客户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,5,'库巴','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(2,12,'罗莎琳娜','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(3,23,'火焰兄弟','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(4,34,'干骨兵','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(5,41,'库巴小子','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(6,45,'路德维希','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(7,51,'盖侬','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(8,55,'隐骑士','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(9,62,'猎鹰队长','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00'),(10,66,'艾克','2024-07-31 08:33:44','2024-07-31 08:33:44','1000-01-01 00:00:00');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
                              `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                              `name` varchar(10) DEFAULT NULL COMMENT '部门名称',
                              `parent_id` bigint DEFAULT NULL COMMENT '上级部门ID',
                              `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                              `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                              `deleted_time` datetime DEFAULT '1000-01-01 00:00:00' COMMENT '删除时间',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='房管局审核员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'总公司',NULL,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(2,'行政部门',1,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(3,'人力资源部',2,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(4,'法务部',2,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(5,'行政办公室',2,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(6,'财务部门',1,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(7,'会计部',6,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(8,'审计部',6,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(9,'技术部门',1,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(10,'开发部',9,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(11,'测试部',9,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(12,'市场部门',1,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(13,'市场推广部',12,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(14,'客户服务部',12,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(15,'销售部门',1,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(16,'国内销售部',15,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00'),(17,'国际销售部',15,'2024-07-31 08:36:30','2024-07-31 08:36:30','1000-01-01 00:00:00');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_management_admin`
--

DROP TABLE IF EXISTS `house_management_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_management_admin` (
                                          `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                          `account_id` bigint DEFAULT NULL COMMENT '登录账号ID',
                                          `area_id` bigint DEFAULT NULL COMMENT '所在地区ID',
                                          `nick_name` varchar(10) DEFAULT NULL COMMENT '昵称',
                                          `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                          `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                          `deleted_time` datetime DEFAULT '1000-01-01 00:00:00' COMMENT '删除时间',
                                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='房管局审核员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_management_admin`
--

LOCK TABLES `house_management_admin` WRITE;
/*!40000 ALTER TABLE `house_management_admin` DISABLE KEYS */;
INSERT INTO `house_management_admin` VALUES (1,101,1,'塞尔达','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(2,102,2,'林克','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(3,103,3,'萨姆斯','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(4,104,4,'卡比','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(5,105,5,'狐狸','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(6,106,6,'大金刚','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(7,107,7,'迪迪','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(8,108,8,'桃子','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(9,109,9,'黛西','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00'),(10,110,10,'耀西','2024-08-01 01:21:32','2024-08-01 01:21:32','1000-01-01 00:00:00');
/*!40000 ALTER TABLE `house_management_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 10:58:45