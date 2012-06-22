/*
SQLyog Community v10.11 
MySQL - 5.0.24a-community : Database - inetshop_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inetshop_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `inetshop_db`;

/*Table structure for table `customers_dt` */

DROP TABLE IF EXISTS `customers_dt`;

CREATE TABLE `customers_dt` (
  `password` text COMMENT 'need to hash',
  `email` text,
  `name` text,
  `status` smallint(6) default NULL,
  `customer_id` int(10) unsigned NOT NULL auto_increment COMMENT 'primery_key',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `customers_dt` */

/*Table structure for table `orders_dt` */

DROP TABLE IF EXISTS `orders_dt`;

CREATE TABLE `orders_dt` (
  `total_cost` float default NULL,
  `order_id` int(10) unsigned NOT NULL auto_increment COMMENT 'primery_key',
  `orders_products_id` int(10) unsigned default NULL,
  `customer_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `orders_dt` */

/*Table structure for table `orders_products_dt` */

DROP TABLE IF EXISTS `orders_products_dt`;

CREATE TABLE `orders_products_dt` (
  `order_id` int(10) unsigned default NULL,
  `product_id` int(10) unsigned default NULL,
  `orders_products_id` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `orders_products_dt` */

/*Table structure for table `product_dt` */

DROP TABLE IF EXISTS `product_dt`;

CREATE TABLE `product_dt` (
  `name` text,
  `small_description` text,
  `long_descrition` longtext,
  `cost` float default NULL,
  `product_id` int(10) unsigned NOT NULL auto_increment COMMENT 'primary_key',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `product_dt` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
