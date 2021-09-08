/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `sharing_alliance`;
CREATE DATABASE IF NOT EXISTS `sharing_alliance` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sharing_alliance`;

DROP TABLE IF EXISTS `app_member`;
CREATE TABLE IF NOT EXISTS `app_member` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `platform` tinyint(1) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `vip_end_time` datetime(6) DEFAULT NULL,
  `vip_start_time` datetime(6) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL,
  `vip_status` tinyint(1) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `invite_code` varchar(255) DEFAULT NULL,
  `grade` int(11) unsigned DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `invite_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `invite_code` (`invite_code`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `app_member`;
/*!40000 ALTER TABLE `app_member` DISABLE KEYS */;
INSERT INTO `app_member` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `avatar`, `email`, `mobile`, `nickname`, `password`, `platform`, `sex`, `status`, `type`, `username`, `vip_end_time`, `vip_start_time`, `permissions`, `vip_status`, `birth`, `address`, `invite_code`, `grade`, `position`, `invite_by`, `description`) VALUES
	(255227305549369344, '', '2020-03-25 21:14:32.000000', 0, 'admin', '2020-04-27 17:20:45.307000', 'https://ooo.0o0.ooo/2020/04/18/NmF3IP4TOoVbLf5.png', '', '18782059031', '187****9031', NULL, -1, '', 0, 1, '1251014922381430800', '2030-04-30 00:00:00.000000', '2020-04-01 00:00:00.000000', 'MEMBER', 1, NULL, '中国 北京市 北京市 朝阳区 酒仙桥路 3号 电子城．国际电子总部', '12N3VE6CK440G', 0, '30.5681733200,104.0666198700', '', NULL),
	(1251783645962833920, 'admin', '2020-04-19 16:04:12.000000', 0, 'admin', '2020-04-27 17:24:23.091000', 'https://ooo.0o0.ooo/2020/04/18/NmF3IP4TOoVbLf5.png', '', '18782059092', '187****9092', NULL, 1, '', 0, 1, '1251783646004776960', '2020-04-07 00:00:00.000000', '2020-04-01 00:00:00.000000', 'MEMBER', 2, NULL, '中国 北京市 北京市 朝阳区 酒仙桥路 3号 电子城．国际电子总部', '12NPQJ01S4400', 0, '30.5681733200,104.0666198700', '1251014922381430800', NULL),
	(1251783729291071489, 'admin', '2020-04-19 16:04:32.000000', 0, 'admin', '2020-04-27 22:03:48.509000', 'https://ooo.0o0.ooo/2020/04/18/NmF3IP4TOoVbLf5.png', '', '18782059033', '187****9093', NULL, 2, '', 0, 0, '1251783729303654400', NULL, NULL, 'MEMBER', 0, NULL, '中国 北京市 北京市 朝阳区 酒仙桥路 3号 电子城．国际电子总部', '12NPQLDKC4400', 0, '30.5681733200,104.0666198700', '1251014922381430800', NULL);
