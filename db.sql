/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gxjyzhaopin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gxjyzhaopin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gxjyzhaopin`;

/*Table structure for table `biyequxiang` */

DROP TABLE IF EXISTS `biyequxiang`;

CREATE TABLE `biyequxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `biyequxiang_uuid_number` varchar(200) DEFAULT NULL COMMENT '毕业去向编号',
  `biyequxiang_types` int(11) DEFAULT NULL COMMENT '毕业去向类型 Search111',
  `biyequxiang_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称  Search111 ',
  `gongsi_address` varchar(200) DEFAULT NULL COMMENT '公司位置  Search111 ',
  `biyequxiang_xinzi` int(11) DEFAULT NULL COMMENT '薪资',
  `biyequxiang_time` timestamp NULL DEFAULT NULL COMMENT '去往时间',
  `biyequxiang_content` longtext COMMENT '详细信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='毕业去向';

/*Data for the table `biyequxiang` */

insert  into `biyequxiang`(`id`,`yonghu_id`,`biyequxiang_uuid_number`,`biyequxiang_types`,`biyequxiang_file`,`gongsi_name`,`gongsi_address`,`biyequxiang_xinzi`,`biyequxiang_time`,`biyequxiang_content`,`insert_time`,`create_time`) values (1,3,'1680579098285',4,'upload/file.rar','公司名称1','公司位置1',196,'2023-04-04 11:31:38','详细信息1','2023-04-04 11:31:38','2023-04-04 11:31:38'),(2,2,'1680579098318',5,'upload/file.rar','公司名称2','公司位置2',141,'2023-04-04 11:31:38','详细信息2','2023-04-04 11:31:38','2023-04-04 11:31:38'),(3,3,'1680579098292',4,'upload/file.rar','公司名称3','公司位置3',320,'2023-04-04 11:31:38','详细信息3','2023-04-04 11:31:38','2023-04-04 11:31:38'),(4,2,'1680579098247',1,'upload/file.rar','公司名称4','公司位置4',426,'2023-04-04 11:31:38','详细信息4','2023-04-04 11:31:38','2023-04-04 11:31:38'),(5,2,'1680579098222',5,'upload/file.rar','公司名称5','公司位置5',273,'2023-04-04 11:31:38','详细信息5','2023-04-04 11:31:38','2023-04-04 11:31:38'),(6,1,'1680579098222',5,'upload/file.rar','公司名称6','公司位置6',126,'2023-04-04 11:31:38','详细信息6','2023-04-04 11:31:38','2023-04-04 11:31:38'),(7,2,'1680579098273',3,'upload/file.rar','公司名称7','公司位置7',173,'2023-04-04 11:31:38','详细信息7','2023-04-04 11:31:38','2023-04-04 11:31:38'),(8,3,'1680579098270',2,'upload/file.rar','公司名称8','公司位置8',60,'2023-04-04 11:31:38','详细信息8','2023-04-04 11:31:38','2023-04-04 11:31:38'),(9,3,'1680579098252',3,'upload/file.rar','公司名称9','公司位置9',222,'2023-04-04 11:31:38','详细信息9','2023-04-04 11:31:38','2023-04-04 11:31:38'),(11,2,'1680579098265',5,'upload/file.rar','公司名称11','公司位置11',245,'2023-04-04 11:31:38','详细信息11','2023-04-04 11:31:38','2023-04-04 11:31:38'),(12,3,'1680579098319',2,'upload/file.rar','公司名称12','公司位置12',436,'2023-04-04 11:31:38','详细信息12','2023-04-04 11:31:38','2023-04-04 11:31:38'),(13,2,'1680579098278',5,'upload/file.rar','公司名称13','公司位置13',64,'2023-04-04 11:31:38','详细信息13','2023-04-04 11:31:38','2023-04-04 11:31:38'),(14,2,'1680579098289',2,'upload/file.rar','公司名称14','公司位置14',176,'2023-04-04 11:31:38','详细信息14','2023-04-04 11:31:38','2023-04-04 11:31:38'),(15,4,'1680586108362',3,'upload/1680586120148.doc','公司111','位置111',8000,'2023-04-06 00:00:00','广东省格式','2023-04-04 13:28:54','2023-04-04 13:28:54');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='就业咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'哈哈哈哈','2023-04-04 13:23:43',NULL,NULL,2,1,'2023-04-04 13:23:44'),(2,1,NULL,NULL,'回复大家好该等级','2023-04-04 13:24:12',NULL,2,'2023-04-04 13:24:13'),(3,1,NULL,NULL,'健康','2023-04-04 13:24:21',NULL,2,'2023-04-04 13:24:21'),(4,4,'发货单发货','2023-04-04 13:31:30',NULL,NULL,2,1,'2023-04-04 13:31:31'),(5,4,NULL,NULL,'l;\';\'','2023-04-04 13:31:42',NULL,2,'2023-04-04 13:31:43'),(6,4,NULL,NULL,'发货单烦得很','2023-04-04 13:31:45',NULL,2,'2023-04-04 13:31:46'),(7,4,NULL,NULL,'给回复的和','2023-04-04 13:31:50',NULL,2,'2023-04-04 13:31:51'),(8,4,'回家看看看','2023-04-04 13:32:00',NULL,NULL,1,1,'2023-04-04 13:32:01'),(9,4,'房管局鼓风机','2023-04-04 13:32:25',NULL,NULL,2,1,'2023-04-04 13:32:26'),(10,4,NULL,NULL,'回复说过话','2023-04-04 13:34:48',NULL,2,'2023-04-04 13:34:49'),(11,4,NULL,NULL,'回复说过话','2023-04-04 13:34:49',NULL,2,'2023-04-04 13:34:49');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1个萨达高大上','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'sex_types','性别',1,'男',NULL,NULL,'2023-04-04 11:30:41'),(18,'sex_types','性别',2,'女',NULL,NULL,'2023-04-04 11:30:41'),(19,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-04-04 11:30:42'),(20,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-04-04 11:30:42'),(21,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-04-04 11:30:42'),(22,'zhaopin_toudi_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-04-04 11:30:42'),(23,'zhaopin_toudi_yesno_types','审核状态',2,'通过',NULL,NULL,'2023-04-04 11:30:42'),(24,'zhaopin_toudi_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-04-04 11:30:42'),(25,'qiye_types','企业类型',1,'企业类型1',NULL,NULL,'2023-04-04 11:30:42'),(26,'qiye_types','企业类型',2,'企业类型2',NULL,NULL,'2023-04-04 11:30:42'),(27,'qiye_types','企业类型',3,'企业类型3',NULL,NULL,'2023-04-04 11:30:42'),(28,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-04-04 11:30:42'),(29,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-04-04 11:30:42'),(30,'leixing_types','招聘类型',1,'招聘类型',NULL,NULL,'2023-04-04 11:30:42'),(31,'leixing_types','招聘类型',2,'校园招聘',NULL,NULL,'2023-04-04 11:30:42'),(32,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-04-04 11:30:42'),(33,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-04-04 11:30:42'),(34,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-04-04 11:30:42'),(35,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-04 11:30:42'),(36,'zhaopin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-04 11:30:42'),(37,'zhaopin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-04 11:30:42'),(38,'jiuyezhishi_types','就业知识类型',1,'就业知识类型1',NULL,NULL,'2023-04-04 11:30:42'),(39,'jiuyezhishi_types','就业知识类型',2,'就业知识类型2',NULL,NULL,'2023-04-04 11:30:42'),(40,'jiuyezhishi_types','就业知识类型',3,'就业知识类型3',NULL,NULL,'2023-04-04 11:30:42'),(41,'jiuyezhishi_types','就业知识类型',4,'就业知识类型4',NULL,NULL,'2023-04-04 11:30:42'),(42,'jiuyezhishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-04 11:30:42'),(43,'jiuyezhishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-04 11:30:42'),(44,'jiuyezhishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-04 11:30:42'),(45,'gonggao_types','招聘公告类型',1,'招聘公告类型1',NULL,NULL,'2023-04-04 11:30:43'),(46,'gonggao_types','招聘公告类型',2,'招聘公告类型2',NULL,NULL,'2023-04-04 11:30:43'),(47,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-04 11:30:43'),(48,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-04 11:30:43'),(49,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-04 11:30:43'),(50,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-04 11:30:43'),(51,'biyequxiang_types','毕业去向类型',1,'国企单位',NULL,NULL,'2023-04-04 11:30:43'),(52,'biyequxiang_types','毕业去向类型',2,'私企单位',NULL,NULL,'2023-04-04 11:30:43'),(53,'biyequxiang_types','毕业去向类型',3,'考研',NULL,NULL,'2023-04-04 11:30:43'),(54,'biyequxiang_types','毕业去向类型',4,'考公',NULL,NULL,'2023-04-04 11:30:43'),(55,'biyequxiang_types','毕业去向类型',5,'失业',NULL,NULL,'2023-04-04 11:30:43');

/*Table structure for table `fudaoyuan` */

DROP TABLE IF EXISTS `fudaoyuan`;

CREATE TABLE `fudaoyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fudaoyuan_name` varchar(200) DEFAULT NULL COMMENT '辅导员姓名 Search111 ',
  `fudaoyuan_photo` varchar(255) DEFAULT NULL COMMENT '照片',
  `fudaoyuan_phone` varchar(200) DEFAULT NULL COMMENT '辅导员手机号',
  `fudaoyuan_id_number` varchar(200) DEFAULT NULL COMMENT '辅导员身份证号 ',
  `fudaoyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `fudaoyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='辅导员';

/*Data for the table `fudaoyuan` */

insert  into `fudaoyuan`(`id`,`username`,`password`,`fudaoyuan_name`,`fudaoyuan_photo`,`fudaoyuan_phone`,`fudaoyuan_id_number`,`fudaoyuan_email`,`sex_types`,`fudaoyuan_delete`,`create_time`) values (1,'a1','123456','辅导员姓名1','upload/fudaoyuan1.jpg','17703786901','410224199010102001','1@qq.com',2,1,'2023-04-04 11:31:38'),(2,'a2','123456','辅导员姓名2','upload/fudaoyuan2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-04-04 11:31:38'),(3,'a3','123456','辅导员姓名3','upload/fudaoyuan3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-04-04 11:31:38');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '招聘公告标题 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '招聘公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '招聘公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '招聘公告发布时间 ',
  `gonggao_content` text COMMENT '招聘公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='招聘公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'招聘公告标题1','upload/gonggao1.jpg',2,'2023-04-04 11:31:38','招聘公告详情1','2023-04-04 11:31:38'),(2,'招聘公告标题2','upload/gonggao2.jpg',1,'2023-04-04 11:31:38','招聘公告详情2','2023-04-04 11:31:38'),(3,'招聘公告标题3','upload/gonggao3.jpg',1,'2023-04-04 11:31:38','招聘公告详情3','2023-04-04 11:31:38'),(4,'招聘公告标题4','upload/gonggao4.jpg',1,'2023-04-04 11:31:38','招聘公告详情4','2023-04-04 11:31:38'),(5,'招聘公告标题5','upload/gonggao5.jpg',2,'2023-04-04 11:31:38','招聘公告详情5','2023-04-04 11:31:38'),(6,'招聘公告标题6','upload/gonggao6.jpg',1,'2023-04-04 11:31:38','招聘公告详情6','2023-04-04 11:31:38'),(7,'招聘公告标题7','upload/gonggao7.jpg',1,'2023-04-04 11:31:38','招聘公告详情7','2023-04-04 11:31:38'),(8,'招聘公告标题8','upload/gonggao8.jpg',2,'2023-04-04 11:31:38','招聘公告详情8','2023-04-04 11:31:38'),(9,'招聘公告标题9','upload/gonggao9.jpg',2,'2023-04-04 11:31:38','招聘公告详情9','2023-04-04 11:31:38'),(10,'招聘公告标题10','upload/gonggao10.jpg',2,'2023-04-04 11:31:38','招聘公告详情10','2023-04-04 11:31:38'),(11,'招聘公告标题11','upload/gonggao11.jpg',2,'2023-04-04 11:31:38','招聘公告详情11','2023-04-04 11:31:38'),(12,'招聘公告标题12','upload/gonggao12.jpg',1,'2023-04-04 11:31:38','招聘公告详情12','2023-04-04 11:31:38'),(13,'招聘公告标题13','upload/gonggao13.jpg',2,'2023-04-04 11:31:38','招聘公告详情13','2023-04-04 11:31:38'),(14,'招聘公告标题14','upload/gonggao14.jpg',2,'2023-04-04 11:31:38','招聘公告详情14','2023-04-04 11:31:38');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '现在位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_file`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,2,'1680579098312','简历标题1','姓名1',2,'期望工资1','学历1','工作经历1',1,'upload/file.rar','17703786901','upload/jianli1.jpg','现在位置1','教育经历1','实习或工作经历1','个人介绍1','2023-04-04 11:31:38'),(2,3,'1680579098295','简历标题2','姓名2',2,'期望工资2','学历2','工作经历2',1,'upload/file.rar','17703786902','upload/jianli2.jpg','现在位置2','教育经历2','实习或工作经历2','个人介绍2','2023-04-04 11:31:38'),(3,3,'1680579098262','简历标题3','姓名3',1,'期望工资3','学历3','工作经历3',1,'upload/file.rar','17703786903','upload/jianli3.jpg','现在位置3','教育经历3','实习或工作经历3','个人介绍3','2023-04-04 11:31:38'),(4,1,'1680579098291','简历标题4','姓名4',2,'期望工资4','学历4','工作经历4',1,'upload/file.rar','17703786904','upload/jianli4.jpg','现在位置4','教育经历4','实习或工作经历4','个人介绍4','2023-04-04 11:31:38'),(5,3,'1680579098268','简历标题5','姓名5',2,'期望工资5','学历5','工作经历5',1,'upload/file.rar','17703786905','upload/jianli5.jpg','现在位置5','教育经历5','实习或工作经历5','个人介绍5','2023-04-04 11:31:38'),(6,3,'1680579098324','简历标题6','姓名6',3,'期望工资6','学历6','工作经历6',1,'upload/file.rar','17703786906','upload/jianli6.jpg','现在位置6','教育经历6','实习或工作经历6','个人介绍6','2023-04-04 11:31:38'),(7,3,'1680579098293','简历标题7','姓名7',1,'期望工资7','学历7','工作经历7',2,'upload/file.rar','17703786907','upload/jianli7.jpg','现在位置7','教育经历7','实习或工作经历7','个人介绍7','2023-04-04 11:31:38'),(8,1,'1680579098264','简历标题8','姓名8',1,'期望工资8','学历8','工作经历8',1,'upload/file.rar','17703786908','upload/jianli8.jpg','现在位置8','教育经历8','实习或工作经历8','个人介绍8','2023-04-04 11:31:38'),(9,2,'1680579098260','简历标题9','姓名9',2,'期望工资9','学历9','工作经历9',2,'upload/file.rar','17703786909','upload/jianli9.jpg','现在位置9','教育经历9','实习或工作经历9','个人介绍9','2023-04-04 11:31:38'),(10,3,'1680579098271','简历标题10','姓名10',2,'期望工资10','学历10','工作经历10',2,'upload/file.rar','17703786910','upload/jianli10.jpg','现在位置10','教育经历10','实习或工作经历10','个人介绍10','2023-04-04 11:31:38'),(11,2,'1680579098339','简历标题11','姓名11',2,'期望工资11','学历11','工作经历11',1,'upload/file.rar','17703786911','upload/jianli11.jpg','现在位置11','教育经历11','实习或工作经历11','个人介绍11','2023-04-04 11:31:38'),(12,3,'1680579098265','简历标题12','姓名12',1,'期望工资12','学历12','工作经历12',2,'upload/file.rar','17703786912','upload/jianli12.jpg','现在位置12','教育经历12','实习或工作经历12','个人介绍12','2023-04-04 11:31:38'),(13,2,'1680579098309','简历标题13','姓名13',1,'期望工资13','学历13','工作经历13',1,'upload/file.rar','17703786913','upload/jianli13.jpg','现在位置13','教育经历13','实习或工作经历13','个人介绍13','2023-04-04 11:31:38'),(14,2,'1680579098255','简历标题14','姓名14',2,'期望工资14','学历14','工作经历14',2,'upload/file.rar','17703786914','upload/jianli14.jpg','现在位置14','教育经历14','实习或工作经历14','个人介绍14','2023-04-04 11:31:38'),(15,4,'1680585965619','简历11','张胜男',1,'8000','本科','经理11111',1,'upload/1680585986130.doc','17788889999','upload/1680585992549.jpg','位置111','教育士大夫第三个山东高速','更汗的是分公司大涣发大号','合肥师范是大好人复合地基购房款','2023-04-04 13:26:42');