/*!40000 ALTER TABLE `app_member` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_blob_triggers`;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_calendars`;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_cron_triggers`;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_fired_triggers`;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_job_details`;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_locks`;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` (`SCHED_NAME`, `LOCK_NAME`) VALUES
	('quartzScheduler', 'TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_paused_trigger_grps`;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_scheduler_state`;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_simple_triggers`;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_simprop_triggers`;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;

DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `qrtz_triggers`;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_act_business`;
CREATE TABLE IF NOT EXISTS `t_act_business` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `proc_def_id` varchar(255) DEFAULT NULL,
  `proc_inst_id` varchar(255) DEFAULT NULL,
  `result` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `table_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_act_business`;
/*!40000 ALTER TABLE `t_act_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_act_business` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_act_category`;
CREATE TABLE IF NOT EXISTS `t_act_category` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_act_category`;
/*!40000 ALTER TABLE `t_act_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_act_category` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_act_model`;
CREATE TABLE IF NOT EXISTS `t_act_model` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `model_key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_act_model`;
/*!40000 ALTER TABLE `t_act_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_act_model` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_act_node`;
CREATE TABLE IF NOT EXISTS `t_act_node` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `node_id` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `relate_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_act_node`;
/*!40000 ALTER TABLE `t_act_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_act_node` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_act_process`;
CREATE TABLE IF NOT EXISTS `t_act_process` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `deployment_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `diagram_name` varchar(255) DEFAULT NULL,
  `latest` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `process_key` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `xml_name` varchar(255) DEFAULT NULL,
  `business_table` varchar(255) DEFAULT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `all_user` bit(1) DEFAULT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_act_process`;
/*!40000 ALTER TABLE `t_act_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_act_process` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_act_starter`;
CREATE TABLE IF NOT EXISTS `t_act_starter` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `process_def_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_act_starter`;
/*!40000 ALTER TABLE `t_act_starter` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_act_starter` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_auto_chat`;
CREATE TABLE IF NOT EXISTS `t_auto_chat` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `bad` int(11) DEFAULT NULL,
  `good` int(11) DEFAULT NULL,
  `content` text,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `evaluable` bit(1) DEFAULT NULL,
  `hot` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `search` (`title`,`keywords`) /*!50100 WITH PARSER `ngram` */ 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_auto_chat`;
/*!40000 ALTER TABLE `t_auto_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_auto_chat` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_client`;
CREATE TABLE IF NOT EXISTS `t_client` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `home_uri` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(255) DEFAULT NULL,
  `auto_approve` bit(1) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_client`;
/*!40000 ALTER TABLE `t_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_client` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_department`;
CREATE TABLE IF NOT EXISTS `t_department` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `dep_type` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `small_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_department`;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`, `address`, `area`, `dep_type`, `mobile`, `small_title`) VALUES
	(40322777781112832, '', '2018-08-10 20:40:40', 0, 'admin', '2021-09-08 14:59:26', 0, 1.00, 0, '开发一部', b'1', '3', '2', '1', '4', '开一'),
	(40322811096469504, '', '2018-08-10 20:40:48', 0, 'admin', '2021-09-08 15:00:03', 40322777781112832, 1.00, 0, '开发一部前端', b'1', '', '', '', '', '开一前'),
	(40322852833988608, '', '2018-08-10 20:40:58', 0, 'admin', '2021-09-08 15:00:25', 40322811096469504, 1.00, 0, '开发一部前端UI', NULL, '', '', '', '', '开一UI'),
	(40343262766043136, '', '2018-08-10 22:02:04', 0, 'admin', '2021-09-08 14:59:32', 0, 2.00, 0, '开发二部', b'1', '', '', '', '', '开二'),
	(40344005342400512, '', '2018-08-10 22:05:01', 0, 'admin', '2021-09-08 15:00:52', 40343262766043136, 2.00, 0, '开发二部后端', NULL, '', '', '', '', '开发二部后端'),
	(40389030113710080, '', '2018-08-11 01:03:56', 0, 'admin', '2021-09-08 15:00:45', 40343262766043136, 1.00, 0, '开发二部前端', b'0', '', '', '', '', '开发二部前端'),
	(40652270295060480, '', '2018-08-11 18:29:57', 0, 'admin', '2021-09-08 14:59:42', 0, 3.00, 0, '开发三部', b'1', '', '', '', '', '开三'),
	(40652338142121984, '', '2018-08-11 18:30:13', 0, 'admin', '2021-09-08 15:01:01', 40652270295060480, 1.00, 0, '开发三部前端', b'0', '', '', '', '', '开发三部前端'),
	(40681289119961088, '', '2018-08-11 20:25:16', 0, 'admin', '2021-09-08 15:01:07', 40652270295060480, 2.00, 0, '开发三部后端', b'0', '', '', '', '', '开发三部后端');
/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_department_header`;
CREATE TABLE IF NOT EXISTS `t_department_header` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint(20) unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_department_header`;
/*!40000 ALTER TABLE `t_department_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_department_header` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE IF NOT EXISTS `t_dict` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_dict`;
/*!40000 ALTER TABLE `t_dict` DISABLE KEYS */;
INSERT INTO `t_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	(75135930788220928, 'admin', '2018-11-14 22:15:43', 0, 'admin', '2018-11-27 01:39:06', '', '性别', 'sex', 0.00),
	(75383353938808832, 'admin', '2018-11-15 14:38:53', 0, 'admin', '2018-11-27 01:39:15', '', '消息类型', 'message_type', 1.00),
	(75388696739713024, 'admin', '2018-11-15 15:00:07', 0, 'admin', '2018-11-27 01:39:22', '', '按钮权限类型', 'permission_type', 2.00),
	(75392985935646720, 'admin', '2018-11-15 15:17:10', 0, 'admin', '2018-11-27 01:39:29', '', '腾讯云对象存储区域', 'tencent_bucket_region', 3.00),
	(79717732567748608, 'admin', '2018-11-27 13:42:10', 0, 'admin', '2018-11-27 13:42:10', '', '流程节点类型', 'process_node_type', 4.00),
	(81843858882695168, 'admin', '2018-12-03 10:30:38', 0, 'admin', '2018-12-03 10:30:49', '', '优先级', 'priority', 5.00),
	(82236987314016256, 'admin', '2018-12-04 12:32:47', 0, 'admin', '2018-12-04 12:32:47', '', '业务表', 'business_table', 6.00),
	(82236987314016257, 'admin', '2018-12-04 12:32:47', 0, 'admin', '2018-12-04 12:32:47', '', '业务表单路由', 'business_form', 7.00),
	(99020862912466944, 'admin', '2019-01-19 20:05:54', 0, 'admin', '2019-01-19 20:06:10', '', '请假类型', 'leave_type', 8.00);
/*!40000 ALTER TABLE `t_dict` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_dict_data`;
CREATE TABLE IF NOT EXISTS `t_dict_data` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint(20) unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_dict_data`;
/*!40000 ALTER TABLE `t_dict_data` DISABLE KEYS */;
INSERT INTO `t_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	(75158227712479232, 'admin', '2018-11-14 23:44:19', 0, 'admin', '2019-04-01 23:53:13', '', 75135930788220928, 0.00, 0, '男', '男'),
	(75159254272577536, 'admin', '2018-11-14 23:48:24', 0, 'admin', '2019-04-01 23:53:17', '', 75135930788220928, 1.00, 0, '女', '女'),
	(75159898425397248, 'admin', '2018-11-14 23:50:57', 0, 'admin', '2019-04-01 23:53:22', '', 75135930788220928, 2.00, -1, '保密', '保密'),
	(75385648017575936, 'admin', '2018-11-15 14:48:00', 0, 'admin', '2019-04-02 00:10:36', '', 75383353938808832, 0.00, 0, '系统公告', '系统公告'),
	(75385706913992704, 'admin', '2018-11-15 14:48:14', 0, 'admin', '2019-04-02 00:10:32', '', 75383353938808832, 1.00, 0, '提醒', '提醒'),
	(75385774274514944, 'admin', '2018-11-15 14:48:30', 0, 'admin', '2019-04-02 00:10:28', '', 75383353938808832, 2.00, 0, '私信', '私信'),
	(75390787835138048, 'admin', '2018-11-15 15:08:26', 0, 'admin', '2018-11-15 15:08:26', '', 75388696739713024, 0.00, 0, '查看操作(view)', 'view'),
	(75390886501945344, 'admin', '2018-11-15 15:08:49', 0, 'admin', '2018-11-15 15:08:57', '', 75388696739713024, 1.00, 0, '添加操作(add)', 'add'),
	(75390993939042304, 'admin', '2018-11-15 15:09:15', 0, 'admin', '2018-11-15 15:09:15', '', 75388696739713024, 2.00, 0, '编辑操作(edit)', 'edit'),
	(75391067532300288, 'admin', '2018-11-15 15:09:32', 0, 'admin', '2018-11-15 15:09:32', '', 75388696739713024, 3.00, 0, '删除操作(delete)', 'delete'),
	(75391126902673408, 'admin', '2018-11-15 15:09:46', 0, 'admin', '2018-11-15 15:09:46', '', 75388696739713024, 4.00, 0, '清空操作(clear)', 'clear'),
	(75391192883269632, 'admin', '2018-11-15 15:10:02', 0, 'admin', '2018-11-15 15:10:02', '', 75388696739713024, 5.00, 0, '启用操作(enable)', 'enable'),
	(75391251024711680, 'admin', '2018-11-15 15:10:16', 0, 'admin', '2018-11-15 15:10:16', '', 75388696739713024, 6.00, 0, '禁用操作(disable)', 'disable'),
	(75391297124306944, 'admin', '2018-11-15 15:10:27', 0, 'admin', '2018-11-15 15:10:27', '', 75388696739713024, 7.00, 0, '搜索操作(search)', 'search'),
	(75391343379091456, 'admin', '2018-11-15 15:10:38', 0, 'admin', '2018-11-15 15:10:38', '', 75388696739713024, 8.00, 0, '上传文件(upload)', 'upload'),
	(75391407526776832, 'admin', '2018-11-15 15:10:53', 0, 'admin', '2018-11-15 15:10:53', '', 75388696739713024, 9.00, 0, '导出操作(output)', 'output'),
	(75391475042488320, 'admin', '2018-11-15 15:11:09', 0, 'admin', '2018-11-15 15:11:09', '', 75388696739713024, 10.00, 0, '导入操作(input)', 'input'),
	(75391522182270976, 'admin', '2018-11-15 15:11:21', 0, 'admin', '2018-11-15 15:11:21', '', 75388696739713024, 11.00, 0, '分配权限(editPerm)', 'editPerm'),
	(75391576364290048, 'admin', '2018-11-15 15:11:34', 0, 'admin', '2018-11-15 15:11:34', '', 75388696739713024, 12.00, 0, '设为默认(setDefault)', 'setDefault'),
	(75391798033256448, 'admin', '2018-11-15 15:12:26', 0, 'admin', '2018-11-15 15:12:26', '', 75388696739713024, 13.00, 0, '其他操作(other)', 'other'),
	(75393605291741184, 'admin', '2018-11-15 15:19:37', 0, 'admin', '2018-11-15 15:19:37', '', 75392985935646720, 0.00, 0, '北京一区（华北）', 'ap-beijing-1'),
	(75393681254780928, 'admin', '2018-11-15 15:19:55', 0, 'admin', '2018-11-15 15:19:55', '', 75392985935646720, 1.00, 0, '北京', 'ap-beijing'),
	(75393767619694592, 'admin', '2018-11-15 15:20:16', 0, 'admin', '2018-11-15 15:20:16', '', 75392985935646720, 2.00, 0, '上海（华东）', 'ap-shanghai'),
	(75393851484803072, 'admin', '2018-11-15 15:20:36', 0, 'admin', '2018-11-15 15:20:36', '', 75392985935646720, 3.00, 0, '广州（华南）', 'ap-guangzhou'),
	(75393961887272960, 'admin', '2018-11-15 15:21:02', 0, 'admin', '2018-11-15 15:21:02', '', 75392985935646720, 4.00, 0, '成都（西南）', 'ap-chengdu'),
	(75394053969022976, 'admin', '2018-11-15 15:21:24', 0, 'admin', '2018-11-15 15:21:24', '', 75392985935646720, 5.00, 0, '重庆', 'ap-chongqing'),
	(75394122474590208, 'admin', '2018-11-15 15:21:41', 0, 'admin', '2018-11-15 15:21:41', '', 75392985935646720, 6.00, 0, '新加坡', 'ap-singapore'),
	(75394186202845184, 'admin', '2018-11-15 15:21:56', 0, 'admin', '2018-11-15 15:21:56', '', 75392985935646720, 7.00, 0, '香港', 'ap-hongkong'),
	(75394254255427584, 'admin', '2018-11-15 15:22:12', 0, 'admin', '2018-11-15 15:22:12', '', 75392985935646720, 8.00, 0, '多伦多', 'na-toronto'),
	(75394309125312512, 'admin', '2018-11-15 15:22:25', 0, 'admin', '2018-11-15 15:22:25', '', 75392985935646720, 9.00, 0, '法兰克福', 'eu-frankfurt'),
	(75394367044456448, 'admin', '2018-11-15 15:22:39', 0, 'admin', '2018-11-15 15:22:39', '', 75392985935646720, 10.00, 0, '孟买', 'ap-mumbai'),
	(75394448523005952, 'admin', '2018-11-15 15:22:58', 0, 'admin', '2018-11-15 15:22:58', '', 75392985935646720, 11.00, 0, '首尔', 'ap-seoul'),
	(75394604765024256, 'admin', '2018-11-15 15:23:36', 0, 'admin', '2018-11-15 15:23:36', '', 75392985935646720, 12.00, 0, '硅谷', 'na-siliconvalley'),
	(75394659299364864, 'admin', '2018-11-15 15:23:49', 0, 'admin', '2018-11-15 15:23:49', '', 75392985935646720, 13.00, 0, '弗吉尼亚', 'na-ashburn'),
	(75394705700950016, 'admin', '2018-11-15 15:24:00', 0, 'admin', '2018-11-15 15:24:00', '', 75392985935646720, 14.00, 0, '曼谷', 'ap-bangkok'),
	(75394759287377920, 'admin', '2018-11-15 15:24:12', 0, 'admin', '2018-11-15 15:24:12', '', 75392985935646720, 15.00, 0, '莫斯科', 'eu-moscow'),
	(79717808262352896, 'admin', '2018-11-27 13:42:28', 0, 'admin', '2018-11-27 13:42:28', '', 79717732567748608, 0.00, 0, '开始节点', '0'),
	(79717858308788224, 'admin', '2018-11-27 13:42:40', 0, 'admin', '2018-11-27 13:42:40', '', 79717732567748608, 1.00, 0, '审批节点', '1'),
	(79717920061526016, 'admin', '2018-11-27 13:42:54', 0, 'admin', '2018-12-08 20:35:39', '', 79717732567748608, 2.00, 0, '结束节点', '2'),
	(81843987719131136, 'admin', '2018-12-03 10:31:08', 0, 'admin', '2018-12-03 10:31:08', '', 81843858882695168, 0.00, 0, '普通', '0'),
	(81844044015079424, 'admin', '2018-12-03 10:31:22', 0, 'admin', '2018-12-03 10:31:22', '', 81843858882695168, 1.00, 0, '重要', '1'),
	(81844100705292288, 'admin', '2018-12-03 10:31:35', 0, 'admin', '2018-12-03 10:31:35', '', 81843858882695168, 2.00, 0, '紧急', '2'),
	(82237106587439104, 'admin', '2018-12-04 12:33:15', 0, 'admin', '2018-12-04 12:33:15', '', 82236987314016256, 0.00, 0, '请假申请表', 't_leave'),
	(82237106587439105, 'admin', '2018-12-04 12:33:15', 0, 'admin', '2018-12-04 12:33:15', '', 82236987314016257, 0.00, 0, '请假申请表', 'leave'),
	(99020985985929216, 'admin', '2019-01-19 20:06:23', 0, 'admin', '2019-04-01 23:55:48', '', 99020862912466944, 0.00, 0, '年假', '年假'),
	(99021020739932160, 'admin', '2019-01-19 20:06:32', 0, 'admin', '2019-04-01 23:55:52', '', 99020862912466944, 1.00, 0, '事假', '事假'),
	(99021195566911488, 'admin', '2019-01-19 20:07:13', 0, 'admin', '2019-04-01 23:55:56', '', 99020862912466944, 2.00, 0, '病假', '病假'),
	(99021242476007424, 'admin', '2019-01-19 20:07:24', 0, 'admin', '2019-04-01 23:56:01', '', 99020862912466944, 3.00, 0, '调休', '调休'),
	(99021300730695680, 'admin', '2019-01-19 20:07:38', 0, 'admin', '2019-04-01 23:56:05', '', 99020862912466944, 4.00, 0, '产假', '产假'),
	(99021341889400832, 'admin', '2019-01-19 20:07:48', 0, 'admin', '2019-04-01 23:56:10', '', 99020862912466944, 5.00, 0, '陪产假', '陪产假'),
	(99021382393794560, 'admin', '2019-01-19 20:07:58', 0, 'admin', '2019-04-01 23:56:14', '', 99020862912466944, 6.00, 0, '婚假', '婚假'),
	(99021437171404800, 'admin', '2019-01-19 20:08:11', 0, 'admin', '2019-04-01 23:56:18', '', 99020862912466944, 7.00, 0, '例假', '例假'),
	(99021497724571648, 'admin', '2019-01-19 20:08:25', 0, 'admin', '2019-04-01 23:56:23', '', 99020862912466944, 8.00, 0, '丧假', '丧假'),
	(99021556704874496, 'admin', '2019-01-19 20:08:39', 0, 'admin', '2019-04-01 23:56:27', '', 99020862912466944, 9.00, 0, '哺乳假', '哺乳假'),
	(125170157323554816, 'admin', '2019-04-01 23:53:52', 0, 'admin', '2019-04-01 23:53:52', '', 75383353938808832, 3.00, 0, '工作流', '工作流');