/*Table structure for table `jiuyezhishi` */

DROP TABLE IF EXISTS `jiuyezhishi`;

CREATE TABLE `jiuyezhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiuyezhishi_name` varchar(200) DEFAULT NULL COMMENT '就业知识名称  Search111 ',
  `jiuyezhishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '就业知识编号',
  `jiuyezhishi_photo` varchar(200) DEFAULT NULL COMMENT '就业知识照片',
  `jiuyezhishi_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `jiuyezhishi_video` varchar(200) DEFAULT NULL COMMENT '就业知识视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jiuyezhishi_types` int(11) DEFAULT NULL COMMENT '就业知识类型 Search111',
  `jiuyezhishi_clicknum` int(11) DEFAULT NULL COMMENT '就业知识热度',
  `jiuyezhishi_content` longtext COMMENT '就业知识介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架',
  `jiuyezhishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='就业知识';

/*Data for the table `jiuyezhishi` */

insert  into `jiuyezhishi`(`id`,`jiuyezhishi_name`,`jiuyezhishi_uuid_number`,`jiuyezhishi_photo`,`jiuyezhishi_file`,`jiuyezhishi_video`,`zan_number`,`cai_number`,`jiuyezhishi_types`,`jiuyezhishi_clicknum`,`jiuyezhishi_content`,`shangxia_types`,`jiuyezhishi_delete`,`insert_time`,`create_time`) values (1,'就业知识名称1','1680579098345','upload/jiuyezhishi1.jpg','upload/file.rar','upload/video.mp4',178,451,3,480,'就业知识介绍1',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(2,'就业知识名称2','1680579098332','upload/jiuyezhishi2.jpg','upload/file.rar','upload/video.mp4',337,460,1,150,'就业知识介绍2',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(3,'就业知识名称3','1680579098301','upload/jiuyezhishi3.jpg','upload/file.rar','upload/video.mp4',430,249,1,227,'就业知识介绍3',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(4,'就业知识名称4','1680579098324','upload/jiuyezhishi4.jpg','upload/file.rar','upload/video.mp4',161,208,4,10,'就业知识介绍4',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(5,'就业知识名称5','1680579098328','upload/jiuyezhishi5.jpg','upload/file.rar','upload/video.mp4',335,434,4,319,'就业知识介绍5',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(6,'就业知识名称6','1680579098322','upload/jiuyezhishi6.jpg','upload/file.rar','upload/video.mp4',264,178,4,303,'就业知识介绍6',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(7,'就业知识名称7','1680579098283','upload/jiuyezhishi7.jpg','upload/file.rar','upload/video.mp4',240,58,4,434,'就业知识介绍7',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(8,'就业知识名称8','1680579098340','upload/jiuyezhishi8.jpg','upload/file.rar','upload/video.mp4',223,235,3,492,'就业知识介绍8',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(9,'就业知识名称9','1680579098306','upload/jiuyezhishi9.jpg','upload/file.rar','upload/video.mp4',269,160,1,348,'就业知识介绍9',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(10,'就业知识名称10','1680579098290','upload/jiuyezhishi10.jpg','upload/file.rar','upload/video.mp4',473,245,4,200,'就业知识介绍10',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(11,'就业知识名称11','1680579098295','upload/jiuyezhishi11.jpg','upload/file.rar','upload/video.mp4',119,130,4,333,'就业知识介绍11',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(12,'就业知识名称12','1680579098256','upload/jiuyezhishi12.jpg','upload/file.rar','upload/video.mp4',107,57,1,178,'就业知识介绍12',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(13,'就业知识名称13','1680579098325','upload/jiuyezhishi13.jpg','upload/file.rar','upload/video.mp4',369,117,4,224,'就业知识介绍13',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(14,'就业知识名称14','1680579098324','upload/jiuyezhishi14.jpg','upload/file.rar','upload/video.mp4',389,311,1,457,'就业知识介绍14',1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38');

/*Table structure for table `jiuyezhishi_collection` */

DROP TABLE IF EXISTS `jiuyezhishi_collection`;

CREATE TABLE `jiuyezhishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiuyezhishi_id` int(11) DEFAULT NULL COMMENT '就业知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiuyezhishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='就业知识收藏';

/*Data for the table `jiuyezhishi_collection` */

insert  into `jiuyezhishi_collection`(`id`,`jiuyezhishi_id`,`yonghu_id`,`jiuyezhishi_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(2,2,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(3,3,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(4,4,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(5,5,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(6,6,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(7,7,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(8,8,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(9,9,3,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(10,10,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(11,11,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(12,12,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(13,13,3,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(14,14,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(15,9,4,2,'2023-04-04 13:25:29','2023-04-04 13:25:29'),(16,1,4,2,'2023-04-04 13:31:12','2023-04-04 13:31:12'),(17,1,4,1,'2023-04-04 13:31:15','2023-04-04 13:31:15');

/*Table structure for table `jiuyezhishi_liuyan` */

DROP TABLE IF EXISTS `jiuyezhishi_liuyan`;

CREATE TABLE `jiuyezhishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiuyezhishi_id` int(11) DEFAULT NULL COMMENT '就业知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiuyezhishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='就业知识留言';

/*Data for the table `jiuyezhishi_liuyan` */

insert  into `jiuyezhishi_liuyan`(`id`,`jiuyezhishi_id`,`yonghu_id`,`jiuyezhishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-04 11:31:38','回复信息1','2023-04-04 11:31:38','2023-04-04 11:31:38'),(2,2,3,'留言内容2','2023-04-04 11:31:38','回复信息2','2023-04-04 11:31:38','2023-04-04 11:31:38'),(3,3,3,'留言内容3','2023-04-04 11:31:38','回复信息3','2023-04-04 11:31:38','2023-04-04 11:31:38'),(4,4,2,'留言内容4','2023-04-04 11:31:38','回复信息4','2023-04-04 11:31:38','2023-04-04 11:31:38'),(5,5,3,'留言内容5','2023-04-04 11:31:38','回复信息5','2023-04-04 11:31:38','2023-04-04 11:31:38'),(6,6,3,'留言内容6','2023-04-04 11:31:38','回复信息6','2023-04-04 11:31:38','2023-04-04 11:31:38'),(7,7,1,'留言内容7','2023-04-04 11:31:38','回复信息7','2023-04-04 11:31:38','2023-04-04 11:31:38'),(8,8,2,'留言内容8','2023-04-04 11:31:38','回复信息8','2023-04-04 11:31:38','2023-04-04 11:31:38'),(9,9,2,'留言内容9','2023-04-04 11:31:38','回复信息9','2023-04-04 11:31:38','2023-04-04 11:31:38'),(10,10,3,'留言内容10','2023-04-04 11:31:38','回复信息10','2023-04-04 11:31:38','2023-04-04 11:31:38'),(11,11,2,'留言内容11','2023-04-04 11:31:38','回复信息11','2023-04-04 11:31:38','2023-04-04 11:31:38'),(12,12,3,'留言内容12','2023-04-04 11:31:38','回复信息12','2023-04-04 11:31:38','2023-04-04 11:31:38'),(13,13,2,'留言内容13','2023-04-04 11:31:38','回复信息13','2023-04-04 11:31:38','2023-04-04 11:31:38'),(14,14,1,'留言内容14','2023-04-04 11:31:38','回复信息14','2023-04-04 11:31:38','2023-04-04 11:31:38'),(15,9,4,'ghh','2023-04-04 13:25:36','高规格和','2023-04-04 13:35:19','2023-04-04 13:25:36');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `qiye_types` int(11) DEFAULT NULL COMMENT '企业类型',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '企业logo',
  `qiye_chenglishijian_time` timestamp NULL DEFAULT NULL COMMENT '企业成立时间',
  `qiye_content` text COMMENT '企业介绍',
  `qiye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`username`,`password`,`qiye_name`,`qiye_types`,`qiye_phone`,`qiye_email`,`qiye_photo`,`qiye_chenglishijian_time`,`qiye_content`,`qiye_delete`,`create_time`) values (1,'a1','123456','企业名称1',3,'17703786901','1@qq.com','upload/qiye1.jpg','2023-04-04 11:31:38','<p>企业介绍1骨灰盒</p>',1,'2023-04-04 11:31:38'),(2,'a2','123456','企业名称2',2,'17703786902','2@qq.com','upload/qiye2.jpg','2023-04-04 11:31:38','企业介绍2',1,'2023-04-04 11:31:38'),(3,'a3','123456','企业名称3',1,'17703786903','3@qq.com','upload/qiye3.jpg','2023-04-04 11:31:38','企业介绍3',1,'2023-04-04 11:31:38'),(6,'a4','123456','企业4',2,'17788889999','4@qq.com','/upload/1680586541229.jpg','2023-03-20 00:00:00','<p>ghfsdhfsdsd孤独颂歌</p>',1,'2023-04-04 13:35:47');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','1w30uvz17yq3yupw4vok7nullf86pv0u','2023-04-04 11:35:45','2023-04-04 14:38:08'),(2,1,'a1','yonghu','用户','m74i72zzi4y6hldj3tfk7wxrfslvcbdx','2023-04-04 11:36:03','2023-04-04 14:10:19'),(3,1,'a1','fudaoyuan','辅导员','kfsio7k777cjaorci2ajc2ksdf7739iw','2023-04-04 13:24:00','2023-04-04 14:34:33'),(4,4,'a5','yonghu','用户','8m75uhef7nu3xixj5jznfykjdbkyqk5z','2023-04-04 13:25:17','2023-04-04 14:25:18'),(5,1,'a1','qiye','企业','3f4i9clsyzd6uvbi9zde1dzl1oyhfyzx','2023-04-04 13:33:27','2023-04-04 14:33:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-04 11:30:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',2,1,'2023-04-04 11:31:38'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-04-04 11:31:38'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-04-04 11:31:38'),(4,'a5','123456','张5','upload/1680585959807.jpg','17788889999','444111222255555555','5@qq.com',2,1,'2023-04-04 13:25:13');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiye_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int(11) DEFAULT NULL COMMENT '招聘类型 Search111',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`qiye_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zhaopin_types`,`leixing_types`,`zan_number`,`cai_number`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`create_time`) values (1,1,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',2,2,397,107,408,1,'招聘信息详情1','2023-04-04 11:31:38'),(2,2,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',1,2,102,288,214,1,'招聘信息详情2','2023-04-04 11:31:38'),(3,3,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',2,2,23,124,377,1,'招聘信息详情3','2023-04-04 11:31:38'),(4,1,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',1,2,490,420,88,1,'招聘信息详情4','2023-04-04 11:31:38'),(5,2,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',2,1,171,2,358,1,'招聘信息详情5','2023-04-04 11:31:38'),(6,2,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6','17703786906',2,2,487,259,285,1,'招聘信息详情6','2023-04-04 11:31:38'),(7,2,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7','17703786907',3,1,47,111,158,1,'招聘信息详情7','2023-04-04 11:31:38'),(8,2,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8','17703786908',2,1,435,496,178,1,'招聘信息详情8','2023-04-04 11:31:38'),(9,3,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9','17703786909',3,1,104,201,169,1,'招聘信息详情9','2023-04-04 11:31:38'),(10,2,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10','17703786910',1,1,372,353,392,1,'招聘信息详情10','2023-04-04 11:31:38'),(11,3,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11','17703786911',2,1,462,351,111,1,'招聘信息详情11','2023-04-04 11:31:38'),(12,1,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12','17703786912',2,2,264,289,401,1,'招聘信息详情12','2023-04-04 11:31:38'),(13,1,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13','17703786913',3,2,50,217,220,1,'<p>招聘信息详情13活该哈哈</p>','2023-04-04 11:31:38'),(14,3,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14','17703786914',2,2,50,75,165,1,'招聘信息详情14','2023-04-04 11:31:38');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(2,2,3,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(3,3,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(4,4,3,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(5,5,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(6,6,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(7,7,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(8,8,3,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(9,9,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(10,10,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(11,11,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(12,12,2,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(13,13,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(14,14,1,1,'2023-04-04 11:31:38','2023-04-04 11:31:38'),(16,7,4,1,'2023-04-04 13:25:44','2023-04-04 13:25:44'),(17,1,4,2,'2023-04-04 13:27:01','2023-04-04 13:27:01'),(18,1,4,1,'2023-04-04 13:27:05','2023-04-04 13:27:05');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'留言内容1','回复信息1','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(2,2,2,'留言内容2','回复信息2','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(3,3,1,'留言内容3','回复信息3','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(4,4,1,'留言内容4','回复信息4','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(5,5,2,'留言内容5','回复信息5','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(6,6,2,'留言内容6','回复信息6','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(7,7,3,'留言内容7','回复信息7','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(8,8,3,'留言内容8','回复信息8','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(9,9,2,'留言内容9','回复信息9','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(10,10,2,'留言内容10','回复信息10','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(11,11,1,'留言内容11','回复信息11','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(12,12,1,'留言内容12','回复信息12','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(13,13,1,'留言内容13','回复信息13','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(14,14,1,'留言内容14','回复信息14','2023-04-04 11:31:38','2023-04-04 11:31:38','2023-04-04 11:31:38'),(15,1,4,'合适的更合适的合格','g的方法大幅度','2023-04-04 13:26:57','2023-04-04 13:34:16','2023-04-04 13:26:57');

/*Table structure for table `zhaopin_toudi` */

DROP TABLE IF EXISTS `zhaopin_toudi`;

CREATE TABLE `zhaopin_toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `zhaopin_toudi_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `zhaopin_toudi_yesno_text` text COMMENT '投递回复',
  `zhaopin_toudi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `zhaopin_toudi` */

insert  into `zhaopin_toudi`(`id`,`jianli_id`,`zhaopin_id`,`insert_time`,`zhaopin_toudi_yesno_types`,`zhaopin_toudi_yesno_text`,`zhaopin_toudi_shenhe_time`,`create_time`) values (1,1,1,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(2,2,2,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(3,3,3,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(4,4,4,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(5,5,5,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(6,6,6,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(7,7,7,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(8,8,8,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(9,9,9,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(10,10,10,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(11,11,11,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(12,12,12,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(13,13,13,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(14,14,14,'2023-04-04 11:31:38',1,NULL,NULL,'2023-04-04 11:31:38'),(29,4,12,'2023-04-04 11:48:06',1,NULL,NULL,'2023-04-04 11:48:06'),(30,15,1,'2023-04-04 13:27:11',2,'回公司颠覆三观','2023-04-04 13:34:24','2023-04-04 13:27:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