/*!40000 ALTER TABLE `t_dict_data` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_file`;
CREATE TABLE IF NOT EXISTS `t_file` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_file`;
/*!40000 ALTER TABLE `t_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_file` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_leave`;
CREATE TABLE IF NOT EXISTS `t_leave` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_leave`;
/*!40000 ALTER TABLE `t_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_leave` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_log`;
CREATE TABLE IF NOT EXISTS `t_log` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int(11) unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_log`;
/*!40000 ALTER TABLE `t_log` DISABLE KEYS */;
INSERT INTO `t_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `device`) VALUES
	(1427546354925834240, NULL, '2021-08-17 16:22:28', 0, NULL, '2021-08-17 16:22:28', 259, '127.0.0.1', '未知', '登录系统', '{"password":"你是看不见我的","code":"ZPZQ","saveLogin":"true","captchaId":"ac3efc09be2941c3bc352275b8e70554","username":"admin"}', 'POST', '/xboot/login', 'admin', 1, 'Chrome 92.0.4515.131 | Windows Windows 10 or Windows Server 2016 | PC端'),
	(1427546501680336896, NULL, '2021-08-17 16:23:03', 0, NULL, '2021-08-17 16:23:03', 54, '127.0.0.1', '未知', '登录系统', '{"password":"你是看不见我的","code":"TQSP","saveLogin":"true","captchaId":"999f7adc36c74c48a43bc9f89390588a","username":"admin"}', 'POST', '/xboot/login', 'admin', 1, 'Chrome 92.0.4515.131 | Windows Windows 10 or Windows Server 2016 | PC端'),
	(1430514226895654912, NULL, '2021-08-25 20:55:44', 0, NULL, '2021-08-25 20:55:44', 430, '127.0.0.1', '未知', '登录系统', '{"password":"你是看不见我的","code":"RY11","saveLogin":"true","captchaId":"7440ef30e0944bab9ed58b30c22c2277","username":"admin"}', 'POST', '/xboot/login', 'admin', 1, 'Chrome 92.0.4515.131 | Windows Windows 10 or Windows Server 2016 | PC端'),
	(1435484067524120576, NULL, '2021-09-08 14:04:07', 0, NULL, '2021-09-08 14:04:07', 281, '127.0.0.1', '未知', '登录系统', '{"password":"你是看不见我的","code":"V4DH","saveLogin":"true","captchaId":"0eddcde346d441038fd31e52c00cd3d4","username":"admin"}', 'POST', '/xboot/login', 'admin', 1, 'Chrome 93.0.4577.63 | Windows Windows 10 or Windows Server 2016 | PC端');
/*!40000 ALTER TABLE `t_log` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_message`;
CREATE TABLE IF NOT EXISTS `t_message` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_send` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4,
  `is_template` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_message`;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `create_send`, `title`, `type`, `content`, `is_template`) VALUES
	(43615268366192640, 'admin', '2018-08-19 22:43:51', 0, 'admin', '2021-01-01 14:49:39', b'1', '欢迎您注册账号使用XBoot 点我查看使用须知', '系统公告', '<p style="text-align: center;">XBoot是很棒的Web前后端分离开发平台，开源版本请遵循GPL v3.0开源协议，不得闭源，商用需求请联系作者签署授权协议。</p><p style="text-align: center;">捐赠获取完整版：<a href="http://xpay.exrick.cn/pay?xboot" target="_blank" style="background-color: rgb(255, 255, 255);">立即去捐赠获取</a></p><p style="text-align: center;"><img src="https://i.loli.net/2018/08/24/5b801c8652227.png" style="max-width:150px;"><br></p><p style="text-align: center;">手机扫一扫支付</p><p style="text-align: center;">获取商用授权：<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1012139570&amp;site=qq&amp;menu=yes" target="_blank" style="background-color: rgb(255, 255, 255);">立即联系作者获取商用授权</a></p>', b'0'),
	(1352138048674074624, 'admin', '2021-01-21 14:16:47', 0, 'admin', '2021-01-22 01:35:38', b'0', '您收到了一个新的委托转办的“${processName}”任务，申请人：${applyer}', '工作流', '<p>${nickname}您好，<span style="font-size: 1em;">您收到了一个新的</span>委托转办的“${processName}”任务，申请人：${nickname}，赶快去系统“工作流程-我的待办”中查看处理吧！</p>', b'1'),
	(1352243408286126080, 'admin', '2021-01-21 21:15:27', 0, 'admin', '2021-01-22 01:35:21', b'0', '您收到了一条新的“${processName}”待办任务，申请人：${applyer}', '工作流', '<p>${nickname}您好，您收到了一条新的“${processName}”待办任务，申请人：${applyer}，赶快去“工作流程-我的待办”处理查看吧<br></p>', b'1'),
	(1352244242726129664, 'admin', '2021-01-21 21:18:46', 0, 'admin', '2021-01-22 01:34:57', b'0', '您申请的“${processName}”任务已审批通过', '工作流', '<p>${nickname}您好，您申请的“${processName}”任务已审批通过，赶快去“工作流程-我的申请”处理查看吧<br></p>', b'1'),
	(1352304101387538432, 'admin', '2021-01-22 01:16:37', 0, 'admin', '2021-01-22 01:33:48', b'0', '${nickname}您好，您申请的“${processName}”任务已被驳回', '工作流', '<p>${nickname}您好，您申请的“${processName}”任务已被驳回，赶快去“工作流程-我的申请”处理查看吧<br></p>', b'1');
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_message_send`;
CREATE TABLE IF NOT EXISTS `t_message_send` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `message_id` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_message_send`;
/*!40000 ALTER TABLE `t_message_send` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message_send` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE IF NOT EXISTS `t_permission` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  `is_menu` bit(1) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_permission`;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `url`, `show_always`, `is_menu`, `is_parent`) VALUES
	(5129710648430592, '', '2018-06-04 19:02:29', 0, 'admin', '2021-01-11 01:00:01', '', 'sys', 125909152017944576, 0, 1.00, 'Main', '/sys', '系统管理', 'ios-settings', 1, '', 0, '', b'1', NULL, b'1'),
	(5129710648430593, '', '2018-06-04 19:02:32', 0, '', '2018-08-13 15:15:33', '', 'user-manage', 5129710648430592, 0, 1.10, 'sys/user-manage/userManage', 'user-manage', '用户管理', 'md-person', 2, '', 0, '', b'1', NULL, b'1'),
	(5129710648430594, '', '2018-06-04 19:02:35', 0, '', '2018-10-13 13:51:36', '', 'role-manage', 5129710648430592, 0, 1.60, 'sys/role-manage/roleManage', 'role-manage', '角色权限管理', 'md-contacts', 2, '', 0, '', b'1', NULL, b'1'),
	(5129710648430595, '', '2018-06-04 19:02:37', 0, '', '2018-09-23 23:32:02', '', 'menu-manage', 5129710648430592, 0, 1.70, 'sys/menu-manage/menuManage', 'menu-manage', '菜单权限管理', 'md-menu', 2, '', 0, '', b'1', NULL, b'1'),
	(15701400130424832, '', '2018-06-03 22:04:06', 0, '', '2018-09-19 22:16:44', '', '', 5129710648430593, 1, 1.11, '', '/xboot/user/admin/add*', '添加用户', '', 3, 'add', 0, '', b'1', NULL, NULL),
	(15701915807518720, '', '2018-06-03 22:06:09', 0, '', '2018-06-06 14:46:51', '', '', 5129710648430593, 1, 1.13, '', '/xboot/user/admin/disable/**', '禁用用户', '', 3, 'disable', 0, NULL, b'1', NULL, NULL),
	(15708892205944832, '', '2018-06-03 22:33:52', 0, '', '2018-06-28 16:44:48', '', '', 5129710648430593, 1, 1.14, '', '/xboot/user/admin/enable/**', '启用用户', '', 3, 'enable', 0, NULL, b'1', NULL, NULL),
	(16678126574637056, '', '2018-06-06 14:45:16', 0, '', '2018-09-19 22:16:48', '', '', 5129710648430593, 1, 1.12, '', '/xboot/user/admin/edit*', '编辑用户', '', 3, 'edit', 0, '', b'1', NULL, NULL),
	(16678447719911424, '', '2018-06-06 14:46:32', 0, '', '2018-08-10 21:41:16', '', '', 5129710648430593, 1, 1.15, '', '/xboot/user/delByIds/**', '删除用户', '', 3, 'delete', 0, '', b'1', NULL, NULL),
	(16687383932047360, '', '2018-06-06 15:22:03', 0, '', '2018-09-19 22:07:34', '', '', 5129710648430594, 1, 1.21, '', '/xboot/role/save*', '添加角色', '', 3, 'add', 0, '', b'1', NULL, NULL),
	(16689632049631232, '', '2018-06-06 15:30:59', 0, '', '2018-09-19 22:07:37', '', '', 5129710648430594, 1, 1.22, '', '/xboot/role/edit*', '编辑角色', '', 3, 'edit', 0, '', b'1', NULL, NULL),
	(16689745006432256, '', '2018-06-06 15:31:26', 0, '', '2018-08-10 21:41:23', '', '', 5129710648430594, 1, 1.23, '', '/xboot/role/delAllByIds/**', '删除角色', '', 3, 'delete', 0, '', b'1', NULL, NULL),
	(16689883993083904, NULL, '2018-06-06 15:31:59', 0, NULL, '2018-06-06 15:31:59', NULL, NULL, 5129710648430594, 1, 1.24, NULL, '/xboot/role/editRolePerm**', '分配权限', NULL, 3, 'editPerm', 0, NULL, b'1', NULL, NULL),
	(16690313745666048, '', '2018-06-06 15:33:41', 0, '', '2018-09-19 22:07:46', '', '', 5129710648430594, 1, 1.25, '', '/xboot/role/setDefault*', '设为默认角色', '', 3, 'setDefault', 0, '', b'1', NULL, NULL),
	(16694861252005888, '', '2018-06-06 15:51:46', 0, '', '2018-09-19 22:07:52', '', '', 5129710648430595, 1, 1.31, '', '/xboot/permission/add*', '添加菜单', '', 3, 'add', 0, '', b'1', NULL, NULL),
	(16695107491205120, '', '2018-06-06 15:52:44', 0, '', '2018-09-19 22:07:57', '', '', 5129710648430595, 1, 1.32, '', '/xboot/permission/edit*', '编辑菜单', '', 3, 'edit', 0, '', b'1', NULL, NULL),
	(16695243126607872, '', '2018-06-06 15:53:17', 0, '', '2018-08-10 21:41:33', '', '', 5129710648430595, 1, 1.33, '', '/xboot/permission/delByIds/**', '删除菜单', '', 3, 'delete', 0, '', b'1', NULL, NULL),
	(25014528525733888, '', '2018-06-29 14:51:09', 0, '', '2018-10-08 11:13:27', '', '', 5129710648430593, 1, 1.16, '', '无', '上传图片', '', 3, 'upload', 0, '', b'1', NULL, NULL),
	(39915540965232640, NULL, '2018-08-09 17:42:28', 0, NULL, '2018-08-09 17:42:28', NULL, 'monitor', 125909152017944576, 0, 2.00, 'Main', '/monitor', '系统监控', 'ios-analytics', 1, NULL, 0, NULL, b'1', NULL, b'1'),
	(40238597734928384, '', '2018-08-10 15:06:10', 0, 'admin', '2020-12-10 02:21:33', '', 'department-manage', 5129710648430592, 0, 1.20, 'sys/department-manage/departmentManage', 'department-manage', '部门管理', 'md-git-branch', 2, '', 0, '', b'1', NULL, b'1'),
	(41363147411427328, '', '2018-08-13 17:34:43', 0, 'admin', '2020-03-25 20:31:16', '', 'log-manage', 39915540965232640, 0, 2.20, 'sys/log-manage/logManage', 'log-manage', '日志管理', 'md-list-box', 2, '', 0, '', b'1', NULL, b'1'),
	(41363537456533504, '', '2018-08-13 17:36:16', 0, '', '2018-08-13 17:56:11', '', '', 41363147411427328, 1, 2.11, '', '/xboot/log/delByIds/**', '删除日志', '', 3, 'delete', 0, '', b'1', NULL, NULL),
	(41364927394353152, '', '2018-08-13 17:41:48', 0, 'admin', '2020-12-11 16:32:40', '', '', 41363147411427328, 1, 2.12, '', '/xboot/log/delAll*', '清空日志', '', 3, 'clear', 0, '', b'1', NULL, NULL),
	(45235621697949696, '', '2018-08-24 10:02:33', 0, '', '2018-09-19 22:06:57', '', '', 40238597734928384, 1, 1.21, '', '/xboot/department/add*', '添加部门', '', 3, 'add', 0, '', b'1', NULL, NULL),
	(45235787867885568, '', '2018-08-24 10:03:13', 0, '', '2018-09-19 22:07:02', '', '', 40238597734928384, 1, 1.22, '', '/xboot/department/edit*', '编辑部门', '', 3, 'edit', 0, '', b'1', NULL, NULL),
	(45235939278065664, NULL, '2018-08-24 10:03:49', 0, NULL, '2018-08-24 10:03:49', NULL, '', 40238597734928384, 1, 1.23, '', '/xboot/department/delByIds/*', '删除部门', '', 3, 'delete', 0, NULL, b'1', NULL, NULL),
	(56309618086776832, '', '2018-09-23 23:26:40', 0, 'admin', '2021-06-21 14:29:10', '', 'oss-manage', 5129710648430592, 0, 1.40, 'sys/oss-manage/ossManage', 'oss-manage', '云盘', 'ios-folder', 2, '', 0, '', b'1', NULL, b'1'),
	(56898976661639168, '', '2018-09-25 14:28:34', 0, '', '2018-09-25 15:12:46', '', '', 5129710648430593, 1, 1.17, '', '/xboot/user/importData*', '导入用户', '', 3, 'input', 0, '', b'1', NULL, NULL),
	(57212882168844288, '', '2018-09-26 11:15:55', 0, '', '2018-10-08 11:10:05', '', '', 56309618086776832, 1, 1.41, '', '无', '上传文件', '', 3, 'upload', 0, '', b'1', NULL, NULL),
	(58480609315524608, '', '2018-09-29 23:13:24', 0, 'admin', '2021-06-21 14:19:55', '', 'setting', 5129710648430592, 0, 1.90, 'sys/setting-manage/settingManage', 'setting', '系统配置', 'ios-settings-outline', 2, '', 0, '', b'1', NULL, b'1'),
	(61394706252173312, NULL, '2018-10-08 00:12:59', 0, NULL, '2018-10-08 00:12:59', NULL, '', 58480609315524608, 1, 1.81, '', '/xboot/setting/seeSecret/**', '查看私密配置', '', 3, 'view', 0, NULL, b'1', NULL, NULL),
	(61417744146370560, '', '2018-10-08 01:44:32', 0, '', '2018-10-08 01:50:03', '', '', 58480609315524608, 1, 1.82, '', '/xboot/setting/*/set*', '编辑配置', '', 3, 'edit', 0, '', b'1', NULL, NULL),
	(61560041605435392, NULL, '2018-10-08 11:09:58', 0, NULL, '2018-10-08 11:09:58', NULL, '', 56309618086776832, 1, 1.42, '', '/xboot/file/rename*', '重命名文件', '', 3, 'edit', 0, NULL, b'1', NULL, NULL),
	(61560275261722624, NULL, '2018-10-08 11:10:54', 0, NULL, '2018-10-08 11:10:54', NULL, '', 56309618086776832, 1, 1.43, '', '/xboot/file/copy*', '复制文件', '', 3, 'edit', 0, NULL, b'1', NULL, NULL),
	(61560480518377472, NULL, '2018-10-08 11:11:43', 0, NULL, '2018-10-08 11:11:43', NULL, '', 56309618086776832, 1, 1.44, '', '/xboot/file/delete/*', '删除文件', '', 3, 'delete', 0, NULL, b'1', NULL, NULL),
	(75002207560273920, 'admin', '2018-11-14 13:24:21', 0, 'admin', '2018-11-20 20:06:22', '', 'dict', 5129710648430592, 0, 1.80, 'sys/dict-manage/dictManage', 'dict', '数据字典管理', 'md-bookmarks', 2, '', 0, '', b'1', NULL, b'1'),
	(76215889006956544, 'admin', '2018-11-17 21:47:05', 0, 'admin', '2018-11-17 21:47:53', '', '', 75002207560273920, 1, 1.81, '', '/xboot/dict/add*', '添加字典', '', 3, 'add', 0, '', b'1', NULL, NULL),
	(76216071333351424, 'admin', '2018-11-17 21:47:48', 0, 'admin', '2018-11-17 21:47:48', NULL, '', 75002207560273920, 1, 1.82, '', '/xboot/dict/edit*', '编辑字典', '', 3, 'edit', 0, NULL, b'1', NULL, NULL),
	(76216264070008832, 'admin', '2018-11-17 21:48:34', 0, 'admin', '2018-11-17 21:48:34', NULL, '', 75002207560273920, 1, 1.83, '', '/xboot/dict/delByIds/**', '删除字典', '', 3, 'delete', 0, NULL, b'1', NULL, NULL),
	(76216459709124608, 'admin', '2018-11-17 21:49:21', 0, 'admin', '2018-11-17 21:49:21', NULL, '', 75002207560273920, 1, 1.84, '', '/xboot/dictData/add*', '添加字典数据', '', 3, 'add', 0, NULL, b'1', NULL, NULL),
	(76216594207870976, 'admin', '2018-11-17 21:49:53', 0, 'admin', '2018-11-17 21:49:53', NULL, '', 75002207560273920, 1, 1.85, '', '/xboot/dictData/edit*', '编辑字典数据', '', 3, 'edit', 0, NULL, b'1', NULL, NULL),
	(76216702639017984, 'admin', '2018-11-17 21:50:18', 0, 'admin', '2018-11-17 21:50:18', NULL, '', 75002207560273920, 1, 1.86, '', '/xboot/dictData/delByIds/**', '删除字典数据', '', 3, 'delete', 0, NULL, b'1', NULL, NULL),
	(125909152017944576, 'admin', '2019-04-04 00:50:22', 0, 'admin', '2021-06-21 14:19:14', 'undefined', 'xboot', 0, -1, 0.00, 'false', '', '系统基础', 'md-home', 0, '', 0, '', b'1', b'1', b'1'),
	(156365156580855808, 'admin', '2019-06-27 01:51:39', 0, 'admin', '2019-06-27 01:51:39', NULL, '', 5129710648430593, 1, 1.18, '', '/xboot/user/resetPass', '重置密码', '', 3, 'other', 0, NULL, b'1', NULL, NULL);
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_quartz_job`;
CREATE TABLE IF NOT EXISTS `t_quartz_job` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `job_class_name` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_quartz_job`;
/*!40000 ALTER TABLE `t_quartz_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_quartz_job` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_role`;
CREATE TABLE IF NOT EXISTS `t_role` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_role`;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	(496138616573952, '', '2018-04-22 23:03:49', 'admin', '2018-11-15 23:02:59', 'ROLE_ADMIN', 0, NULL, '超级管理员 拥有所有权限', 0),
	(496138616573953, '', '2018-05-02 21:40:03', 'admin', '2018-11-01 22:59:48', 'ROLE_USER', 0, b'1', '普通注册用户 路过看看', 0),
	(16457350655250432, '', '2018-06-06 00:08:00', 'admin', '2018-11-02 20:42:24', 'ROLE_TEST', 0, NULL, '测试权限按钮显示', 1);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_role_department`;
CREATE TABLE IF NOT EXISTS `t_role_department` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint(20) unsigned DEFAULT NULL,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_role_department`;
/*!40000 ALTER TABLE `t_role_department` DISABLE KEYS */;
INSERT INTO `t_role_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `department_id`, `role_id`) VALUES
	(70763874256687105, 'admin', '2018-11-02 20:42:43', 0, 'admin', '2018-11-02 20:42:43', 40322777781112832, 16457350655250432),
	(70763874265075712, 'admin', '2018-11-02 20:42:43', 0, 'admin', '2018-11-02 20:42:43', 40322811096469504, 16457350655250432),
	(70763874277658624, 'admin', '2018-11-02 20:42:43', 0, 'admin', '2018-11-02 20:42:43', 40322852833988608, 16457350655250432);
/*!40000 ALTER TABLE `t_role_department` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE IF NOT EXISTS `t_role_permission` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint(20) unsigned DEFAULT NULL,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_role_permission`;
/*!40000 ALTER TABLE `t_role_permission` DISABLE KEYS */;
INSERT INTO `t_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	(1406859533158060032, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 125909152017944576, 496138616573952),
	(1406859533158060033, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 5129710648430592, 496138616573952),
	(1406859533158060034, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 5129710648430593, 496138616573952),
	(1406859533158060035, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 15701400130424832, 496138616573952),
	(1406859533158060036, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16678126574637056, 496138616573952),
	(1406859533158060037, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 15701915807518720, 496138616573952),
	(1406859533158060038, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 15708892205944832, 496138616573952),
	(1406859533158060039, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16678447719911424, 496138616573952),
	(1406859533158060040, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 25014528525733888, 496138616573952),
	(1406859533158060041, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 56898976661639168, 496138616573952),
	(1406859533158060042, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 156365156580855808, 496138616573952),
	(1406859533158060043, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 40238597734928384, 496138616573952),
	(1406859533158060044, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 45235621697949696, 496138616573952),
	(1406859533158060045, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 45235787867885568, 496138616573952),
	(1406859533158060046, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 45235939278065664, 496138616573952),
	(1406859533158060047, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 56309618086776832, 496138616573952),
	(1406859533158060048, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 57212882168844288, 496138616573952),
	(1406859533158060049, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 61560041605435392, 496138616573952),
	(1406859533158060050, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 61560275261722624, 496138616573952),
	(1406859533158060051, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 61560480518377472, 496138616573952),
	(1406859533158060052, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 5129710648430594, 496138616573952),
	(1406859533158060053, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16687383932047360, 496138616573952),
	(1406859533158060054, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16689632049631232, 496138616573952),
	(1406859533158060055, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16689745006432256, 496138616573952),
	(1406859533158060056, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16689883993083904, 496138616573952),
	(1406859533158060057, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16690313745666048, 496138616573952),
	(1406859533158060058, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 5129710648430595, 496138616573952),
	(1406859533158060059, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16694861252005888, 496138616573952),
	(1406859533158060060, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16695107491205120, 496138616573952),
	(1406859533158060061, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 16695243126607872, 496138616573952),
	(1406859533158060062, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 75002207560273920, 496138616573952),
	(1406859533158060063, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 76215889006956544, 496138616573952),
	(1406859533158060064, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 76216071333351424, 496138616573952),
	(1406859533158060065, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 76216264070008832, 496138616573952),
	(1406859533158060066, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 76216459709124608, 496138616573952),
	(1406859533158060067, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 76216594207870976, 496138616573952),
	(1406859533158060068, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 76216702639017984, 496138616573952),
	(1406859533158060069, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 58480609315524608, 496138616573952),
	(1406859533158060070, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 61394706252173312, 496138616573952),
	(1406859533158060071, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 61417744146370560, 496138616573952),
	(1406859533158060072, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 39915540965232640, 496138616573952),
	(1406859533158060073, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 41363147411427328, 496138616573952),
	(1406859533158060074, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 41363537456533504, 496138616573952),
	(1406859533158060075, 'admin', '2021-06-21 14:20:26', 0, 'admin', '2021-06-21 14:20:26', 41364927394353152, 496138616573952);
/*!40000 ALTER TABLE `t_role_permission` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_setting`;
CREATE TABLE IF NOT EXISTS `t_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_setting`;
/*!40000 ALTER TABLE `t_setting` DISABLE KEYS */;
INSERT INTO `t_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('LOCAL_OSS', 'admin', '2021-08-17 16:25:20', 0, 'admin', '2021-08-17 16:25:20', '{"serviceName":"LOCAL_OSS","endpoint":"127.0.0.1:9999/xboot/file/view","http":"http://","filePath":"D:/"}'),
	('OSS_USED', 'admin', '2021-08-17 16:25:20', 0, 'admin', '2021-08-17 16:25:20', 'LOCAL_OSS');
/*!40000 ALTER TABLE `t_setting` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_social`;
CREATE TABLE IF NOT EXISTS `t_social` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `platform` tinyint(1) unsigned DEFAULT NULL,
  `relate_username` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relate_open_id` (`open_id`,`platform`) USING BTREE,
  UNIQUE KEY `relate_username` (`relate_username`,`platform`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_social`;
/*!40000 ALTER TABLE `t_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_social` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_stop_word`;
CREATE TABLE IF NOT EXISTS `t_stop_word` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_stop_word`;
/*!40000 ALTER TABLE `t_stop_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_stop_word` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint(20) unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `id_card`) VALUES
	(682265633886208, '', '2018-05-01 16:13:51', 'admin', '2021-09-08 14:23:05', '北京市,市辖区,东城区', 'https://ooo.0o0.ooo/2019/04/28/5cc5a71a6e3b6.png', '测试', '18782059031', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, 40322777781112832, '天府1街', '弱', '总部', '2020-04-15 00:00:00.000000', '330281199908080008');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE IF NOT EXISTS `t_user_role` (
  `id` bigint(20) unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `t_user_role`;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	(1435488843368370176, 'admin', '2021-09-08 14:23:05', 0, 'admin', '2021-09-08 14:23:05', 496138616573952, 682265633886208);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;